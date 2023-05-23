--------------------------------------------------------
--  ������ ������ - �ݿ���-7��-24-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table CUSTOMER
--------------------------------------------------------

  CREATE TABLE "CUSTOMER" 
   (	"ID" VARCHAR2(20), 
	"PWD" VARCHAR2(20), 
	"NAME" VARCHAR2(20), 
	"PHONE" VARCHAR2(40), 
	"ADDRESS" VARCHAR2(60)
   )
--------------------------------------------------------
--  DDL for Table LOGIN
--------------------------------------------------------

  CREATE TABLE "LOGIN" 
   (	"ID" VARCHAR2(20), 
	"NAME" VARCHAR2(20), 
	"PWD" VARCHAR2(20)
   )
--------------------------------------------------------
--  DDL for Table PLIST
--------------------------------------------------------

  CREATE TABLE "PLIST" 
   (	"PNO" NUMBER, 
	"PNAME" VARCHAR2(30), 
	"QUANTITY" NUMBER, 
	"REGDATE" DATE DEFAULT SYSDATE, 
	"ID" VARCHAR2(30)
   )
--------------------------------------------------------
--  DDL for Table PRODUCT
--------------------------------------------------------

  CREATE TABLE "PRODUCT" 
   (	"PID" VARCHAR2(30), 
	"PNAME" VARCHAR2(30), 
	"PRICE" NUMBER, 
	"PIMG" VARCHAR2(80), 
	"PDATE" DATE DEFAULT SYSDATE, 
	"INFO" VARCHAR2(300)
   )
--------------------------------------------------------
--  DDL for Table QLIST
--------------------------------------------------------

  CREATE TABLE "QLIST" 
   (	"QNO" NUMBER, 
	"TITLE" VARCHAR2(50), 
	"CONTENT" VARCHAR2(50), 
	"IMG" VARCHAR2(80), 
	"ID" VARCHAR2(30)
   )
--------------------------------------------------------
--  DDL for Table RLIST
--------------------------------------------------------

  CREATE TABLE "RLIST" 
   (	"RNO" NUMBER, 
	"TITLE" VARCHAR2(30), 
	"PNAME" VARCHAR2(30), 
	"CONTENT" VARCHAR2(1000), 
	"REGDATE" DATE DEFAULT SYSDATE, 
	"ID" VARCHAR2(30)
   )
REM INSERTING into CUSTOMER
SET DEFINE OFF;
Insert into CUSTOMER (ID,PWD,NAME,PHONE,ADDRESS) values ('jsp','jsp1111','ȫ�浿','010-1234-5678','�λ� �λ����� �߾Ӵ�� 730');
Insert into CUSTOMER (ID,PWD,NAME,PHONE,ADDRESS) values ('rabbit','asdf56','�䳢','010-5032-3940','���� ���빮�� õȣ��� 405');
Insert into CUSTOMER (ID,PWD,NAME,PHONE,ADDRESS) values ('bear1','study12','������','010-5032-3940','���� ������ ������� 703');
Insert into CUSTOMER (ID,PWD,NAME,PHONE,ADDRESS) values ('zz','11','11','�λ�� �λ�����','0100000000');
REM INSERTING into LOGIN
SET DEFINE OFF;
Insert into LOGIN (ID,NAME,PWD) values ('gildong','ȫ�浿','1111');
Insert into LOGIN (ID,NAME,PWD) values ('minwoo','kk','kk');
Insert into LOGIN (ID,NAME,PWD) values ('sohee','hjk','hjkh');
Insert into LOGIN (ID,NAME,PWD) values ('jklj','jlk','klj');
REM INSERTING into PLIST
SET DEFINE OFF;
Insert into PLIST (PNO,PNAME,QUANTITY,REGDATE,ID) values (2,'�Ǹ�',5,to_date('20/07/24','RR/MM/DD'),'zz');
Insert into PLIST (PNO,PNAME,QUANTITY,REGDATE,ID) values (1,'�Ǹ�',5,to_date('20/07/24','RR/MM/DD'),'dit');
REM INSERTING into PRODUCT
SET DEFINE OFF;
Insert into PRODUCT (PID,PNAME,PRICE,PIMG,PDATE,INFO) values ('P1','�Ǹ�',8000,'product-1.jpg',to_date('20/07/15','RR/MM/DD'),'���� ����� ����� �Ǹ��Դϴ� ������̴� �Ƚ��ϰ� ������ �Բ� ��� �� �ֽ��ϴ�.');
Insert into PRODUCT (PID,PNAME,PRICE,PIMG,PDATE,INFO) values ('P2','����',16000,'product-2.jpg',to_date('20/07/15','RR/MM/DD'),'�̽��� �����Դϴ�. ��ö�� ��ŭ �絵�� ���� �����ϴ�');
Insert into PRODUCT (PID,PNAME,PRICE,PIMG,PDATE,INFO) values ('P3','�ϵ���',5000,'product-3.jpg',to_date('20/07/15','RR/MM/DD'),'�ܹ����� ǳ���� �ϵ����Դϴ�. ����� ���̵� �Ĵܿ� �ȼ� �����Դϴ�.');
Insert into PRODUCT (PID,PNAME,PRICE,PIMG,PDATE,INFO) values ('P4','�����',10000,'product-4.jpg',to_date('20/07/15','RR/MM/DD'),'���� ����� ������Դϴ� �Ƚ��ϰ� ��� �� �ֽ��ϴ�.');
REM INSERTING into QLIST
SET DEFINE OFF;
Insert into QLIST (QNO,TITLE,CONTENT,IMG,ID) values (4,'�ä���','�ä���','100150453-1.hwp',null);
Insert into QLIST (QNO,TITLE,CONTENT,IMG,ID) values (5,'����','ȣ','28.hwp',null);
Insert into QLIST (QNO,TITLE,CONTENT,IMG,ID) values (3,'jkljkl','jkl','100150453-1 (1).hwp','zz');
REM INSERTING into RLIST
SET DEFINE OFF;
Insert into RLIST (RNO,TITLE,PNAME,CONTENT,REGDATE,ID) values (19,'jkl','jkl','jlk',to_date('20/07/24','RR/MM/DD'),'jsp');
Insert into RLIST (RNO,TITLE,PNAME,CONTENT,REGDATE,ID) values (2,'���Ⱑ ����','����','���Ⱑ �ʹ��ʹ� ���־�� �絵 ���� �� ��԰� �ʹ٤���',to_date('20/07/02','RR/MM/DD'),'rabbit');
Insert into RLIST (RNO,TITLE,PNAME,CONTENT,REGDATE,ID) values (18,'�ä���','���äӤ�','�ä���jkljlk',to_date('20/07/22','RR/MM/DD'),'dit');
Insert into RLIST (RNO,TITLE,PNAME,CONTENT,REGDATE,ID) values (11,'lkl','jkl','kjl',to_date('20/07/04','RR/MM/DD'),null);
--------------------------------------------------------
--  DDL for Index SYS_C008196
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008196" ON "PLIST" ("PNO")
--------------------------------------------------------
--  DDL for Index SYS_C008195
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008195" ON "QLIST" ("QNO")
--------------------------------------------------------
--  DDL for Index SYS_C007346
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007346" ON "RLIST" ("RNO")
--------------------------------------------------------
--  Constraints for Table PLIST
--------------------------------------------------------

  ALTER TABLE "PLIST" ADD PRIMARY KEY ("PNO")
  USING INDEX  ENABLE
--------------------------------------------------------
--  Constraints for Table QLIST
--------------------------------------------------------

  ALTER TABLE "QLIST" ADD PRIMARY KEY ("QNO")
  USING INDEX  ENABLE
--------------------------------------------------------
--  Constraints for Table RLIST
--------------------------------------------------------

  ALTER TABLE "RLIST" ADD PRIMARY KEY ("RNO")
  USING INDEX  ENABLE
