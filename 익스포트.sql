--------------------------------------------------------
--  파일이 생성됨 - 금요일-7월-24-2020   
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
Insert into CUSTOMER (ID,PWD,NAME,PHONE,ADDRESS) values ('jsp','jsp1111','홍길동','010-1234-5678','부산 부산진구 중앙대로 730');
Insert into CUSTOMER (ID,PWD,NAME,PHONE,ADDRESS) values ('rabbit','asdf56','토끼','010-5032-3940','서울 동대문구 천호대로 405');
Insert into CUSTOMER (ID,PWD,NAME,PHONE,ADDRESS) values ('bear1','study12','곰돌이','010-5032-3940','대전 유성구 유성대로 703');
Insert into CUSTOMER (ID,PWD,NAME,PHONE,ADDRESS) values ('zz','11','11','부산시 부산진구','0100000000');
REM INSERTING into LOGIN
SET DEFINE OFF;
Insert into LOGIN (ID,NAME,PWD) values ('gildong','홍길동','1111');
Insert into LOGIN (ID,NAME,PWD) values ('minwoo','kk','kk');
Insert into LOGIN (ID,NAME,PWD) values ('sohee','hjk','hjkh');
Insert into LOGIN (ID,NAME,PWD) values ('jklj','jlk','klj');
REM INSERTING into PLIST
SET DEFINE OFF;
Insert into PLIST (PNO,PNAME,QUANTITY,REGDATE,ID) values (2,'피망',5,to_date('20/07/24','RR/MM/DD'),'zz');
Insert into PLIST (PNO,PNAME,QUANTITY,REGDATE,ID) values (1,'피망',5,to_date('20/07/24','RR/MM/DD'),'dit');
REM INSERTING into PRODUCT
SET DEFINE OFF;
Insert into PRODUCT (PID,PNAME,PRICE,PIMG,PDATE,INFO) values ('P1','피망',8000,'product-1.jpg',to_date('20/07/15','RR/MM/DD'),'직접 재배한 유기농 피망입니다 무농약이니 안심하고 가족과 함께 드실 수 있습니다.');
Insert into PRODUCT (PID,PNAME,PRICE,PIMG,PDATE,INFO) values ('P2','딸기',16000,'product-2.jpg',to_date('20/07/15','RR/MM/DD'),'싱싱한 딸기입니다. 제철인 만큼 당도가 아주 높습니다');
Insert into PRODUCT (PID,PNAME,PRICE,PIMG,PDATE,INFO) values ('P3','완두콩',5000,'product-3.jpg',to_date('20/07/15','RR/MM/DD'),'단백질이 풍부한 완두콩입니다. 성장기 아이들 식단에 안성 맞춤입니다.');
Insert into PRODUCT (PID,PNAME,PRICE,PIMG,PDATE,INFO) values ('P4','양배추',10000,'product-4.jpg',to_date('20/07/15','RR/MM/DD'),'직접 재배한 양배추입니다 안심하고 드실 수 있습니다.');
REM INSERTING into QLIST
SET DEFINE OFF;
Insert into QLIST (QNO,TITLE,CONTENT,IMG,ID) values (4,'ㅓㅏㅣ','ㅓㅏㅣ','100150453-1.hwp',null);
Insert into QLIST (QNO,TITLE,CONTENT,IMG,ID) values (5,'ㅏㅏ','호','28.hwp',null);
Insert into QLIST (QNO,TITLE,CONTENT,IMG,ID) values (3,'jkljkl','jkl','100150453-1 (1).hwp','zz');
REM INSERTING into RLIST
SET DEFINE OFF;
Insert into RLIST (RNO,TITLE,PNAME,CONTENT,REGDATE,ID) values (19,'jkl','jkl','jlk',to_date('20/07/24','RR/MM/DD'),'jsp');
Insert into RLIST (RNO,TITLE,PNAME,CONTENT,REGDATE,ID) values (2,'딸기가 조아','딸기','딸기가 너무너무 맛있어요 당도 굳굳 또 사먹고 싶다ㅎㅎ',to_date('20/07/02','RR/MM/DD'),'rabbit');
Insert into RLIST (RNO,TITLE,PNAME,CONTENT,REGDATE,ID) values (18,'ㅓㅏㅣ','ㅏㅓㅣㅏ','ㅓㅏㅣjkljlk',to_date('20/07/22','RR/MM/DD'),'dit');
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
