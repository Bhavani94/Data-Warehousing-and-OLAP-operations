--List patients who had tumor (ds desc)
select count(distinct p_id) 
from m_diagnosis md , d_disease dd
  where md.ds_id = dd.ds_id
    and trim(upper(ds_desc)) = 'TUMOR';
    
    
--List patients with ds name ALL
select count(distinct p_id) 
from m_diagnosis md , d_disease dd
  where md.ds_id = dd.ds_id
    and trim(upper(ds_name)) = 'FLU';


--List patients who had ds type leukemia
select count(distinct p_id) 
from m_diagnosis md , d_disease dd
  where md.ds_id = dd.ds_id
    and trim(upper(ds_type)) = 'LEUKEMIA';


--List the types of drugs for patients with tumor (ds desc)
select UNIQUE DR_TYPE from HARSHASU.D_DRUG where DR_ID IN (select DR_ID from HARSHASU.FACT_CLINICAL where DS_ID IN (select DS_ID from HARSHASU.D_DISEASE where DS_DESC = 'tumor'));

select count(1) from 
(
select EXP from FACT_MICROARRAY where MU_ID =001 and S_ID in (select S_ID from FACT_CLINICAL where S_ID is not null and P_ID in (select P_ID from FACT_CLINICAL 
where DS_ID = (select D_DISEASE.DS_ID from D_DISEASE where DS_NAME ='Breast tumor'))) and PB_ID in (select PB_ID from D_PROBE where U_ID in (select U_ID from FACT_GENE where CL_ID =113)));


--t statistics
select STATS_T_TEST_INDEP(decode(dds.DS_NAME,'AML','AML','OTHERS'), vpg.EXP, 'STATISTIC','AML') t_observed,
            STATS_T_TEST_INDEP(decode(dds.DS_NAME,'AML','AML','OTHERS'), vpg.EXP) two_sided_p_value
            from view_patient_till_go vpg, m_diagnosis md, d_disease dds
             where vpg.GO_ID=7154 
              and vpg.P_ID = md.P_ID
              and dds.ds_id = md.DS_ID;

-- f statistics
select STATS_ONE_WAY_ANOVA(md.SYMPTON, vpg.EXP, 'F_RATIO') f_ratio,
       STATS_ONE_WAY_ANOVA(md.SYMPTON, vpg.EXP, 'SIG') p_value
from view_patient_till_go vpg, m_diagnosis md , d_disease dds
    where vpg.GO_ID=10083 
        and vpg.P_ID = md.P_ID
        and md.DS_ID = dds.DS_ID
            and dds.DS_NAME in ('ALL','AML','Colon tumor','Breast tumor');


Declare
z number:=0;
begin
z:=ONE_DS_CORR('7154','ALL');
dbms_output.put_line('Avg correlation value is: '||z);
end;



declare
z number:=0;
begin 
        z:=TWO_DS_CORR('7154','Breast tumor','AML');
       	dbms_output.put_line('Avg correlation value is: '||z);
end;


--part 3:
Begin
	generate_gene_sig_data;
End;


BEGIN
    DBMS_OUTPUT.PUT_LINE(new_patient_classification('TEST1','AML'));
    DBMS_OUTPUT.PUT_LINE(new_patient_classification('TEST2','AML'));
    DBMS_OUTPUT.PUT_LINE(new_patient_classification('TEST3','AML'));
    DBMS_OUTPUT.PUT_LINE(new_patient_classification('TEST4','AML'));
    DBMS_OUTPUT.PUT_LINE(new_patient_classification('TEST5','AML'));
END;


select count(*) from GENE_SIGNIFICANCE_TBL
 where p_value<0.01 
 and ds_name='AML';
