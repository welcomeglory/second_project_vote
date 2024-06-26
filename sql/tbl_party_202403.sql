--------------------------------------------------------
--  파일이 생성됨 - 금요일-3월-29-2024   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table TBL_PARTY_202403
--------------------------------------------------------

  CREATE TABLE "SCOTT"."TBL_PARTY_202403" 
   (	"P_CODE" CHAR(2 BYTE), 
	"P_NAME" VARCHAR2(20 BYTE), 
	"P_INDATE" DATE, 
	"P_READER" VARCHAR2(20 BYTE), 
	"P_TEL1" CHAR(3 BYTE), 
	"P_TEL2" CHAR(4 BYTE), 
	"P_TEL3" CHAR(4 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into SCOTT.TBL_PARTY_202403
SET DEFINE OFF;
Insert into SCOTT.TBL_PARTY_202403 (P_CODE,P_NAME,P_INDATE,P_READER,P_TEL1,P_TEL2,P_TEL3) values ('P1','A정당',to_date('10/01/01','RR/MM/DD'),'위대표','02 ','1111','0001');
Insert into SCOTT.TBL_PARTY_202403 (P_CODE,P_NAME,P_INDATE,P_READER,P_TEL1,P_TEL2,P_TEL3) values ('P2','B정당',to_date('10/02/01','RR/MM/DD'),'명대표','02 ','1111','0002');
Insert into SCOTT.TBL_PARTY_202403 (P_CODE,P_NAME,P_INDATE,P_READER,P_TEL1,P_TEL2,P_TEL3) values ('P3','C정당',to_date('10/03/01','RR/MM/DD'),'기대표','02 ','1111','0003');
Insert into SCOTT.TBL_PARTY_202403 (P_CODE,P_NAME,P_INDATE,P_READER,P_TEL1,P_TEL2,P_TEL3) values ('P4','D정당',to_date('10/04/01','RR/MM/DD'),'옥대표','02 ','1111','0004');
Insert into SCOTT.TBL_PARTY_202403 (P_CODE,P_NAME,P_INDATE,P_READER,P_TEL1,P_TEL2,P_TEL3) values ('P5','E정당',to_date('10/05/01','RR/MM/DD'),'임대표','02 ','1111','0005');
--------------------------------------------------------
--  DDL for Index SYS_C007061
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."SYS_C007061" ON "SCOTT"."TBL_PARTY_202403" ("P_CODE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table TBL_PARTY_202403
--------------------------------------------------------

  ALTER TABLE "SCOTT"."TBL_PARTY_202403" ADD PRIMARY KEY ("P_CODE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "SCOTT"."TBL_PARTY_202403" MODIFY ("P_CODE" NOT NULL ENABLE);
