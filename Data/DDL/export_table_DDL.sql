--------------------------------------------------------
--  DDL for Table D_ASSAY
--------------------------------------------------------

  CREATE TABLE "D_ASSAY" 
   (	"AS_ID" NUMBER(7,0), 
	"AS_NAME" VARCHAR2(26 BYTE), 
	"AS_TYPE" VARCHAR2(26 BYTE), 
	"AS_SETTING" VARCHAR2(26 BYTE), 
	"AS_DESC" VARCHAR2(26 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table D_CLUSTER
--------------------------------------------------------

  CREATE TABLE "D_CLUSTER" 
   (	"CL_ID" NUMBER(5,0), 
	"CL_NUM" NUMBER(5,0), 
	"CL_PATTERN" VARCHAR2(26 BYTE), 
	"CL_TOOL" VARCHAR2(26 BYTE), 
	"CL_TSETTING" VARCHAR2(26 BYTE), 
	"CL_DESC" VARCHAR2(26 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table D_DISEASE
--------------------------------------------------------

  CREATE TABLE "D_DISEASE" 
   (	"DS_ID" NUMBER(3,0), 
	"DS_NAME" VARCHAR2(26 BYTE), 
	"DS_TYPE" VARCHAR2(26 BYTE), 
	"DS_DESC" VARCHAR2(26 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table D_DOMAIN
--------------------------------------------------------

  CREATE TABLE "D_DOMAIN" 
   (	"DM_ID" NUMBER(8,0), 
	"DM_TYPE" VARCHAR2(26 BYTE), 
	"DM_DB" VARCHAR2(26 BYTE), 
	"DM_ACCESSION" VARCHAR2(26 BYTE), 
	"DM_TITLE" VARCHAR2(26 BYTE), 
	"DM_LENGTH" NUMBER(4,0), 
	"DM_DESC" VARCHAR2(26 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table D_DRUG
--------------------------------------------------------

  CREATE TABLE "D_DRUG" 
   (	"DR_ID" NUMBER(7,0), 
	"DR_NAME" VARCHAR2(26 BYTE), 
	"DR_TYPE" VARCHAR2(26 BYTE), 
	"DR_DESC" VARCHAR2(26 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table D_EXPERIMENT
--------------------------------------------------------

  CREATE TABLE "D_EXPERIMENT" 
   (	"E_ID" NUMBER(5,0), 
	"E_NAME" VARCHAR2(26 BYTE), 
	"E_TYPE" VARCHAR2(26 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table D_GENE
--------------------------------------------------------

  CREATE TABLE "D_GENE" 
   (	"U_ID" NUMBER(10,0), 
	"SEQTYPE" VARCHAR2(26 BYTE), 
	"ACCESSION" VARCHAR2(26 BYTE), 
	"VERSION" NUMBER(4,1), 
	"SEQDATASET" VARCHAR2(26 BYTE), 
	"SEPCIESID" NUMBER(6,0), 
	"STATUS" VARCHAR2(1 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table D_GO
--------------------------------------------------------

  CREATE TABLE "D_GO" 
   (	"GO_ID" NUMBER(7,0), 
	"ACCESSION" VARCHAR2(26 BYTE), 
	"TYPE" VARCHAR2(26 BYTE), 
	"NAME" VARCHAR2(26 BYTE), 
	"DEFINITION" VARCHAR2(26 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table D_MARKER
--------------------------------------------------------

  CREATE TABLE "D_MARKER" 
   (	"MK_ID" NUMBER(7,0), 
	"MK_NAME" VARCHAR2(26 BYTE), 
	"MK_TYPE" VARCHAR2(26 BYTE), 
	"MK_LOCUS" VARCHAR2(26 BYTE), 
	"MK_DESC" VARCHAR2(26 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table D_MEASUREUNIT
--------------------------------------------------------

  CREATE TABLE "D_MEASUREUNIT" 
   (	"MU_ID" NUMBER(3,0), 
	"MU_NAME" VARCHAR2(26 BYTE), 
	"MU_TYPE" VARCHAR2(26 BYTE), 
	"MU_DESC" VARCHAR2(26 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table D_NORM
--------------------------------------------------------

  CREATE TABLE "D_NORM" 
   (	"NM_ID" NUMBER(3,0), 
	"NM_TYPE" VARCHAR2(26 BYTE), 
	"NM_SOFTWARE" VARCHAR2(26 BYTE), 
	"NM_PARAMETERS" VARCHAR2(128 BYTE), 
	"NM_DESC" VARCHAR2(26 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table D_PATIENT
--------------------------------------------------------

  CREATE TABLE "D_PATIENT" 
   (	"P_SSN" VARCHAR2(11 BYTE), 
	"P_NAME" VARCHAR2(26 BYTE), 
	"P_GENDER" VARCHAR2(26 BYTE), 
	"P_DOB" DATE, 
	"P_ID" NUMBER(26,0)
   ) ;
--------------------------------------------------------
--  DDL for Table D_PERSON
--------------------------------------------------------

  CREATE TABLE "D_PERSON" 
   (	"PN_ID" NUMBER(6,0), 
	"NAME" VARCHAR2(26 BYTE), 
	"LABNAME" VARCHAR2(26 BYTE), 
	"CONTACT" VARCHAR2(128 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table D_PLATFORM
--------------------------------------------------------

  CREATE TABLE "D_PLATFORM" 
   (	"PF_ID" NUMBER(4,0), 
	"PF_HARDWARE" VARCHAR2(26 BYTE), 
	"PF_SOFTWARE" VARCHAR2(26 BYTE), 
	"PF_SETTINGS" VARCHAR2(26 BYTE), 
	"PF_DESC" VARCHAR2(26 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table D_PROBE
--------------------------------------------------------

  CREATE TABLE "D_PROBE" 
   (	"PB_ID" NUMBER(10,0), 
	"U_ID" NUMBER(10,0), 
	"NAME" VARCHAR2(26 BYTE), 
	"DESCRIPTION" VARCHAR2(26 BYTE), 
	"ISQC" VARCHAR2(10 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table D_PROJECT
--------------------------------------------------------

  CREATE TABLE "D_PROJECT" 
   (	"PJ_ID" NUMBER(4,0), 
	"PJ_NAME" VARCHAR2(26 BYTE), 
	"PJ_INVESTIGATOR" VARCHAR2(26 BYTE), 
	"PJ_DESC" VARCHAR2(26 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table D_PROMOTER
--------------------------------------------------------

  CREATE TABLE "D_PROMOTER" 
   (	"PM_ID" NUMBER(8,0), 
	"TYPE" VARCHAR2(26 BYTE), 
	"SEQUENCE" VARCHAR2(128 BYTE), 
	"LENGTH" NUMBER(4,0), 
	"DESCRIPTION" VARCHAR2(26 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table D_PROTOCOL
--------------------------------------------------------

  CREATE TABLE "D_PROTOCOL" 
   (	"PT_ID" NUMBER(4,0), 
	"PT_NAME" VARCHAR2(26 BYTE), 
	"TEXT" VARCHAR2(128 BYTE), 
	"CREATEDBY" VARCHAR2(26 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table D_PUBLICATION
--------------------------------------------------------

  CREATE TABLE "D_PUBLICATION" 
   (	"PU_ID" VARCHAR2(26 BYTE), 
	"PUB_MED_ID" NUMBER(26,0), 
	"TITLE" VARCHAR2(26 BYTE), 
	"AUTHORS" VARCHAR2(128 BYTE), 
	"ABSTRACT" VARCHAR2(26 BYTE), 
	"PUBDATE" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table D_SAMPLE
--------------------------------------------------------

  CREATE TABLE "D_SAMPLE" 
   (	"S_ID" NUMBER(26,0), 
	"S_SOURCE" VARCHAR2(26 BYTE), 
	"S_AMOUNT" NUMBER(26,0), 
	"SP_DATE" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table D_TERM
--------------------------------------------------------

  CREATE TABLE "D_TERM" 
   (	"TM_ID" NUMBER(8,0), 
	"TM_NAME" VARCHAR2(26 BYTE), 
	"TM_TYPE" VARCHAR2(26 BYTE), 
	"TM_SETTING" VARCHAR2(26 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table D_TEST
--------------------------------------------------------

  CREATE TABLE "D_TEST" 
   (	"TT_ID" NUMBER(5,0), 
	"TT_NAME" VARCHAR2(26 BYTE), 
	"TT_TYPE" VARCHAR2(26 BYTE), 
	"TT_SETTING" VARCHAR2(128 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table D_TEST_SAMPLE
--------------------------------------------------------

  CREATE TABLE "D_TEST_SAMPLE" 
   (	"TESTID" NUMBER(10,0), 
	"TEST1" NUMBER(5,0), 
	"TEST2" NUMBER(5,0), 
	"TEST3" NUMBER(5,0), 
	"TEST4" NUMBER(5,0), 
	"TEST5" NUMBER(5,0)
   ) ;
--------------------------------------------------------
--  DDL for Table FACT_CLINICAL
--------------------------------------------------------

  CREATE TABLE "FACT_CLINICAL" 
   (	"P_ID" NUMBER(26,0), 
	"DS_ID" NUMBER(26,0), 
	"SYMPTON" VARCHAR2(26 BYTE), 
	"DR_ID" NUMBER(26,0), 
	"DOSAGE" NUMBER(26,0), 
	"TT_ID" NUMBER(26,0), 
	"RESULT" VARCHAR2(26 BYTE), 
	"S_ID" NUMBER(26,0), 
	"DS_FROM_DATE" DATE, 
	"DS_TO_DATE" DATE, 
	"DR_FROM_DATE" DATE, 
	"DR_TO_DATE" DATE, 
	"TT_DATE" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table FACT_EXPERIMENT
--------------------------------------------------------

  CREATE TABLE "FACT_EXPERIMENT" 
   (	"E_ID" NUMBER(5,0), 
	"NM_ID" NUMBER(3,0), 
	"PJ_ID" NUMBER(4,0), 
	"PN_ID" NUMBER(6,0), 
	"PF_ID" VARCHAR2(26 BYTE), 
	"PT_ID" NUMBER(4,0), 
	"PU_ID" NUMBER(6,0)
   ) ;
--------------------------------------------------------
--  DDL for Table FACT_GENE
--------------------------------------------------------

  CREATE TABLE "FACT_GENE" 
   (	"U_ID" NUMBER(10,0), 
	"GO_ID" NUMBER(7,0), 
	"CL_ID" NUMBER(3,0), 
	"DM_ID" NUMBER(8,0), 
	"PM_ID" NUMBER(8,0), 
	"UID2" NUMBER(10,0)
   ) ;
--------------------------------------------------------
--  DDL for Table FACT_MICROARRAY
--------------------------------------------------------

  CREATE TABLE "FACT_MICROARRAY" 
   (	"S_ID" NUMBER(8,0), 
	"E_ID" NUMBER(5,0), 
	"PB_ID" NUMBER(10,0), 
	"MU_ID" NUMBER(3,0), 
	"EXP" NUMBER(5,0)
   ) ;
--------------------------------------------------------
--  DDL for Table FACT_SAMPLE
--------------------------------------------------------

  CREATE TABLE "FACT_SAMPLE" 
   (	"S_ID" NUMBER(26,0), 
	"MK_ID" NUMBER(26,0), 
	"MK_RESULT" VARCHAR2(26 BYTE), 
	"AS_ID" NUMBER(26,0), 
	"AS_RESULT" VARCHAR2(26 BYTE), 
	"TM_ID" NUMBER(26,0), 
	"TM_DESCRIPTION" VARCHAR2(26 BYTE), 
	"MK_DATE" DATE, 
	"AS_DATE" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table F_CLINICAL_FACT
--------------------------------------------------------

  CREATE TABLE "F_CLINICAL_FACT" 
   (	"P_ID" NUMBER(26,0), 
	"DS_ID" NUMBER(26,0), 
	"SYMPTON" VARCHAR2(26 BYTE), 
	"DS_FROM_DATE" VARCHAR2(26 BYTE), 
	"DS_TO_DATE" VARCHAR2(26 BYTE), 
	"DR_ID" NUMBER(26,0), 
	"DOSAGE" NUMBER(26,0), 
	"DR_FROM_DATE" VARCHAR2(26 BYTE), 
	"DR_TO_DATE" VARCHAR2(26 BYTE), 
	"TT_ID" NUMBER(26,0), 
	"RESULT" VARCHAR2(26 BYTE), 
	"TT_DATE" VARCHAR2(26 BYTE), 
	"S_ID" NUMBER(26,0)
   ) ;
--------------------------------------------------------
--  DDL for Table F_EXPERIMENT
--------------------------------------------------------

  CREATE TABLE "F_EXPERIMENT" 
   (	"E_ID" NUMBER(5,0), 
	"NM_ID" NUMBER(3,0), 
	"PJ_ID" NUMBER(4,0), 
	"PN_ID" NUMBER(6,0), 
	"PF_ID" VARCHAR2(26 BYTE), 
	"PT_ID" NUMBER(4,0), 
	"PU_ID" NUMBER(6,0)
   ) ;
--------------------------------------------------------
--  DDL for Table F_GENE_FACT
--------------------------------------------------------

  CREATE TABLE "F_GENE_FACT" 
   (	"U_ID" NUMBER(10,0), 
	"GO_ID" NUMBER(7,0), 
	"CL_ID" NUMBER(3,0), 
	"DM_ID" NUMBER(8,0), 
	"PM_ID" NUMBER(8,0), 
	"UID2" NUMBER(10,0)
   ) ;
--------------------------------------------------------
--  DDL for Table F_MICROARRAY
--------------------------------------------------------

  CREATE TABLE "F_MICROARRAY" 
   (	"S_ID" NUMBER(8,0), 
	"E_ID" NUMBER(5,0), 
	"PB_ID" NUMBER(10,0), 
	"MU_ID" NUMBER(3,0), 
	"EXP" NUMBER(5,0)
   ) ;
--------------------------------------------------------
--  DDL for Table F_SAMPLE
--------------------------------------------------------

  CREATE TABLE "F_SAMPLE" 
   (	"S_ID" NUMBER(26,0), 
	"MK_ID" NUMBER(26,0), 
	"MK_RESULT" VARCHAR2(26 BYTE), 
	"MK_DATE" VARCHAR2(26 BYTE), 
	"AS_ID" NUMBER(26,0), 
	"AS_RESULT" VARCHAR2(26 BYTE), 
	"AS_DATE" VARCHAR2(26 BYTE), 
	"TM_ID" NUMBER(26,0), 
	"TM_DESCRIPTION" VARCHAR2(26 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table GENE_SIGNIFICANCE_TBL
--------------------------------------------------------

  CREATE TABLE "GENE_SIGNIFICANCE_TBL" 
   (	"U_ID" NUMBER, 
	"T_OBSERVED" NUMBER, 
	"P_VALUE" NUMBER, 
	"DS_NAME" VARCHAR2(100 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table GP_CORR_TBL
--------------------------------------------------------

  CREATE TABLE "GP_CORR_TBL" 
   (	"GROUP_NAME" VARCHAR2(100 BYTE), 
	"CORR_VALUE" NUMBER, 
	"P_ID" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table M_DIAGNOSIS
--------------------------------------------------------

  CREATE TABLE "M_DIAGNOSIS" 
   (	"DS_ID" NUMBER(26,0), 
	"P_ID" NUMBER(26,0), 
	"SYMPTON" VARCHAR2(26 BYTE), 
	"DS_FROM_DATE" DATE, 
	"DS_TO_DATE" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table M_EXP_NORM
--------------------------------------------------------

  CREATE TABLE "M_EXP_NORM" 
   (	"E_ID" NUMBER(5,0), 
	"NM_ID" NUMBER(3,0), 
	"NM_TYPE" VARCHAR2(26 BYTE), 
	"NM_SOFTWARE" VARCHAR2(26 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table M_EXP_PERSON
--------------------------------------------------------

  CREATE TABLE "M_EXP_PERSON" 
   (	"E_ID" NUMBER(5,0), 
	"PN_ID" NUMBER(6,0), 
	"NAME" VARCHAR2(26 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table M_EXP_PROJECT
--------------------------------------------------------

  CREATE TABLE "M_EXP_PROJECT" 
   (	"E_ID" NUMBER(5,0), 
	"PJ_ID" NUMBER(4,0)
   ) ;
--------------------------------------------------------
--  DDL for Table M_EXP_PROTOCOL
--------------------------------------------------------

  CREATE TABLE "M_EXP_PROTOCOL" 
   (	"E_ID" NUMBER(5,0), 
	"PT_ID" NUMBER(4,0), 
	"PT_NAME" VARCHAR2(26 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table M_EXP_PUBLICATION
--------------------------------------------------------

  CREATE TABLE "M_EXP_PUBLICATION" 
   (	"E_ID" NUMBER(5,0), 
	"PU_ID" VARCHAR2(26 BYTE), 
	"PUB_MED_ID" NUMBER(26,0)
   ) ;
--------------------------------------------------------
--  DDL for Table M_GENE_CLUSTER
--------------------------------------------------------

  CREATE TABLE "M_GENE_CLUSTER" 
   (	"CL_ID" NUMBER(3,0), 
	"U_ID" NUMBER(10,0), 
	"CL_NUM" NUMBER(5,0)
   ) ;
--------------------------------------------------------
--  DDL for Table M_GENE_DM
--------------------------------------------------------

  CREATE TABLE "M_GENE_DM" 
   (	"DM_ID" NUMBER(8,0), 
	"U_ID" NUMBER(10,0)
   ) ;
--------------------------------------------------------
--  DDL for Table M_GENE_GO
--------------------------------------------------------

  CREATE TABLE "M_GENE_GO" 
   (	"GO_ID" NUMBER(7,0), 
	"U_ID" NUMBER(10,0)
   ) ;
--------------------------------------------------------
--  DDL for Table M_GENE_PM
--------------------------------------------------------

  CREATE TABLE "M_GENE_PM" 
   (	"PM_ID" NUMBER(8,0), 
	"U_ID" NUMBER(10,0)
   ) ;
--------------------------------------------------------
--  DDL for Table M_PATIENT_SAMPLE
--------------------------------------------------------

  CREATE TABLE "M_PATIENT_SAMPLE" 
   (	"P_ID" NUMBER(26,0), 
	"S_ID" NUMBER(26,0), 
	"S_AMOUNT" NUMBER(26,0), 
	"S_SOURCE" VARCHAR2(26 BYTE), 
	"SP_DATE" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table M_SAMPLE_ASSAY
--------------------------------------------------------

  CREATE TABLE "M_SAMPLE_ASSAY" 
   (	"P_ID" NUMBER(26,0), 
	"S_ID" NUMBER(26,0), 
	"AS_ID" NUMBER(26,0), 
	"AS_RESULT" VARCHAR2(26 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table M_SAMPLE_MARKER
--------------------------------------------------------

  CREATE TABLE "M_SAMPLE_MARKER" 
   (	"P_ID" NUMBER(26,0), 
	"S_ID" NUMBER(26,0), 
	"MK_ID" NUMBER(7,0), 
	"MK_RESULT" VARCHAR2(26 BYTE), 
	"MK_DATE" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table M_SAMPLE_TERM
--------------------------------------------------------

  CREATE TABLE "M_SAMPLE_TERM" 
   (	"S_ID" NUMBER(26,0), 
	"TM_ID" NUMBER(26,0), 
	"TM_DESCRIPTION" VARCHAR2(26 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table M_TEST
--------------------------------------------------------

  CREATE TABLE "M_TEST" 
   (	"TT_ID" NUMBER(26,0), 
	"P_ID" NUMBER(26,0), 
	"RESULT" VARCHAR2(26 BYTE), 
	"TT_DATE" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table M_TREATMENT
--------------------------------------------------------

  CREATE TABLE "M_TREATMENT" 
   (	"DR_ID" NUMBER(26,0), 
	"P_ID" NUMBER(26,0), 
	"DOSAGE" NUMBER(26,0), 
	"DR_FROM_DATE" DATE, 
	"DR_TO_DATE" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table NEW_TEST_SAMPLES
--------------------------------------------------------

  CREATE TABLE "NEW_TEST_SAMPLES" 
   (	"PATIENT_ID" VARCHAR2(100 BYTE), 
	"U_ID" NUMBER(10,0), 
	"EXP" NUMBER(5,0)
   ) ;
--------------------------------------------------------
--  DDL for Table PATIENTLISTONEDS
--------------------------------------------------------

  CREATE TABLE "PATIENTLISTONEDS" 
   (	"P_ID" NUMBER(26,0)
   ) ;
--------------------------------------------------------
--  DDL for Table PATIENTLISTTWODS
--------------------------------------------------------

  CREATE TABLE "PATIENTLISTTWODS" 
   (	"P_ID1" NUMBER(26,0), 
	"P_ID2" NUMBER(26,0)
   ) ;
--------------------------------------------------------
--  DDL for Table PATIENTLISTTWODS1
--------------------------------------------------------

  CREATE TABLE "PATIENTLISTTWODS1" 
   (	"P_ID" NUMBER(26,0)
   ) ;
--------------------------------------------------------
--  DDL for Table PATIENTLISTTWODS2
--------------------------------------------------------

  CREATE TABLE "PATIENTLISTTWODS2" 
   (	"P_ID" NUMBER(26,0)
   ) ;
--------------------------------------------------------
--  DDL for Table TEMP_VPG_DM
--------------------------------------------------------

  CREATE TABLE "TEMP_VPG_DM" 
   (	"P_ID" NUMBER(26,0), 
	"S_ID" NUMBER(26,0), 
	"EXP" NUMBER(5,0), 
	"PB_ID" NUMBER(10,0), 
	"U_ID" NUMBER(10,0), 
	"GO_ID" NUMBER(7,0), 
	"DS_ID" NUMBER(26,0)
   ) ;
--------------------------------------------------------
--  DDL for Table VIEW_PATIENT_SAMPLE_MICROARRAY
--------------------------------------------------------

  CREATE TABLE "VIEW_PATIENT_SAMPLE_MICROARRAY" 
   (	"P_ID" NUMBER(26,0), 
	"S_ID" NUMBER(26,0), 
	"PB_ID" NUMBER(10,0), 
	"MU_ID" NUMBER(3,0), 
	"EXP" NUMBER(5,0), 
	"E_ID" NUMBER(5,0)
   ) ;
--------------------------------------------------------
--  DDL for Table VIEW_PATIENT_TILL_GO
--------------------------------------------------------

  CREATE TABLE "VIEW_PATIENT_TILL_GO" 
   (	"P_ID" NUMBER(26,0), 
	"S_ID" NUMBER(26,0), 
	"MU_ID" NUMBER(3,0), 
	"EXP" NUMBER(5,0), 
	"PB_ID" NUMBER(10,0), 
	"U_ID" NUMBER(10,0), 
	"GO_ID" NUMBER(7,0)
   ) ;
--------------------------------------------------------
--  DDL for Table VIEW_PROBE_GENE_GO
--------------------------------------------------------

  CREATE TABLE "VIEW_PROBE_GENE_GO" 
   (	"PB_ID" NUMBER(10,0), 
	"U_ID" NUMBER(10,0), 
	"GO_ID" NUMBER(7,0)
   ) ;

--------------------------------------------------------
--  DDL for Index SYS_C00179234
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C00179234" ON "D_ASSAY" ("AS_ID") 
  ;
--------------------------------------------------------
--  DDL for Index D_CLUSTER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "D_CLUSTER_PK" ON "D_CLUSTER" ("CL_ID", "CL_NUM") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C00179236
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C00179236" ON "D_DISEASE" ("DS_ID") 
  ;
--------------------------------------------------------
--  DDL for Index D_DS_DS_NAME
--------------------------------------------------------

  CREATE INDEX "D_DS_DS_NAME" ON "D_DISEASE" ("DS_NAME") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C00179237
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C00179237" ON "D_DOMAIN" ("DM_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C00179238
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C00179238" ON "D_DRUG" ("DR_ID") 
  ;
--------------------------------------------------------
--  DDL for Index D_DR_TYPE
--------------------------------------------------------

  CREATE INDEX "D_DR_TYPE" ON "D_DRUG" ("DR_TYPE") 
  ;
--------------------------------------------------------
--  DDL for Index D_EXPERIMENT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "D_EXPERIMENT_PK" ON "D_EXPERIMENT" ("E_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C00179240
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C00179240" ON "D_GENE" ("U_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C00179241
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C00179241" ON "D_GO" ("GO_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C00179242
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C00179242" ON "D_MARKER" ("MK_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C00179243
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C00179243" ON "D_MEASUREUNIT" ("MU_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C00179244
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C00179244" ON "D_NORM" ("NM_ID", "NM_TYPE", "NM_SOFTWARE") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C00179258
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C00179258" ON "D_PATIENT" ("P_ID") 
  ;
--------------------------------------------------------
--  DDL for Index D_PERSON_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "D_PERSON_PK" ON "D_PERSON" ("PN_ID", "NAME") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C00179247
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C00179247" ON "D_PLATFORM" ("PF_ID", "PF_HARDWARE", "PF_SOFTWARE") 
  ;
--------------------------------------------------------
--  DDL for Index D_PROBE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "D_PROBE_PK" ON "D_PROBE" ("PB_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C00179248
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C00179248" ON "D_PROJECT" ("PJ_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C00179249
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C00179249" ON "D_PROMOTER" ("PM_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C00179251
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C00179251" ON "D_PROTOCOL" ("PT_ID", "PT_NAME") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C00179253
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C00179253" ON "D_PUBLICATION" ("PU_ID", "PUB_MED_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C00179254
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C00179254" ON "D_SAMPLE" ("S_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C00179255
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C00179255" ON "D_TERM" ("TM_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C00179256
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C00179256" ON "D_TEST" ("TT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C00179257
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C00179257" ON "D_TEST_SAMPLE" ("TESTID") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_FMA_PB_ID
--------------------------------------------------------

  CREATE INDEX "IDX_FMA_PB_ID" ON "FACT_MICROARRAY" ("PB_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_FMA_MU_ID
--------------------------------------------------------

  CREATE INDEX "IDX_FMA_MU_ID" ON "FACT_MICROARRAY" ("MU_ID") 
  ;
--------------------------------------------------------
--  DDL for Index M_DIAG_DS_ID
--------------------------------------------------------

  CREATE INDEX "M_DIAG_DS_ID" ON "M_DIAGNOSIS" ("DS_ID") 
  ;
--------------------------------------------------------
--  DDL for Index M_DIAG_P_ID
--------------------------------------------------------

  CREATE INDEX "M_DIAG_P_ID" ON "M_DIAGNOSIS" ("P_ID") 
  ;
--------------------------------------------------------
--  DDL for Index M_PATIENT_SAMPLE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "M_PATIENT_SAMPLE_PK" ON "M_PATIENT_SAMPLE" ("P_ID", "S_ID") 
  ;
--------------------------------------------------------
--  DDL for Index M_TREAT_DR_ID
--------------------------------------------------------

  CREATE INDEX "M_TREAT_DR_ID" ON "M_TREATMENT" ("DR_ID") 
  ;
--------------------------------------------------------
--  DDL for Index M_TREAT_P_ID
--------------------------------------------------------

  CREATE INDEX "M_TREAT_P_ID" ON "M_TREATMENT" ("P_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_VPG_P_ID
--------------------------------------------------------

  CREATE INDEX "IDX_VPG_P_ID" ON "VIEW_PATIENT_TILL_GO" ("P_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_VPG_S_ID
--------------------------------------------------------

  CREATE INDEX "IDX_VPG_S_ID" ON "VIEW_PATIENT_TILL_GO" ("S_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_VPG_PB_ID
--------------------------------------------------------

  CREATE INDEX "IDX_VPG_PB_ID" ON "VIEW_PATIENT_TILL_GO" ("PB_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_VPG_U_ID
--------------------------------------------------------

  CREATE INDEX "IDX_VPG_U_ID" ON "VIEW_PATIENT_TILL_GO" ("U_ID") 
  ;
--------------------------------------------------------
--  Constraints for Table D_ASSAY
--------------------------------------------------------

  ALTER TABLE "D_ASSAY" ADD CONSTRAINT "D_ASSAY_PK" PRIMARY KEY ("AS_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table D_CLUSTER
--------------------------------------------------------

  ALTER TABLE "D_CLUSTER" ADD CONSTRAINT "D_CLUSTER_PK" PRIMARY KEY ("CL_ID", "CL_NUM")
  USING INDEX  ENABLE;
  ALTER TABLE "D_CLUSTER" MODIFY ("CL_ID" NOT NULL ENABLE);
  ALTER TABLE "D_CLUSTER" MODIFY ("CL_NUM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table D_DISEASE
--------------------------------------------------------

  ALTER TABLE "D_DISEASE" ADD CONSTRAINT "D_DISEASE_PK" PRIMARY KEY ("DS_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table D_DOMAIN
--------------------------------------------------------

  ALTER TABLE "D_DOMAIN" ADD CONSTRAINT "D_DOMAIN_PK" PRIMARY KEY ("DM_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table D_DRUG
--------------------------------------------------------

  ALTER TABLE "D_DRUG" ADD CONSTRAINT "D_DRUG_PK" PRIMARY KEY ("DR_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table D_EXPERIMENT
--------------------------------------------------------

  ALTER TABLE "D_EXPERIMENT" ADD CONSTRAINT "D_EXPERIMENT_PK" PRIMARY KEY ("E_ID")
  USING INDEX  ENABLE;
  ALTER TABLE "D_EXPERIMENT" MODIFY ("E_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table D_GENE
--------------------------------------------------------

  ALTER TABLE "D_GENE" ADD CONSTRAINT "D_GENE_PK" PRIMARY KEY ("U_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table D_GO
--------------------------------------------------------

  ALTER TABLE "D_GO" ADD CONSTRAINT "D_GO_PK" PRIMARY KEY ("GO_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table D_MARKER
--------------------------------------------------------

  ALTER TABLE "D_MARKER" ADD CONSTRAINT "D_MARKER_PK" PRIMARY KEY ("MK_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table D_MEASUREUNIT
--------------------------------------------------------

  ALTER TABLE "D_MEASUREUNIT" ADD CONSTRAINT "D_MEASUREUNIT_PK" PRIMARY KEY ("MU_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table D_NORM
--------------------------------------------------------

  ALTER TABLE "D_NORM" ADD CONSTRAINT "D_NORM_PK" PRIMARY KEY ("NM_ID", "NM_TYPE", "NM_SOFTWARE")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table D_PATIENT
--------------------------------------------------------

  ALTER TABLE "D_PATIENT" ADD CONSTRAINT "D_PATIENT_PK" PRIMARY KEY ("P_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table D_PERSON
--------------------------------------------------------

  ALTER TABLE "D_PERSON" ADD CONSTRAINT "D_PERSON_PK" PRIMARY KEY ("PN_ID", "NAME")
  USING INDEX  ENABLE;
  ALTER TABLE "D_PERSON" MODIFY ("PN_ID" NOT NULL ENABLE);
  ALTER TABLE "D_PERSON" MODIFY ("NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table D_PLATFORM
--------------------------------------------------------

  ALTER TABLE "D_PLATFORM" ADD CONSTRAINT "D_PLATFORM_PK" PRIMARY KEY ("PF_ID", "PF_HARDWARE", "PF_SOFTWARE")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table D_PROBE
--------------------------------------------------------

  ALTER TABLE "D_PROBE" ADD CONSTRAINT "D_PROBE_PK" PRIMARY KEY ("PB_ID")
  USING INDEX  ENABLE;
  ALTER TABLE "D_PROBE" MODIFY ("PB_ID" NOT NULL ENABLE);
  ALTER TABLE "D_PROBE" MODIFY ("U_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table D_PROJECT
--------------------------------------------------------

  ALTER TABLE "D_PROJECT" ADD CONSTRAINT "D_PROJECT_PK" PRIMARY KEY ("PJ_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table D_PROMOTER
--------------------------------------------------------

  ALTER TABLE "D_PROMOTER" ADD CONSTRAINT "D_PROMOTER_PK" PRIMARY KEY ("PM_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table D_PROTOCOL
--------------------------------------------------------

  ALTER TABLE "D_PROTOCOL" ADD CONSTRAINT "D_PROTOCOL_PK" PRIMARY KEY ("PT_ID", "PT_NAME")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table D_PUBLICATION
--------------------------------------------------------

  ALTER TABLE "D_PUBLICATION" ADD CONSTRAINT "D_PUBLICATION_PK" PRIMARY KEY ("PU_ID", "PUB_MED_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table D_SAMPLE
--------------------------------------------------------

  ALTER TABLE "D_SAMPLE" ADD CONSTRAINT "D_SAMPLE_PK" PRIMARY KEY ("S_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table D_TERM
--------------------------------------------------------

  ALTER TABLE "D_TERM" ADD CONSTRAINT "D_TERM_PK" PRIMARY KEY ("TM_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table D_TEST
--------------------------------------------------------

  ALTER TABLE "D_TEST" ADD CONSTRAINT "D_TEST_PK" PRIMARY KEY ("TT_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table D_TEST_SAMPLE
--------------------------------------------------------

  ALTER TABLE "D_TEST_SAMPLE" ADD CONSTRAINT "D_TEST_SAMPLE_PK" PRIMARY KEY ("TESTID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table FACT_MICROARRAY
--------------------------------------------------------

  ALTER TABLE "FACT_MICROARRAY" MODIFY ("E_ID" NOT NULL ENABLE);
  ALTER TABLE "FACT_MICROARRAY" MODIFY ("PB_ID" NOT NULL ENABLE);
  ALTER TABLE "FACT_MICROARRAY" MODIFY ("MU_ID" NOT NULL ENABLE);
  ALTER TABLE "FACT_MICROARRAY" MODIFY ("S_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table M_DIAGNOSIS
--------------------------------------------------------

  ALTER TABLE "M_DIAGNOSIS" MODIFY ("DS_ID" NOT NULL ENABLE);
  ALTER TABLE "M_DIAGNOSIS" MODIFY ("P_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table M_EXP_NORM
--------------------------------------------------------

  ALTER TABLE "M_EXP_NORM" MODIFY ("E_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table M_EXP_PERSON
--------------------------------------------------------

  ALTER TABLE "M_EXP_PERSON" MODIFY ("E_ID" NOT NULL ENABLE);
  ALTER TABLE "M_EXP_PERSON" MODIFY ("PN_ID" NOT NULL ENABLE);
  ALTER TABLE "M_EXP_PERSON" MODIFY ("NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table M_EXP_PROJECT
--------------------------------------------------------

  ALTER TABLE "M_EXP_PROJECT" MODIFY ("E_ID" NOT NULL ENABLE);
  ALTER TABLE "M_EXP_PROJECT" MODIFY ("PJ_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table M_EXP_PROTOCOL
--------------------------------------------------------

  ALTER TABLE "M_EXP_PROTOCOL" MODIFY ("E_ID" NOT NULL ENABLE);
  ALTER TABLE "M_EXP_PROTOCOL" MODIFY ("PT_ID" NOT NULL ENABLE);
  ALTER TABLE "M_EXP_PROTOCOL" MODIFY ("PT_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table M_EXP_PUBLICATION
--------------------------------------------------------

  ALTER TABLE "M_EXP_PUBLICATION" MODIFY ("E_ID" NOT NULL ENABLE);
  ALTER TABLE "M_EXP_PUBLICATION" MODIFY ("PU_ID" NOT NULL ENABLE);
  ALTER TABLE "M_EXP_PUBLICATION" MODIFY ("PUB_MED_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table M_GENE_CLUSTER
--------------------------------------------------------

  ALTER TABLE "M_GENE_CLUSTER" MODIFY ("CL_ID" NOT NULL ENABLE);
  ALTER TABLE "M_GENE_CLUSTER" MODIFY ("U_ID" NOT NULL ENABLE);
  ALTER TABLE "M_GENE_CLUSTER" MODIFY ("CL_NUM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table M_GENE_DM
--------------------------------------------------------

  ALTER TABLE "M_GENE_DM" MODIFY ("DM_ID" NOT NULL ENABLE);
  ALTER TABLE "M_GENE_DM" MODIFY ("U_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table M_GENE_GO
--------------------------------------------------------

  ALTER TABLE "M_GENE_GO" MODIFY ("GO_ID" NOT NULL ENABLE);
  ALTER TABLE "M_GENE_GO" MODIFY ("U_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table M_GENE_PM
--------------------------------------------------------

  ALTER TABLE "M_GENE_PM" MODIFY ("PM_ID" NOT NULL ENABLE);
  ALTER TABLE "M_GENE_PM" MODIFY ("U_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table M_PATIENT_SAMPLE
--------------------------------------------------------

  ALTER TABLE "M_PATIENT_SAMPLE" ADD CONSTRAINT "M_PATIENT_SAMPLE_PK" PRIMARY KEY ("P_ID", "S_ID")
  USING INDEX  ENABLE;
  ALTER TABLE "M_PATIENT_SAMPLE" MODIFY ("P_ID" NOT NULL ENABLE);
  ALTER TABLE "M_PATIENT_SAMPLE" MODIFY ("S_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table M_SAMPLE_ASSAY
--------------------------------------------------------

  ALTER TABLE "M_SAMPLE_ASSAY" MODIFY ("P_ID" NOT NULL ENABLE);
  ALTER TABLE "M_SAMPLE_ASSAY" MODIFY ("S_ID" NOT NULL ENABLE);
  ALTER TABLE "M_SAMPLE_ASSAY" MODIFY ("AS_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table M_SAMPLE_MARKER
--------------------------------------------------------

  ALTER TABLE "M_SAMPLE_MARKER" MODIFY ("P_ID" NOT NULL ENABLE);
  ALTER TABLE "M_SAMPLE_MARKER" MODIFY ("S_ID" NOT NULL ENABLE);
  ALTER TABLE "M_SAMPLE_MARKER" MODIFY ("MK_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table M_SAMPLE_TERM
--------------------------------------------------------

  ALTER TABLE "M_SAMPLE_TERM" MODIFY ("S_ID" NOT NULL ENABLE);
  ALTER TABLE "M_SAMPLE_TERM" MODIFY ("TM_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table M_TEST
--------------------------------------------------------

  ALTER TABLE "M_TEST" MODIFY ("TT_ID" NOT NULL ENABLE);
  ALTER TABLE "M_TEST" MODIFY ("P_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table M_TREATMENT
--------------------------------------------------------

  ALTER TABLE "M_TREATMENT" MODIFY ("DR_ID" NOT NULL ENABLE);
  ALTER TABLE "M_TREATMENT" MODIFY ("P_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TEMP_VPG_DM
--------------------------------------------------------

  ALTER TABLE "TEMP_VPG_DM" MODIFY ("P_ID" NOT NULL ENABLE);
  ALTER TABLE "TEMP_VPG_DM" MODIFY ("S_ID" NOT NULL ENABLE);
  ALTER TABLE "TEMP_VPG_DM" MODIFY ("PB_ID" NOT NULL ENABLE);
  ALTER TABLE "TEMP_VPG_DM" MODIFY ("U_ID" NOT NULL ENABLE);
  ALTER TABLE "TEMP_VPG_DM" MODIFY ("GO_ID" NOT NULL ENABLE);
  ALTER TABLE "TEMP_VPG_DM" MODIFY ("DS_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table VIEW_PATIENT_SAMPLE_MICROARRAY
--------------------------------------------------------

  ALTER TABLE "VIEW_PATIENT_SAMPLE_MICROARRAY" MODIFY ("P_ID" NOT NULL ENABLE);
  ALTER TABLE "VIEW_PATIENT_SAMPLE_MICROARRAY" MODIFY ("S_ID" NOT NULL ENABLE);
  ALTER TABLE "VIEW_PATIENT_SAMPLE_MICROARRAY" MODIFY ("PB_ID" NOT NULL ENABLE);
  ALTER TABLE "VIEW_PATIENT_SAMPLE_MICROARRAY" MODIFY ("MU_ID" NOT NULL ENABLE);
  ALTER TABLE "VIEW_PATIENT_SAMPLE_MICROARRAY" MODIFY ("E_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table VIEW_PATIENT_TILL_GO
--------------------------------------------------------

  ALTER TABLE "VIEW_PATIENT_TILL_GO" MODIFY ("P_ID" NOT NULL ENABLE);
  ALTER TABLE "VIEW_PATIENT_TILL_GO" MODIFY ("S_ID" NOT NULL ENABLE);
  ALTER TABLE "VIEW_PATIENT_TILL_GO" MODIFY ("MU_ID" NOT NULL ENABLE);
  ALTER TABLE "VIEW_PATIENT_TILL_GO" MODIFY ("PB_ID" NOT NULL ENABLE);
  ALTER TABLE "VIEW_PATIENT_TILL_GO" MODIFY ("U_ID" NOT NULL ENABLE);
  ALTER TABLE "VIEW_PATIENT_TILL_GO" MODIFY ("GO_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table VIEW_PROBE_GENE_GO
--------------------------------------------------------

  ALTER TABLE "VIEW_PROBE_GENE_GO" MODIFY ("PB_ID" NOT NULL ENABLE);
  ALTER TABLE "VIEW_PROBE_GENE_GO" MODIFY ("U_ID" NOT NULL ENABLE);
  ALTER TABLE "VIEW_PROBE_GENE_GO" MODIFY ("GO_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table D_PROBE
--------------------------------------------------------

  ALTER TABLE "D_PROBE" ADD CONSTRAINT "D_PROBE_D_GENE_FK" FOREIGN KEY ("U_ID")
	  REFERENCES "D_GENE" ("U_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table FACT_CLINICAL
--------------------------------------------------------

  ALTER TABLE "FACT_CLINICAL" ADD CONSTRAINT "FK_DRID" FOREIGN KEY ("DR_ID")
	  REFERENCES "D_DRUG" ("DR_ID") ENABLE;
  ALTER TABLE "FACT_CLINICAL" ADD CONSTRAINT "FK_DSID" FOREIGN KEY ("DS_ID")
	  REFERENCES "D_DISEASE" ("DS_ID") ENABLE;
  ALTER TABLE "FACT_CLINICAL" ADD CONSTRAINT "FK_PID" FOREIGN KEY ("P_ID")
	  REFERENCES "D_PATIENT" ("P_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table FACT_GENE
--------------------------------------------------------

  ALTER TABLE "FACT_GENE" ADD CONSTRAINT "FK_FG_GOID" FOREIGN KEY ("GO_ID")
	  REFERENCES "D_GO" ("GO_ID") ENABLE;
  ALTER TABLE "FACT_GENE" ADD CONSTRAINT "FK_FG_UID" FOREIGN KEY ("U_ID")
	  REFERENCES "D_GENE" ("U_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table FACT_MICROARRAY
--------------------------------------------------------

  ALTER TABLE "FACT_MICROARRAY" ADD CONSTRAINT "FACT_MA_D_EXP_FK" FOREIGN KEY ("E_ID")
	  REFERENCES "D_EXPERIMENT" ("E_ID") ENABLE;
  ALTER TABLE "FACT_MICROARRAY" ADD CONSTRAINT "FACT_MA_D_MU_FK" FOREIGN KEY ("MU_ID")
	  REFERENCES "D_MEASUREUNIT" ("MU_ID") ENABLE;
  ALTER TABLE "FACT_MICROARRAY" ADD CONSTRAINT "FACT_MICROARRAY_D_PROBE_FK" FOREIGN KEY ("PB_ID")
	  REFERENCES "D_PROBE" ("PB_ID") ENABLE;
  ALTER TABLE "FACT_MICROARRAY" ADD CONSTRAINT "FACT_MICROARRAY_D_SAMPLE_FK" FOREIGN KEY ("S_ID")
	  REFERENCES "D_SAMPLE" ("S_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table FACT_SAMPLE
--------------------------------------------------------

  ALTER TABLE "FACT_SAMPLE" ADD CONSTRAINT "FK_ASID" FOREIGN KEY ("AS_ID")
	  REFERENCES "D_ASSAY" ("AS_ID") ENABLE;
  ALTER TABLE "FACT_SAMPLE" ADD CONSTRAINT "FK_MKID" FOREIGN KEY ("MK_ID")
	  REFERENCES "D_MARKER" ("MK_ID") ENABLE;
  ALTER TABLE "FACT_SAMPLE" ADD CONSTRAINT "FK_SID" FOREIGN KEY ("S_ID")
	  REFERENCES "D_SAMPLE" ("S_ID") ENABLE;
  ALTER TABLE "FACT_SAMPLE" ADD CONSTRAINT "FK_TMID" FOREIGN KEY ("TM_ID")
	  REFERENCES "D_TERM" ("TM_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table M_DIAGNOSIS
--------------------------------------------------------

  ALTER TABLE "M_DIAGNOSIS" ADD CONSTRAINT "M_DIAGNOSIS_D_DISEASE_FK" FOREIGN KEY ("DS_ID")
	  REFERENCES "D_DISEASE" ("DS_ID") ENABLE;
  ALTER TABLE "M_DIAGNOSIS" ADD CONSTRAINT "M_DIAGNOSIS_D_PATIENT_FK" FOREIGN KEY ("P_ID")
	  REFERENCES "D_PATIENT" ("P_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table M_EXP_NORM
--------------------------------------------------------

  ALTER TABLE "M_EXP_NORM" ADD CONSTRAINT "M_EXP_NORM_D_EXPERIMENT_FK" FOREIGN KEY ("E_ID")
	  REFERENCES "D_EXPERIMENT" ("E_ID") ENABLE;
  ALTER TABLE "M_EXP_NORM" ADD CONSTRAINT "M_EXP_NORM_D_NORM_FK" FOREIGN KEY ("NM_ID", "NM_TYPE", "NM_SOFTWARE")
	  REFERENCES "D_NORM" ("NM_ID", "NM_TYPE", "NM_SOFTWARE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table M_EXP_PERSON
--------------------------------------------------------

  ALTER TABLE "M_EXP_PERSON" ADD CONSTRAINT "M_EXP_PERSON_D_EXP_FK" FOREIGN KEY ("E_ID")
	  REFERENCES "D_EXPERIMENT" ("E_ID") ENABLE;
  ALTER TABLE "M_EXP_PERSON" ADD CONSTRAINT "M_EXP_PERSON_D_PERSON_FK" FOREIGN KEY ("PN_ID", "NAME")
	  REFERENCES "D_PERSON" ("PN_ID", "NAME") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table M_EXP_PROJECT
--------------------------------------------------------

  ALTER TABLE "M_EXP_PROJECT" ADD CONSTRAINT "M_EXP_PROJECT_D_EXP_FK" FOREIGN KEY ("E_ID")
	  REFERENCES "D_EXPERIMENT" ("E_ID") ENABLE;
  ALTER TABLE "M_EXP_PROJECT" ADD CONSTRAINT "M_EXP_PROJECT_D_PROJECT_FK" FOREIGN KEY ("PJ_ID")
	  REFERENCES "D_PROJECT" ("PJ_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table M_EXP_PROTOCOL
--------------------------------------------------------

  ALTER TABLE "M_EXP_PROTOCOL" ADD CONSTRAINT "M_EXP_PROTOCOL_D_EXP_FK" FOREIGN KEY ("E_ID")
	  REFERENCES "D_EXPERIMENT" ("E_ID") ENABLE;
  ALTER TABLE "M_EXP_PROTOCOL" ADD CONSTRAINT "M_EXP_PROTOCOL_D_PROTOCOL_FK" FOREIGN KEY ("PT_ID", "PT_NAME")
	  REFERENCES "D_PROTOCOL" ("PT_ID", "PT_NAME") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table M_EXP_PUBLICATION
--------------------------------------------------------

  ALTER TABLE "M_EXP_PUBLICATION" ADD CONSTRAINT "M_EXP_PUB_D_EXP_FK" FOREIGN KEY ("E_ID")
	  REFERENCES "D_EXPERIMENT" ("E_ID") ENABLE;
  ALTER TABLE "M_EXP_PUBLICATION" ADD CONSTRAINT "M_EXP_PUB_D_PUB_FK" FOREIGN KEY ("PU_ID", "PUB_MED_ID")
	  REFERENCES "D_PUBLICATION" ("PU_ID", "PUB_MED_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table M_GENE_CLUSTER
--------------------------------------------------------

  ALTER TABLE "M_GENE_CLUSTER" ADD CONSTRAINT "M_GENE_CLUSTER_D_CLUSTER_FK" FOREIGN KEY ("CL_ID", "CL_NUM")
	  REFERENCES "D_CLUSTER" ("CL_ID", "CL_NUM") ENABLE;
  ALTER TABLE "M_GENE_CLUSTER" ADD CONSTRAINT "M_GENE_CLUSTER_D_GENE_FK" FOREIGN KEY ("U_ID")
	  REFERENCES "D_GENE" ("U_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table M_GENE_DM
--------------------------------------------------------

  ALTER TABLE "M_GENE_DM" ADD CONSTRAINT "M_GENE_DM_D_DOMAIN_FK" FOREIGN KEY ("DM_ID")
	  REFERENCES "D_DOMAIN" ("DM_ID") ENABLE;
  ALTER TABLE "M_GENE_DM" ADD CONSTRAINT "M_GENE_DM_D_GENE_FK" FOREIGN KEY ("U_ID")
	  REFERENCES "D_GENE" ("U_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table M_GENE_GO
--------------------------------------------------------

  ALTER TABLE "M_GENE_GO" ADD CONSTRAINT "M_GENE_GO_D_GENE_FK" FOREIGN KEY ("U_ID")
	  REFERENCES "D_GENE" ("U_ID") ENABLE;
  ALTER TABLE "M_GENE_GO" ADD CONSTRAINT "M_GENE_GO_D_GO_FK" FOREIGN KEY ("GO_ID")
	  REFERENCES "D_GO" ("GO_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table M_GENE_PM
--------------------------------------------------------

  ALTER TABLE "M_GENE_PM" ADD CONSTRAINT "M_GENE_PM_D_GENE_FK" FOREIGN KEY ("U_ID")
	  REFERENCES "D_GENE" ("U_ID") ENABLE;
  ALTER TABLE "M_GENE_PM" ADD CONSTRAINT "M_GENE_PM_D_PROMOTER_FK" FOREIGN KEY ("PM_ID")
	  REFERENCES "D_PROMOTER" ("PM_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table M_PATIENT_SAMPLE
--------------------------------------------------------

  ALTER TABLE "M_PATIENT_SAMPLE" ADD CONSTRAINT "M_PATIENT_SAMPLE_D_PATIENT_FK" FOREIGN KEY ("P_ID")
	  REFERENCES "D_PATIENT" ("P_ID") ENABLE;
  ALTER TABLE "M_PATIENT_SAMPLE" ADD CONSTRAINT "M_PATIENT_SAMPLE_D_SAMPLE_FK" FOREIGN KEY ("S_ID")
	  REFERENCES "D_SAMPLE" ("S_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table M_SAMPLE_ASSAY
--------------------------------------------------------

  ALTER TABLE "M_SAMPLE_ASSAY" ADD CONSTRAINT "M_SAMPLE_ASSAY_D_ASSAY_FK" FOREIGN KEY ("AS_ID")
	  REFERENCES "D_ASSAY" ("AS_ID") ENABLE;
  ALTER TABLE "M_SAMPLE_ASSAY" ADD CONSTRAINT "M_S_ASSAY_M_PATIENT_S_FK" FOREIGN KEY ("P_ID", "S_ID")
	  REFERENCES "M_PATIENT_SAMPLE" ("P_ID", "S_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table M_SAMPLE_MARKER
--------------------------------------------------------

  ALTER TABLE "M_SAMPLE_MARKER" ADD CONSTRAINT "M_SAMPLE_MARKER_D_MARKER_FK" FOREIGN KEY ("MK_ID")
	  REFERENCES "D_MARKER" ("MK_ID") ENABLE;
  ALTER TABLE "M_SAMPLE_MARKER" ADD CONSTRAINT "M_SAMPLE_MARKER_D_SAMPLE_FK" FOREIGN KEY ("S_ID")
	  REFERENCES "D_SAMPLE" ("S_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table M_SAMPLE_TERM
--------------------------------------------------------

  ALTER TABLE "M_SAMPLE_TERM" ADD CONSTRAINT "M_SAMPLE_TERM_D_SAMPLE_FK" FOREIGN KEY ("S_ID")
	  REFERENCES "D_SAMPLE" ("S_ID") ENABLE;
  ALTER TABLE "M_SAMPLE_TERM" ADD CONSTRAINT "M_SAMPLE_TERM_D_TERM_FK" FOREIGN KEY ("TM_ID")
	  REFERENCES "D_TERM" ("TM_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table M_TEST
--------------------------------------------------------

  ALTER TABLE "M_TEST" ADD CONSTRAINT "M_TEST_D_PATIENT_FK" FOREIGN KEY ("P_ID")
	  REFERENCES "D_PATIENT" ("P_ID") ENABLE;
  ALTER TABLE "M_TEST" ADD CONSTRAINT "M_TEST_D_TEST_FK" FOREIGN KEY ("TT_ID")
	  REFERENCES "D_TEST" ("TT_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table M_TREATMENT
--------------------------------------------------------

  ALTER TABLE "M_TREATMENT" ADD CONSTRAINT "M_TREATMENT_D_DRUG_FK" FOREIGN KEY ("DR_ID")
	  REFERENCES "D_DRUG" ("DR_ID") ENABLE;
  ALTER TABLE "M_TREATMENT" ADD CONSTRAINT "M_TREATMENT_D_PATIENT_FK" FOREIGN KEY ("P_ID")
	  REFERENCES "D_PATIENT" ("P_ID") ENABLE;
