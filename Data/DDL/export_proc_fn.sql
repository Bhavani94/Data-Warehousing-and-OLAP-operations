--------------------------------------------------------
--  DDL for Function GETAVGCORRONEDS
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "GETAVGCORRONEDS" (GO_ID_ip NUMBER, DISEASE VARCHAR) 
   return number is
    corr_result number:=0;
    cur_count number:=0;
    corr_sum number:=0;
    corr_avg number:=0;
    cursor cur1 is
    select  distinct pl1.P_ID pid1,pl2.P_ID pid2
    from patientListOneDs pl1, patientListOneDs pl2
        where pl1.P_ID<pl2.P_ID
            group by pl1.P_ID,pl2.P_ID;
    pids cur1%rowtype;
BEGIN
    
    for cur_iter in cur1  
    LOOP
        with temp as
        (
        select vpg.p_id,vpg.pb_id,vpg.exp 
            from view_patient_till_go vpg , m_diagnosis md
                where go_id=GO_ID_ip
                        and md.P_ID = vpg.P_ID
                        and md.ds_id = ( select ds_id from d_disease where ds_name=DISEASE)
        )
        select corr( t1.exp,t2.exp) into corr_result 
        --t1.exp,t2.exp
            from temp t1, temp t2
                where t1.p_id= cur_iter.pid1
                    and t2.p_id = cur_iter.pid2
                    and t1.pb_id = t2.pb_id;
                    
        --dbms_output.put_line (cur_iter.pid1||'|'||cur_iter.pid2||'|'||corr_result);
        cur_count:=cur_count+1;
        corr_sum:=corr_result+corr_sum;
    END LOOP;
    --CLOSE c1;
    --commit;
    corr_avg:= corr_sum/cur_count;
    --dbms_output.put_line('Sum corr: '||corr_sum);
    --dbms_output.put_line('Avg corr: '||corr_avg);
    RETURN corr_avg;
    
END;

/
--------------------------------------------------------
--  DDL for Function GETAVGCORRTWODS
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "GETAVGCORRTWODS" (GO_ID_ip NUMBER, DISEASE1 VARCHAR, DISEASE2 VARCHAR ) 
   return number is
    corr_result number:=0;
    cur_count number:=0;
    corr_sum number:=0;
    corr_avg number:=0;
    cursor cur1 is
    select pl1.p_id pid1,pl2.p_id pid2
      from patientListTwoDs1 pl1, patientListTwoDs2 pl2
        where pl1.P_ID is not null
            and pl2.p_id is not null
            group by pl1.p_id,pl2.p_id;
    pids cur1%rowtype;
BEGIN
    
    for cur_iter in cur1  
    LOOP
        with temp as (select vpg.p_id,vpg.pb_id,vpg.exp,md.ds_id
                      from view_patient_till_go vpg , m_diagnosis md
                        where go_id=GO_ID_ip 
                        and md.P_ID = vpg.P_ID
                        and vpg.p_id in (cur_iter.pid1,cur_iter.pid2)
                      )
                      select corr(t1.exp,t2.exp) into corr_result
                          from temp t1, temp t2
                            where t1.pb_id=t2.pb_id
                                  and t1.p_id=cur_iter.pid1
                                  and t2.p_id =cur_iter.pid2
                                  and t1.ds_id = (select ds_id from d_disease where ds_name = DISEASE1)
                                  and t2.ds_id = (select ds_id from d_disease where ds_name = DISEASE2);

        cur_count:=cur_count+1;
        corr_sum:=corr_result+corr_sum;
    END LOOP;
    --CLOSE c1;
    --commit;
    corr_avg:= corr_sum/cur_count;
    --dbms_output.put_line('Sum corr: '||corr_sum);
    --dbms_output.put_line('Avg corr: '||corr_avg);
    RETURN corr_avg;
    
END;

/
--------------------------------------------------------
--  DDL for Procedure GET_CORR_4_PN_GP
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "GET_CORR_4_PN_GP" (PIDN IN VARCHAR2,DISEASE IN VARCHAR) 
IS
  cursor cur1 is
      SELECT MD.P_ID
        FROM M_DIAGNOSIS MD,D_DISEASE DD
          WHERE MD.DS_ID = DD.DS_ID
          AND DD.DS_NAME = DISEASE
            GROUP BY MD.P_ID;            
  cursor cur2 is
      SELECT MD.P_ID
        FROM M_DIAGNOSIS MD,D_DISEASE DD
          WHERE MD.DS_ID = DD.DS_ID
          AND DD.DS_NAME <> DISEASE
          AND DD.DS_NAME IS NOT NULL
            GROUP BY MD.P_ID;
    CUR_RES1 CUR1%ROWTYPE;
    CUR_RES2 CUR2%ROWTYPE;
    CORR_RESULT NUMBER;
BEGIN
  delete from GP_CORR_TBL;
  COMMIT;
  for CUR_RES1 in cur1  
    LOOP
      --get_corr_4_patient_gene('GP_A',PIDN,CUR_RES1.P_ID);
          SELECT NVL(CORR(nvl(vpg.exp,0),nvl(nts.exp,0)),0) into CORR_RESULT
          FROM NEW_TEST_SAMPLES NTS, VIEW_PATIENT_TILL_GO VPG,GENE_SIGNIFICANCE_TBL GST   
            WHERE GST.U_ID = VPG.U_ID
                  AND NTS.U_ID(+) = GST.U_ID
                  AND GST.P_VALUE < 0.01
                  AND NTS.PATIENT_ID = PIDN
                  AND VPG.P_ID = CUR_RES1.P_ID;
                  
          IF(CORR_RESULT<>0) THEN
            INSERT INTO GP_CORR_TBL(GROUP_NAME,CORR_VALUE,P_ID) VALUES ('GP_A',CORR_RESULT,CUR_RES1.P_ID);
            COMMIT;
          END IF;
    END LOOP;      
  for CUR_RES2 in cur2  
    LOOP
      --get_corr_4_patient_gene('GP_B',PIDN,CUR_RES2.P_ID);
      SELECT NVL(CORR(nvl(vpg.exp,0),nvl(nts.exp,0)),0) into CORR_RESULT
          FROM NEW_TEST_SAMPLES NTS, VIEW_PATIENT_TILL_GO VPG,GENE_SIGNIFICANCE_TBL GST   
            WHERE GST.U_ID = VPG.U_ID
                  AND NTS.U_ID(+) = GST.U_ID
                  AND GST.P_VALUE < 0.01
                  AND NTS.PATIENT_ID = PIDN
                  AND VPG.P_ID = CUR_RES2.P_ID;
          IF(CORR_RESULT<>0) THEN
            INSERT INTO GP_CORR_TBL(GROUP_NAME,CORR_VALUE,P_ID) VALUES ('GP_B',CORR_RESULT,CUR_RES2.P_ID);
            COMMIT;
          END IF;
    END LOOP;      
END;

/

--------------------------------------------------------
--  DDL for Function NEW_PATIENT_CLASSIFICATION
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "NEW_PATIENT_CLASSIFICATION" (PIDN VARCHAR2,DISEASE VARCHAR) 
return varchar
is
  t_obs number:=0;
  p_val number:=0;
begin
  get_corr_4_pn_gp(PIDN,DISEASE);
  select STATS_T_TEST_INDEP(GROUP_NAME, CORR_VALUE, 'STATISTIC','GP_A') t_observed ,
      STATS_T_TEST_INDEP(GROUP_NAME, CORR_VALUE) two_sided_p_value
      into t_obs,p_val
      from GP_CORR_TBL;
      
  dbms_output.put_line('T_OBSERVED: ' ||t_obs||',TWO_SIDED_P_VALUE: '||p_val);
  return p_val;
end;

/
--------------------------------------------------------
--  DDL for Procedure LOAD_PATIENTS_ONE_DS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "LOAD_PATIENTS_ONE_DS" ( GO_ID_IP IN NUMBER, DISEASE IN VARCHAR ) IS
    cursor C1 is
    select vpg.p_id
    from view_patient_till_go vpg , m_diagnosis md
        where go_id= GO_ID_IP
                and md.P_ID = vpg.P_ID
                and md.ds_id = ( select ds_id from d_disease where ds_name = DISEASE)
                and VPG.P_ID is not null
                    GROUP BY VPG.P_ID;
    cnumber number:=0;
begin
  IF NOT c1%ISOPEN THEN 
    OPEN c1;
    DELETE FROM patientListOneDs;
  end if;
  loop    
    FETCH c1 INTO cnumber;
    --dbms_output.put_line(cnumber);
    exit when c1%notfound;
    INSERT INTO patientListOneDs VALUES(cnumber);
    commit;
  end loop;
   CLOSE c1;
end;

/
--------------------------------------------------------
--  DDL for Function ONE_DS_CORR
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "ONE_DS_CORR" ( GO_ID IN varchar, DISEASE IN VARCHAR )
return number
is
  z number:=0;
begin
  LOAD_PATIENTS_ONE_DS (to_number(GO_ID),DISEASE);
  z:=getAvgCorrOneDs(to_number(GO_ID),DISEASE);
  return z;
end;

/
--------------------------------------------------------
--  DDL for Procedure LOAD_PATIENTS_TWO_DS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "LOAD_PATIENTS_TWO_DS" ( GO_ID_IP IN NUMBER, DISEASE1 IN VARCHAR , DISEASE2 IN VARCHAR ) IS
    cursor C1 is
    select vpg.p_id
    from view_patient_till_go vpg , m_diagnosis md
        where go_id= GO_ID_IP
                and md.P_ID = vpg.P_ID
                and md.ds_id = ( select ds_id from d_disease where ds_name = DISEASE1)
                and VPG.P_ID is not null
                    GROUP BY VPG.P_ID;
    cursor C2 is
    select vpg.p_id
    from view_patient_till_go vpg , m_diagnosis md
        where go_id= GO_ID_IP
                and md.P_ID = vpg.P_ID
                and md.ds_id = ( select ds_id from d_disease where ds_name = DISEASE2)
                and VPG.P_ID is not null
                    GROUP BY VPG.P_ID;
    cnumber number:=0;
begin
  IF NOT c1%ISOPEN THEN 
    OPEN c1;
    DELETE FROM patientListTwoDs1;
  end if;
  loop    
    FETCH c1 INTO cnumber;
    --dbms_output.put_line(cnumber);
    exit when c1%notfound;
    INSERT INTO patientListTwoDs1(p_id) VALUES(cnumber);
  end loop;
   CLOSE c1;
   commit;
    IF NOT c2%ISOPEN THEN 
    OPEN c2;
    DELETE FROM patientListTwoDs2;
    end if;
  loop    
    FETCH c2 INTO cnumber;
    --dbms_output.put_line(cnumber);
    exit when c2%notfound;
    INSERT INTO patientListTwoDs2(p_id) VALUES(cnumber);
  end loop;
   CLOSE c2;
   commit;
end;

/

--------------------------------------------------------
--  DDL for Function TWO_DS_CORR
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "TWO_DS_CORR" ( GO_ID IN varchar, DISEASE1 IN VARCHAR,DISEASE2 IN VARCHAR )
return number
is
  z number:=0;
begin
  LOAD_PATIENTS_TWO_DS (to_number(GO_ID),DISEASE1,DISEASE2);
  z:=getAvgCorrTwoDs(to_number(GO_ID),DISEASE1,DISEASE2);
  return z;
end;

/
--------------------------------------------------------
--  DDL for Procedure DATE_COLUMN
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "DATE_COLUMN" ( table_name in varchar2,column_name in varchar2) 
is
new_column_name varchar2(50):= 'temp_'||column_name;
date_fmt varchar2(30):= 'MM-DD-YYYY';
alter_add_stmt varchar2(100);
alter_drop_stmt varchar2(100);
update_stmt varchar2(100);
rename_col varchar2(100);
begin
  begin
    alter_add_stmt := 'Alter table '||table_name||' add '||new_column_name||' Date';
    alter_drop_stmt := 'Alter table '||table_name||' drop column '||column_name;
    rename_col := 'Alter table '||table_name||' rename column to '||column_name;
    update_stmt := 'Update '||table_name||' set '||new_column_name||' = to_date('||column_name||','||date_fmt||')';
    DBMS_OUTPUT.PUT_LINE(update_stmt);
    EXECUTE IMMEDIATE alter_add_stmt;
    EXECUTE IMMEDIATE update_stmt;
    EXECUTE IMMEDIATE alter_drop_stmt;
    EXECUTE IMMEDIATE rename_col;    
  end;
end;

/
--------------------------------------------------------
--  DDL for Procedure DATE_COLUMN_CHANGE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "DATE_COLUMN_CHANGE" ( table_name in varchar2,column_name in varchar2) 
is
--table_name varchar2(100) := 'test_F_CLINIC';
--column_name varchar2(100) := 'DR_TO_DATE';
new_column_name varchar2(50):= 'temp_'||column_name;
--date_fmt varchar2(30):= 'MM-DD-YYYY';
alter_add_stmt varchar2(1000);
alter_drop_stmt varchar2(1000);
update_stmt varchar2(1000);
rename_col varchar2(1000);
column_exists exception;
begin
  begin
    --alter_drop_stmt := 'Alter table '||table_name ||' drop column '||new_column_name;
    --DBMS_OUTPUT.PUT_LINE(alter_drop_stmt);
    --EXECUTE IMMEDIATE alter_drop_stmt ; --using table_name,new_column_name;
    --alter_add_stmt := 'Alter table '||table_name||' add '||new_column_name||' Date';
    begin
    alter_add_stmt := 'Alter table ' || table_name ||' add ' ||new_column_name ||' Date';
    --DBMS_OUTPUT.PUT_LINE(update_stmt);
    EXECUTE IMMEDIATE alter_add_stmt;
    exception when others then 
        DBMS_OUTPUT.PUT_LINE('Unable to add new column with dates');
    end;
    begin
    update_stmt := 'Update ' || table_name ||' set ' ||new_column_name||' = to_date('||column_name||',''MM-DD-YYYY'')';            --','||date_fmt||')';
    DBMS_OUTPUT.PUT_LINE(update_stmt);
    EXECUTE IMMEDIATE update_stmt;
    EXECUTE IMMEDIATE 'Commit';
    exception 
        when others then 
            DBMS_OUTPUT.PUT_LINE('Unable to update new column with dates');
    end;
    
    begin
        alter_drop_stmt := 'Alter table '||table_name||' drop column '||column_name;
        DBMS_OUTPUT.PUT_LINE(alter_drop_stmt);
        EXECUTE IMMEDIATE alter_drop_stmt;
    end;
    
    begin
        rename_col := 'Alter table '||table_name||' rename column ' || new_column_name||' to '||column_name;
        DBMS_OUTPUT.PUT_LINE(rename_col);
        EXECUTE IMMEDIATE rename_col;
    end;   
  end;
end;

/
--------------------------------------------------------
--  DDL for Procedure GENERATE_GENE_SIG_DATA
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "GENERATE_GENE_SIG_DATA" IS
    cursor C1 is
    select distinct ds.ds_name
    from d_disease ds
      where ds.ds_name is not null;
    cur_row C1%rowtype;
begin
  IF NOT c1%ISOPEN THEN 
    OPEN c1;
    DELETE FROM gene_significance_tbl
    --where DS_NAME=DISEASE
    ;
  end if;
  loop    
    FETCH c1 INTO cur_row;
    --dbms_output.put_line(cnumber);
    exit when c1%notfound;
    --INSERT INTO gene_significance_tbl(u_id,t_observed,p_value,ds_name) VALUES(cur_row.u_id,cur_row.t_observed,cur_row.p_value,DISEASE);
    get_gene_significance_ds(cur_row.ds_name);
  end loop;
  CLOSE c1;
end;

/
--------------------------------------------------------
--  DDL for Procedure GET_CORR_4_PATIENT_GENE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "GET_CORR_4_PATIENT_GENE" (GP_NAME VARCHAR,PIDN IN VARCHAR2,PID1 IN NUMBER) 
IS
    CORR_RESULT NUMBER;
BEGIN
    delete from GP_CORR_TBL where GROUP_NAME=GP_NAME;
    commit;
    
    dbms_output.put_line('inside get_corr_4_patient_gene...'||'|'||GP_NAME||'|'||PIDN||'|'||PID1);
    
    SELECT CORR(nvl(vpg.exp,0),nvl(nts.exp,0)) into CORR_RESULT
          FROM NEW_TEST_SAMPLES NTS, VIEW_PATIENT_TILL_GO VPG,GENE_SIGNIFICANCE_TBL GST   
            WHERE GST.U_ID = VPG.U_ID
                  AND NTS.U_ID(+) = GST.U_ID
                  AND GST.P_VALUE < 0.01
                  AND NTS.PATIENT_ID = PIDN
                  AND VPG.P_ID = PID1;
     dbms_output.put_line('corr values...'||'|'||GP_NAME||'|'||PIDN||'|'||PID1||'|'||CORR_RESULT);
                 
    INSERT INTO GP_CORR_TBL(GROUP_NAME,CORR_VALUE,P_ID) VALUES (GP_NAME,CORR_RESULT,PID1);
    COMMIT;                
    --END LOOP;      
END;

/
--------------------------------------------------------
--  DDL for Procedure GET_GENE_SIGNIFICANCE_DS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "GET_GENE_SIGNIFICANCE_DS" (DISEASE varchar) IS
    cursor C1 is
    select vpg.U_ID u_id ,
         STATS_T_TEST_INDEP(decode(ds.ds_name,DISEASE,DISEASE,'OTHERS'), vpg.EXP, 'STATISTIC',DISEASE) t_observed,
         STATS_T_TEST_INDEP(decode(ds.ds_name,DISEASE,DISEASE,'OTHERS'), vpg.EXP) two_sided_p_value
         --into v_uid,v_t_observed,v_p_value
            from view_patient_till_go vpg, m_diagnosis md , d_disease ds
              where vpg.P_ID = md.P_ID
                and ds.ds_id = md.ds_id
                GROUP BY ROLLUP(vpg.U_ID);
    cur_row C1%rowtype;
begin
  IF NOT c1%ISOPEN THEN 
    OPEN c1;
    DELETE FROM gene_significance_tbl where DS_NAME=DISEASE;
  end if;
  loop    
    FETCH c1 INTO cur_row;
    --dbms_output.put_line(cnumber);
    exit when c1%notfound;
    INSERT INTO gene_significance_tbl(u_id,t_observed,p_value,ds_name) VALUES(cur_row.u_id,cur_row.t_observed,cur_row.two_sided_p_value,DISEASE);
    commit;
  end loop;
  CLOSE c1;
  delete from GENE_SIGNIFICANCE_TBL where u_id is null;
  commit;
end;

/

--------------------------------------------------------
--  DDL for Procedure TEST_SAMPLE_REFORMAT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "TEST_SAMPLE_REFORMAT" 
IS
  cursor cur1 is
      SELECT TESTID,TEST1,TEST2,TEST3,TEST4,TEST5
        FROM D_TEST_SAMPLE D_TS ;
  CUR_RESULT CUR1%ROWTYPE;
BEGIN
  DELETE FROM NEW_TEST_SAMPLES;
  COMMIT;
  for CUR_RESULT in cur1  
    LOOP
      INSERT INTO NEW_TEST_SAMPLES(PATIENT_ID,U_ID,EXP) VALUES ('TEST1',CUR_RESULT.TESTID,CUR_RESULT.TEST1);
      INSERT INTO NEW_TEST_SAMPLES(PATIENT_ID,U_ID,EXP) VALUES ('TEST2',CUR_RESULT.TESTID,CUR_RESULT.TEST2);
      INSERT INTO NEW_TEST_SAMPLES(PATIENT_ID,U_ID,EXP) VALUES ('TEST3',CUR_RESULT.TESTID,CUR_RESULT.TEST3);
      INSERT INTO NEW_TEST_SAMPLES(PATIENT_ID,U_ID,EXP) VALUES ('TEST4',CUR_RESULT.TESTID,CUR_RESULT.TEST4);
      INSERT INTO NEW_TEST_SAMPLES(PATIENT_ID,U_ID,EXP) VALUES ('TEST5',CUR_RESULT.TESTID,CUR_RESULT.TEST5);
      COMMIT;
    END LOOP;           
END;

/
