--------------------------------------------------------
--  File created - Thursday-September-17-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence BOOKLOAN_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."BOOKLOAN_ID_SEQ"  MINVALUE 1 MAXVALUE 100000 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence BOOKS_SEQUENCE
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."BOOKS_SEQUENCE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence BOOK_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."BOOK_ID_SEQ"  MINVALUE 1 MAXVALUE 100000 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence DEPARTMENTS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."DEPARTMENTS_SEQ"  MINVALUE 1 MAXVALUE 9990 INCREMENT BY 10 START WITH 280 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence EMPLOYEES_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."EMPLOYEES_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 207 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence ISSUE_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."ISSUE_ID_SEQ"  MINVALUE 1 MAXVALUE 100000 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence LOCATIONS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."LOCATIONS_SEQ"  MINVALUE 1 MAXVALUE 9900 INCREMENT BY 100 START WITH 3300 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence MEMBER_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."MEMBER_ID_SEQ"  MINVALUE 1 MAXVALUE 100000 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REQUEST_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."REQUEST_ID_SEQ"  MINVALUE 1 MAXVALUE 9999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence USER_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."USER_ID_SEQ"  MINVALUE 1 MAXVALUE 100000 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table AUTHOR
--------------------------------------------------------

  CREATE TABLE "HR"."AUTHOR" 
   (	"AUTHORID" NUMBER(*,0), 
	"AUTHORNAME" VARCHAR2(50 BYTE), 
	"AUTHORSURNAME" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table AUTHORBOOK
--------------------------------------------------------

  CREATE TABLE "HR"."AUTHORBOOK" 
   (	"AUTHORBOOKID" NUMBER(*,0), 
	"AUTHORID" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table BOOK
--------------------------------------------------------

  CREATE TABLE "HR"."BOOK" 
   (	"TITLE" VARCHAR2(100 BYTE), 
	"AUTHOR" VARCHAR2(50 BYTE), 
	"PUBLISHED" NUMBER(*,0), 
	"EDITION" VARCHAR2(50 BYTE), 
	"GENREID" NUMBER(*,0), 
	"LOANID" NUMBER(*,0), 
	"DESCRIPTION" VARCHAR2(1500 BYTE), 
	"LOANED" NUMBER(1,0), 
	"PUBLISHERID" NUMBER(*,0), 
	"ISBN" NUMBER(*,0), 
	"LANGUAGEID" NUMBER(*,0), 
	"BOOKID" NUMBER(*,0), 
	"FEEDBACKDESCRIPTION" VARCHAR2(500 BYTE), 
	"RETURNID" NUMBER(*,0), 
	"NO_OF_BOOKS" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table BOOKGENRE
--------------------------------------------------------

  CREATE TABLE "HR"."BOOKGENRE" 
   (	"BOOKGENREID" NUMBER(*,0), 
	"GENREID" NUMBER(*,0), 
	"GENRENAME" VARCHAR2(1 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table BOOKLOAN
--------------------------------------------------------

  CREATE TABLE "HR"."BOOKLOAN" 
   (	"LOANID" NUMBER(*,0), 
	"BOOKID" NUMBER(*,0), 
	"MEMBERID" NUMBER(*,0), 
	"LOANDATE" DATE, 
	"DUEDATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table BOOKREQUEST
--------------------------------------------------------

  CREATE TABLE "HR"."BOOKREQUEST" 
   (	"REQUESTID" NUMBER(*,0), 
	"BOOKTITLE" VARCHAR2(150 BYTE), 
	"BOOKAUTHOR" VARCHAR2(50 BYTE), 
	"USERID" NUMBER(*,0), 
	"MEMBERID" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table BOOKRETURN
--------------------------------------------------------

  CREATE TABLE "HR"."BOOKRETURN" 
   (	"RETURNID" NUMBER(*,0), 
	"BOOKID" NUMBER(*,0), 
	"MEMBERID" NUMBER(*,0), 
	"LOANDATE" DATE, 
	"DUEDATE" DATE, 
	"RETURNDATE" DATE, 
	"LOANID" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table FEEDBACK
--------------------------------------------------------

  CREATE TABLE "HR"."FEEDBACK" 
   (	"FEEDBACKID" NUMBER(*,0), 
	"FEEDBACKDESCRIPTION" VARCHAR2(500 BYTE), 
	"BOOK" VARCHAR2(500 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table GENRE
--------------------------------------------------------

  CREATE TABLE "HR"."GENRE" 
   (	"GENREID" NUMBER(*,0), 
	"GENRENAME" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table LANGUAGE
--------------------------------------------------------

  CREATE TABLE "HR"."LANGUAGE" 
   (	"LANGUAGEID" NUMBER(*,0), 
	"LANGUAGEDESCRIPTION" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MEMBERS
--------------------------------------------------------

  CREATE TABLE "HR"."MEMBERS" 
   (	"MEMBERID" NUMBER(*,0), 
	"NAME" VARCHAR2(50 BYTE), 
	"SURNAME" VARCHAR2(50 BYTE), 
	"PHONENUMBER" NUMBER(*,0), 
	"REGISTERDATE" DATE, 
	"ADDRESS" VARCHAR2(100 BYTE), 
	"EMAIL" VARCHAR2(50 BYTE), 
	"USERNAME" VARCHAR2(20 BYTE), 
	"PASSWORD" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MOST_READED
--------------------------------------------------------

  CREATE TABLE "HR"."MOST_READED" 
   (	"BOOKID" NUMBER, 
	"TITLE" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PUBLISHER
--------------------------------------------------------

  CREATE TABLE "HR"."PUBLISHER" 
   (	"PUBLISHERID" NUMBER(*,0), 
	"PUBLISHERDESCRIPTION" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table RATING
--------------------------------------------------------

  CREATE TABLE "HR"."RATING" 
   (	"RATINGID" NUMBER(*,0), 
	"RATINGNUMBER" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ROLE
--------------------------------------------------------

  CREATE TABLE "HR"."ROLE" 
   (	"ROLEID" NUMBER(*,0), 
	"DESCRIPTION" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table USERR
--------------------------------------------------------

  CREATE TABLE "HR"."USERR" 
   (	"USERID" NUMBER(*,0), 
	"USERNAME" VARCHAR2(20 BYTE), 
	"PASSWORD" VARCHAR2(20 BYTE), 
	"ROLEID" NUMBER(*,0), 
	"NAME" VARCHAR2(50 BYTE), 
	"SURNAME" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table USERREPORT
--------------------------------------------------------

  CREATE TABLE "HR"."USERREPORT" 
   (	"REPORTID" NUMBER(*,0), 
	"USERID" NUMBER(*,0), 
	"STATUS" VARCHAR2(50 BYTE), 
	"DATA" DATE, 
	"TIME" TIMESTAMP (6)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for View EMP_DETAILS_VIEW
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "HR"."EMP_DETAILS_VIEW" ("EMPLOYEE_ID", "JOB_ID", "MANAGER_ID", "DEPARTMENT_ID", "LOCATION_ID", "COUNTRY_ID", "FIRST_NAME", "LAST_NAME", "SALARY", "COMMISSION_PCT", "DEPARTMENT_NAME", "JOB_TITLE", "CITY", "STATE_PROVINCE", "COUNTRY_NAME", "REGION_NAME") AS 
  SELECT
  e.employee_id,
  e.job_id,
  e.manager_id,
  e.department_id,
  d.location_id,
  l.country_id,
  e.first_name,
  e.last_name,
  e.salary,
  e.commission_pct,
  d.department_name,
  j.job_title,
  l.city,
  l.state_province,
  c.country_name,
  r.region_name
FROM
  employees e,
  departments d,
  jobs j,
  locations l,
  countries c,
  regions r
WHERE e.department_id = d.department_id
  AND d.location_id = l.location_id
  AND l.country_id = c.country_id
  AND c.region_id = r.region_id
  AND j.job_id = e.job_id
WITH READ ONLY
;
REM INSERTING into HR.AUTHOR
SET DEFINE OFF;
Insert into HR.AUTHOR (AUTHORID,AUTHORNAME,AUTHORSURNAME) values (1,'Haki','Stermilli');
Insert into HR.AUTHOR (AUTHORID,AUTHORNAME,AUTHORSURNAME) values (2,'Naim','Frasheri');
Insert into HR.AUTHOR (AUTHORID,AUTHORNAME,AUTHORSURNAME) values (3,'Sami','Frasheri');
Insert into HR.AUTHOR (AUTHORID,AUTHORNAME,AUTHORSURNAME) values (4,'Ismail','Kadare');
Insert into HR.AUTHOR (AUTHORID,AUTHORNAME,AUTHORSURNAME) values (5,'Rhonda','Byrne');
Insert into HR.AUTHOR (AUTHORID,AUTHORNAME,AUTHORSURNAME) values (6,'John','Green');
Insert into HR.AUTHOR (AUTHORID,AUTHORNAME,AUTHORSURNAME) values (7,'Daniel','Steel');
REM INSERTING into HR.AUTHORBOOK
SET DEFINE OFF;
Insert into HR.AUTHORBOOK (AUTHORBOOKID,AUTHORID) values (1,1);
REM INSERTING into HR.BOOK
SET DEFINE OFF;
Insert into HR.BOOK (TITLE,AUTHOR,PUBLISHED,EDITION,GENREID,LOANID,DESCRIPTION,LOANED,PUBLISHERID,ISBN,LANGUAGEID,BOOKID,FEEDBACKDESCRIPTION,RETURNID,NO_OF_BOOKS) values ('HARRY POTTER','JK ROWLING',2012,'EDICIONI 1',3,null,'FDSSFAFDSA',1,1,4567,1,3,'feafa',1,79);
Insert into HR.BOOK (TITLE,AUTHOR,PUBLISHED,EDITION,GENREID,LOANID,DESCRIPTION,LOANED,PUBLISHERID,ISBN,LANGUAGEID,BOOKID,FEEDBACKDESCRIPTION,RETURNID,NO_OF_BOOKS) values ('Sekreti','sdhdj',2015,'Edicioni i 1',2,null,'ahjdksadsadhakj',1,1,1234,1,1,'adkadsda',1,111);
Insert into HR.BOOK (TITLE,AUTHOR,PUBLISHED,EDITION,GENREID,LOANID,DESCRIPTION,LOANED,PUBLISHERID,ISBN,LANGUAGEID,BOOKID,FEEDBACKDESCRIPTION,RETURNID,NO_OF_BOOKS) values ('Sikur te isha djale','Haki Kermilli',2006,'Edicioni 1',1,null,'hdksajdhsakj',1,2,4321,2,2,'fjklsdfds',1,155);
REM INSERTING into HR.BOOKGENRE
SET DEFINE OFF;
Insert into HR.BOOKGENRE (BOOKGENREID,GENREID,GENRENAME) values (1,1,null);
Insert into HR.BOOKGENRE (BOOKGENREID,GENREID,GENRENAME) values (2,2,null);
Insert into HR.BOOKGENRE (BOOKGENREID,GENREID,GENRENAME) values (3,3,null);
REM INSERTING into HR.BOOKLOAN
SET DEFINE OFF;
Insert into HR.BOOKLOAN (LOANID,BOOKID,MEMBERID,LOANDATE,DUEDATE) values (1,11,1,to_date('13-JUN-20','DD-MON-RR'),to_date('23-JUN-20','DD-MON-RR'));
Insert into HR.BOOKLOAN (LOANID,BOOKID,MEMBERID,LOANDATE,DUEDATE) values (2,10,1,to_date('10-SEP-20','DD-MON-RR'),to_date('24-SEP-20','DD-MON-RR'));
Insert into HR.BOOKLOAN (LOANID,BOOKID,MEMBERID,LOANDATE,DUEDATE) values (3,9,1,to_date('01-SEP-20','DD-MON-RR'),to_date('15-SEP-20','DD-MON-RR'));
Insert into HR.BOOKLOAN (LOANID,BOOKID,MEMBERID,LOANDATE,DUEDATE) values (4,8,1,to_date('10-SEP-20','DD-MON-RR'),to_date('24-SEP-20','DD-MON-RR'));
REM INSERTING into HR.BOOKREQUEST
SET DEFINE OFF;
Insert into HR.BOOKREQUEST (REQUESTID,BOOKTITLE,BOOKAUTHOR,USERID,MEMBERID) values (1,'HARRY POTTER','JK ROWLING',1,1);
REM INSERTING into HR.BOOKRETURN
SET DEFINE OFF;
Insert into HR.BOOKRETURN (RETURNID,BOOKID,MEMBERID,LOANDATE,DUEDATE,RETURNDATE,LOANID) values (1,1,2,to_date('12-JUL-20','DD-MON-RR'),to_date('18-JUL-20','DD-MON-RR'),to_date('18-JUL-20','DD-MON-RR'),1);
REM INSERTING into HR.FEEDBACK
SET DEFINE OFF;
Insert into HR.FEEDBACK (FEEDBACKID,FEEDBACKDESCRIPTION,BOOK) values (1,'THE BEST BOOK EVER','1');
REM INSERTING into HR.GENRE
SET DEFINE OFF;
Insert into HR.GENRE (GENREID,GENRENAME) values (1,'Romance');
Insert into HR.GENRE (GENREID,GENRENAME) values (2,'Thriller');
Insert into HR.GENRE (GENREID,GENRENAME) values (3,'Action');
REM INSERTING into HR.LANGUAGE
SET DEFINE OFF;
Insert into HR.LANGUAGE (LANGUAGEID,LANGUAGEDESCRIPTION) values (1,'Albanian');
Insert into HR.LANGUAGE (LANGUAGEID,LANGUAGEDESCRIPTION) values (2,'English');
Insert into HR.LANGUAGE (LANGUAGEID,LANGUAGEDESCRIPTION) values (3,'French');
REM INSERTING into HR.MEMBERS
SET DEFINE OFF;
Insert into HR.MEMBERS (MEMBERID,NAME,SURNAME,PHONENUMBER,REGISTERDATE,ADDRESS,EMAIL,USERNAME,PASSWORD) values (1,'user','useru',12389,to_date('13-MAY-20','DD-MON-RR'),'hfdskj','hadsaj','asd','asd');
Insert into HR.MEMBERS (MEMBERID,NAME,SURNAME,PHONENUMBER,REGISTERDATE,ADDRESS,EMAIL,USERNAME,PASSWORD) values (2,'asdhkj','fhkjsha',4563,to_date('13-MAY-20','DD-MON-RR'),'gdssdf','dfsj','sdf','sdf');
REM INSERTING into HR.MOST_READED
SET DEFINE OFF;
REM INSERTING into HR.PUBLISHER
SET DEFINE OFF;
Insert into HR.PUBLISHER (PUBLISHERID,PUBLISHERDESCRIPTION) values (1,'Dukagjini');
Insert into HR.PUBLISHER (PUBLISHERID,PUBLISHERDESCRIPTION) values (2,'Buzuku');
REM INSERTING into HR.RATING
SET DEFINE OFF;
Insert into HR.RATING (RATINGID,RATINGNUMBER) values (1,5);
REM INSERTING into HR.ROLE
SET DEFINE OFF;
Insert into HR.ROLE (ROLEID,DESCRIPTION) values (1,'Admin');
Insert into HR.ROLE (ROLEID,DESCRIPTION) values (2,'Manager');
Insert into HR.ROLE (ROLEID,DESCRIPTION) values (3,'Member');
Insert into HR.ROLE (ROLEID,DESCRIPTION) values (4,'System Admin');
REM INSERTING into HR.USERR
SET DEFINE OFF;
Insert into HR.USERR (USERID,USERNAME,PASSWORD,ROLEID,NAME,SURNAME) values (1,'ADMIN','admin',1,'filan','fisteku');
REM INSERTING into HR.USERREPORT
SET DEFINE OFF;
REM INSERTING into HR.EMP_DETAILS_VIEW
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index AUTHORBOOKID
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."AUTHORBOOKID" ON "HR"."AUTHORBOOK" ("AUTHORBOOKID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index AUTHORID
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."AUTHORID" ON "HR"."AUTHOR" ("AUTHORID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index BOOKGENREID
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."BOOKGENREID" ON "HR"."BOOKGENRE" ("BOOKGENREID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index BOOKID
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."BOOKID" ON "HR"."BOOK" ("BOOKID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index FEEDBACKID
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."FEEDBACKID" ON "HR"."FEEDBACK" ("FEEDBACKID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index GENREID
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."GENREID" ON "HR"."GENRE" ("GENREID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index LANGUAGEID
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."LANGUAGEID" ON "HR"."LANGUAGE" ("LANGUAGEID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index LOANID
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."LOANID" ON "HR"."BOOKLOAN" ("LOANID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PUBLISHERID
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."PUBLISHERID" ON "HR"."PUBLISHER" ("PUBLISHERID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index RATINGID
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."RATINGID" ON "HR"."RATING" ("RATINGID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index REQUESTID
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."REQUESTID" ON "HR"."BOOKREQUEST" ("REQUESTID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index RETURNID
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."RETURNID" ON "HR"."BOOKRETURN" ("RETURNID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ROLEID
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."ROLEID" ON "HR"."ROLE" ("ROLEID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Trigger ADDMEMB_TRIG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "HR"."ADDMEMB_TRIG" 
  after insert
  on MEMBERS
  for each row

  begin

  dbms_output.put_line('Klienti u shtua me sukses');

end;
/
ALTER TRIGGER "HR"."ADDMEMB_TRIG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger ADD_BOOKS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "HR"."ADD_BOOKS" 
AFTER
INSERT ON BOOK
FOR EACH ROW
DECLARE
v_title VARCHAR2 (100) := &v_title;
v_author VARCHAR2 (50) := &v_author;
v_published NUMBER := &v_published;
v_edition VARCHAR2 (100) := &v_edition;
v_genreid NUMBER := &v_genreid;
v_loanid NUMBER := &v_loanid;
v_description VARCHAR2 (500) := &v_description;
v_loaned NUMBER := &v_loaned;
v_publisherid NUMBER := &v_publisherid;
v_isbn NUMBER := &v_isbn;
v_languageid NUMBER := &v_bookid;
v_feedbackdescription VARCHAR2 (100) := &v_feedbackdescription;
v_returnid NUMBER := &v_returnid;
v_numberbooks NUMBER := &v_numberbooks;

BEGIN
INSERT INTO BOOK (TITLE, AUTHOR, PUBLISHED, EDITION, GENREID, LOANID, DESCRIPTION, LOANED, PUBLISHERID, ISBN, LANGUAGEID, BOOKID, FEEDBACKDESCRIPTION, RETURNID, NO_OF_BOOKS  )
VALUES (v_title, v_author, v_published, v_edition, v_genreid, v_loanid, v_description, v_loaned, v_publisherid, v_isbn, v_bookid, v_feedbackdescription, v_returnid, v_numberbooks);
END add_books;
/
ALTER TRIGGER "HR"."ADD_BOOKS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger BOOKS_ON_INSERT
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "HR"."BOOKS_ON_INSERT" 
  BEFORE INSERT ON BOOK
  FOR EACH ROW
BEGIN
  SELECT books_sequence.nextval
  INTO :new.bookid
  FROM dual;
END;
/
ALTER TRIGGER "HR"."BOOKS_ON_INSERT" ENABLE;
--------------------------------------------------------
--  DDL for Trigger BOOK_TRIG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "HR"."BOOK_TRIG" 
after insert
on BOOK
for each row

begin

	dbms_output.put_line('Te dhenat u Shtuan!');
end;
/
ALTER TRIGGER "HR"."BOOK_TRIG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger DELMEMB_TRIG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "HR"."DELMEMB_TRIG" 
after delete
on MEMBERS
for each row

begin

	dbms_output.put_line('Te Dhenat U Fshin!');

end;
/
ALTER TRIGGER "HR"."DELMEMB_TRIG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger FSHIJBOOK_TRIG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "HR"."FSHIJBOOK_TRIG" 
after delete
on BOOK
for each row

begin

	dbms_output.put_line('Te Dhenat U Fshin!');

end;
/
ALTER TRIGGER "HR"."FSHIJBOOK_TRIG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger LOAN_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "HR"."LOAN_TRG" 
BEFORE INSERT ON BOOKLOAN
FOR EACH ROW
DECLARE
LOANID NUMBER;
BOOKID NUMBER;
MEMBERID NUMBER;
BEGIN
IF :NEW.LOANID IS NULL THEN
      SELECT BOOKLOAN_ID_SEQ.NEXTVAL into :NEW.LOANID from dual;
END IF;
--IF :NEW.BOOKID IS NULL THEN
--SELECT ID INTO BOOKID FROM BOOKS WHERE BOOKID = :NEW.LOANID;
--SELECT LOANID INTO :NEW.MEMBERID FROM DUAL;
--END IF;
--IF :NEW.MEMBERID IS NULL THEN
--SELECT MEMBERS INTO BOOKID FROM USERS WHERE USERID = :NEW.LOANID;
--SELECT BOOKID INTO :NEW.MEMBERID FROM DUAL;
--END IF;
END;
/
ALTER TRIGGER "HR"."LOAN_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger LOGOFF_TRIG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "HR"."LOGOFF_TRIG" 
BEFORE LOGOFF ON SCHEMA
BEGIN
INSERT INTO
userreport(userid, data, status)
VALUES(USER, SYSDATE, 'Logging off');
END;
/
ALTER TRIGGER "HR"."LOGOFF_TRIG" ENABLE;
BEGIN 
  DBMS_DDL.SET_TRIGGER_FIRING_PROPERTY('"HR"','"LOGOFF_TRIG"',FALSE) ; 
END;

/
--------------------------------------------------------
--  DDL for Trigger LOGON_TRIG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "HR"."LOGON_TRIG" 
AFTER LOGON ON SCHEMA
BEGIN
INSERT INTO
userreport(userid, data, status)
VALUES(USER, SYSDATE, 'Logging on');
END;
/
ALTER TRIGGER "HR"."LOGON_TRIG" ENABLE;
BEGIN 
  DBMS_DDL.SET_TRIGGER_FIRING_PROPERTY('"HR"','"LOGON_TRIG"',FALSE) ; 
END;

/
--------------------------------------------------------
--  DDL for Trigger MEMBERS_NAME_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "HR"."MEMBERS_NAME_TRG" 
AFTER 
UPDATE OR DELETE OR INSERT
ON MEMBERS
FOR EACH ROW 
DECLARE
m_name VARCHAR(50);
BEGIN
m_name := CASE
WHEN UPDATING THEN 'UPDATE'
WHEN DELETING THEN 'DELETE'
WHEN INSERTING THEN 'INSERT'
END;

INSERT INTO MEMBERS (MEMBERID, NAME, SURNAME, PHONENUMBER, REGISTERDATE, ADDRESS, EMAIL, USERNAME, PASSWORD)
VALUES(1, 'diella', 'Bytyci', 123, sysdate, 'asdjkdsa', 'ddbbcom', 'diellza', 'asdd');
END;
/
ALTER TRIGGER "HR"."MEMBERS_NAME_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MEMBERS_PHONE_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "HR"."MEMBERS_PHONE_TRG" 
AFTER 
UPDATE OR DELETE OR INSERT
ON MEMBERS
FOR EACH ROW 
DECLARE
m_phone INT;
BEGIN
m_phone := CASE
WHEN UPDATING THEN 'UPDATE'
WHEN DELETING THEN 'DELETE'
WHEN INSERTING THEN 'INSERT'
END;

INSERT INTO MEMBERS (MEMBERID, NAME, SURNAME, PHONENUMBER, REGISTERDATE, ADDRESS, EMAIL, USERNAME, PASSWORD)
VALUES(11, 'abc', 'Bytyci', m_phone, NULL, 'asdjkdsa', 'ddbbcom', 'diellza', 'asdd');
END;
/
ALTER TRIGGER "HR"."MEMBERS_PHONE_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger UPDBOOK_TRIG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "HR"."UPDBOOK_TRIG" 
  after update
  on BOOK
  for each row

  BEGIN

  dbms_output.put_line('Te Dhenat u perditesuan');

end;
/
ALTER TRIGGER "HR"."UPDBOOK_TRIG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger UPDMEMB_TRIG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "HR"."UPDMEMB_TRIG" 
  after update
  on MEMBERS
  for each row

  BEGIN

  dbms_output.put_line('Te Dhenat u perditesuan');

end;
/
ALTER TRIGGER "HR"."UPDMEMB_TRIG" ENABLE;
--------------------------------------------------------
--  DDL for Procedure ADD_BOOK
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "HR"."ADD_BOOK" 
  (  p_title          book.title%TYPE
   , p_author      book.author%type
   , p_published        book.published%type
   , p_editon          book.edition%type
   , p_genreid   book.genreid%type
   , p_loanid      book.loanid%type
   , p_description  book.description%type
   , p_loaned   book.loaned%type
   , p_publisherid     book.publisherid%type
   , p_isbn            book.isbn%type
   , p_languageid      book.languageid%type
   , p_bookid      book.bookid%type
   , p_returnid        book.returnid%type
   , p_noofbooks      book.no_of_books%type
   )
IS
BEGIN
  INSERT INTO book (title, author, published, editon, genreid, loanid, loaned, publisherid, isbn, languageid, bookid,  returnid, no_of_books)
    VALUES(p_title, p_author, p_published, p_edition, p_genreid, p_loanid, p_loaned, p_publisherid, p_isbn, p_languageid, p_bookid, p_returnid, p_noofbooks);
END add_book;

/
--------------------------------------------------------
--  DDL for Procedure ADD_JOB_HISTORY
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "HR"."ADD_JOB_HISTORY" 
  (  p_emp_id          job_history.employee_id%type
   , p_start_date      job_history.start_date%type
   , p_end_date        job_history.end_date%type
   , p_job_id          job_history.job_id%type
   , p_department_id   job_history.department_id%type
   )
IS
BEGIN
  INSERT INTO job_history (employee_id, start_date, end_date,
                           job_id, department_id)
    VALUES(p_emp_id, p_start_date, p_end_date, p_job_id, p_department_id);
END add_job_history;

/
--------------------------------------------------------
--  DDL for Procedure ADD_MEMBERS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "HR"."ADD_MEMBERS" (member_id IN NUMBER)
IS
  rowMembers  MEMBERS%ROWTYPE;
BEGIN

  SELECT *
    INTO rowMembers
    FROM MEMBERS
    WHERE MEMBERID = member_id;

  RAISE_APPLICATION_ERROR(-20001, 'Customer ID does not exist. Choose an existing Customer ID in order to 
     register an extra account under an existing customer.');
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    INSERT INTO MEMBERS(memberid, registerdate)
       VALUES(MEMBER_ID_SEQ.NEXTVAL,  SYSDATE);
END ADD_MEMBERS;

/
--------------------------------------------------------
--  DDL for Procedure FIRE_USERR
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "HR"."FIRE_USERR" (s_id NUMBER)
IS
BEGIN
DELETE FROM userr
WHERE
USERID = s_id;
END fire_userr;

/
--------------------------------------------------------
--  DDL for Procedure GENRE_CHECK
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "HR"."GENRE_CHECK" (genre_id in number)
DECLARE IS cursor curr IS 
select p.* 
from book b
where b.genreid = genre_id
r_book curr%rowtype;
BEGIN
open curr;
loop
fetch curr into r_book;
exit when curr%notfound;
dbms_output.put_line('Genreid:'||r_book.genreid);
dbms_output.put_line('isbn:'||r_book.isbn);
dbms_output.put('Author:'||r_book.f_author);
dbms_output.put_line(r_book.l_name);
dbms_output.put_line('Title:'||r_book.title);
dbms_output.put_line('Edition:'||r_book.edition);
end loop;
close curr;
END;

/
--------------------------------------------------------
--  DDL for Procedure LOANB
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "HR"."LOANB" (BOOKID IN OUT INTEGER, MEMBERID in INTEGER) AS 

book_rec BOOK%rowtype;
memb_rec MEMBERS%rowtype;
l_numberbook BOOK%ROWTYPE;
l_title BOOK%ROWTYPE;



BEGIN
select * into memb_rec from MEMBERS where MEMBERID=MEMBERID;
if memb_rec.MEMBERID=0 then
dbms_output.put_line('No member founded');

else

DECLARE cursor c1 IS select * from BOOK where title=title and loaned=0;
 i int := 0;
BEGIN
FOR e_rec IN c1 LOOP
i:= i+1;
END LOOP;
END;
--select * into l_numberbook from BOOK where TITLE=TITLE and LOANED=0;
--if l_numberbook.count = 0 then
--dbms_output.put_line('***************');
--dbms_output.put_line('book not available');
--dbms_output.put_line('***************');
--else
SELECT bookid INTO bookid FROM BOOK WHERE TITLE=TITLE and loaned=1;
INSERT into BOOKLOAN (LOANID, BOOKID, MEMBERID, LOANDATE, DUEDATE)
VALUES(1, 1, 1, sysdate, sysdate+15);
update BOOK set loaned='0' where bookid=bookid;

end if;
--end if;
exception
when no_data_found then

dbms_output.put_line('u are not a user');
END LOANB;

/
--------------------------------------------------------
--  DDL for Procedure LOANBOOK
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "HR"."LOANBOOK" (
    member_id MEMBERS.memberid%TYPE,
    b_isbn BOOK.isbn%TYPE,
    book_min_copy in BOOK.NO_OF_BOOKS%TYPE
) IS 
    v_is_member NUMBER := MEMBERS(member_id);
    num_already_loaned NUMBER := BOOKLOAN(member_id);
    book_min_copy BOOK.NO_OF_BOOKS%TYPE;

BEGIN 
    IF v_is_member = 0 THEN -- Not a valid membership
        dbms_output.put_line('You Are not a member!');
    ELSIF v_is_member = 1 THEN 
        IF num_already_loaned >= 3 THEN -- Can't rent another book
            dbms_output.put_line('You already have 3 rented books, return one of those first.');
        ELSE -- Valid member and can rent book 

            IF NO_OF_BOOKS < 1 THEN  -- Exists

                UPDATE BOOK
                SET loaned = 1
                WHERE isbn = b_isbn 
                AND NO_OF_BOOKS = book_min_copy;
                INSERT INTO BOOKLOAN(loanid, bookid, memberid, loandate, duedate)
                    VALUES(loanid, member_id, b_isbn, SYSDATE, SYSDATE + 15);
                COMMIT;    
                dbms_output.put_line('The book ' || b_isbn || ' is now rented by ' || member_id);
            ELSE
                dbms_output.put_line('No copies of that book currently available, we will reserve it for you!');
                BOOKREQUEST(member_id, b_isbn);
            END IF;
        END IF;
    END IF;    
EXCEPTION 
    WHEN OTHERS THEN 
     dr_exception_handler(SQLCODE, 'bookloan');    
END loanbook;

/
--------------------------------------------------------
--  DDL for Procedure LOGINMEMBER
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "HR"."LOGINMEMBER" (user IN VARCHAR2, pass IN VARCHAR2)
IS
  v_pass members.password%TYPE;
BEGIN
  SELECT password 
  INTO v_pass
  FROM members
  WHERE username LIKE user;

  IF v_pass LIKE pass THEN
    DBMS_OUTPUT.PUT_LINE('User ' || user || ' logged in succesful');
  ELSE
    DBMS_OUTPUT.PUT_LINE('Password incorrect');
  END IF;

  EXCEPTION WHEN no_data_found THEN 
  DBMS_OUTPUT.PUT_LINE('User incorrect');
END;

--SET SERVEROUTPUT ON;
--DECLARE
--  user members.username%TYPE;
--  pass members.password%TYPE;
--BEGIN
--  user := &user;
--  pass := &password;
--  login_library(user,pass);
--END;

/
--------------------------------------------------------
--  DDL for Procedure PRINTO_KLIENT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "HR"."PRINTO_KLIENT" ( members_id IN NUMBER )
IS
  m_member MEMBERS%ROWTYPE;
BEGIN
  SELECT *
  INTO m_member
  FROM MEMBERS
  WHERE members_id = MEMBERID;

  dbms_output.put_line(  m_member.MEMBERID || ' ' ||
  m_member.NAME ||' '|| m_member.SURNAME|| ' '||m_member.PHONENUMBER||''||m_member.REGISTERDATE|| '<' ||
  m_member.ADDRESS ||'>' ||m_member.EMAIL||''||m_member.USERNAME||''||m_member.PASSWORD );
EXCEPTION
   WHEN OTHERS THEN
      dbms_output.put_line( SQLERRM );

END PRINTO_KLIENT;

/
--------------------------------------------------------
--  DDL for Procedure PROC_BOOK
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "HR"."PROC_BOOK" (BOOK_ID IN NUMBER)
IS
b_book BOOK%ROWTYPE;
BEGIN
 SELECT *
 INTO b_book
 FROM BOOK
 WHERE BOOK_ID = BOOKID;

dbms_output.put_line( b_book.title || ' - ' || b_book.author || ' - ' || b_book.published || ' - ' || b_book.edition || ' - ' || b_book.genreid || ' - ' ||b_book.loanid || ' - ' ||b_book.description || ' - ' ||b_book.loaned || ' - ' ||b_book.publisherid || ' - ' || b_book.isbn || ' - ' ||b_book.languageid || ' - ' ||b_book.bookid || ' - ' ||b_book.feedbackdescription || ' - ' || b_book.returnid || ' - ' ||b_book.no_of_books);

EXCEPTION
 WHEN OTHERS THEN 
 dbms_output.put_line ( SQLERRM);
 
END PROC_BOOK;

/
--------------------------------------------------------
--  DDL for Procedure PROC_LOAN
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "HR"."PROC_LOAN" (LOAN_ID IN NUMBER)
IS
l_loan BOOKLOAN%ROWTYPE;
BEGIN
SELECT * INTO l_loan FROM BOOKLOAN WHERE LOAN_ID = LOANID;

dbms_output.put_line ('ID:' || l_loan.loanid || '  Book ID:' ||l_loan.bookid || '  Member ID:' || l_loan.memberid || '  Loan Date:' || l_loan.loandate || '  Due Date:' || l_loan.duedate);

EXCEPTION
 WHEN OTHERS THEN 
 dbms_output.put_line ( SQLERRM); 
 
 
 
END PROC_LOAN;

/
--------------------------------------------------------
--  DDL for Procedure RENTBOOK
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "HR"."RENTBOOK" (
    f_member_id bookloan.memberid%TYPE,
    f_isbn book.isbn%TYPE,
    book_copy book.no_of_books%TYPE
) IS 
    v_is_member NUMBER := is_active_member(f_member_id);
    v_num_rented NUMBER := num_rented_books(f_member_id, f_isbn);
  

BEGIN 
    IF v_is_member = 0 THEN -- Nuk eshte i regjistrum 
        dbms_output.put_line('You are not a member!');
    ELSIF v_is_member = 1 THEN 
        IF v_num_rented >= 3 THEN -- smunet me marr liber
            dbms_output.put_line('You already have 3 rented books, return one of those first.');
            ELSE -- eshte member aktiv edhe munet me loan liber 
          --      SELECT book_copy
          --      INTO  f_isbn
          --      FROM book
          --      WHERE isbn = f_isbn;
          
INSERT into BOOKLOAN (LOANID, BOOKID, MEMBERID, LOANDATE, DUEDATE)
VALUES(BOOKLOAN_ID_SEQ.nextval, BOOK_ID_SEQ.nextval , MEMBER_ID_SEQ.nextval, sysdate, sysdate+15);
update BOOK set loaned='0' where bookid=bookid;
 dbms_output.put_line('The book with ISBN: ' || f_isbn || ' is now loaned by member with ID: ' || f_member_id);
    
    
    
            --    dbms_output.put_line('No copies of that book currently available, we will reserve it for you!');
          --    INSERT INTO  BOOKREQUEST(REQUESTID, MEMBERID, BOOKTITLE)
       --       VALUES (REQUEST_ID_SEQ.nextval, f_member_id, f_isbn);
            END IF;
   --     END IF;
    END IF;       
END rentbook;

/
--------------------------------------------------------
--  DDL for Procedure SECURE_DML
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "HR"."SECURE_DML" 
IS
BEGIN
  IF TO_CHAR (SYSDATE, 'HH24:MI') NOT BETWEEN '08:00' AND '18:00'
        OR TO_CHAR (SYSDATE, 'DY') IN ('SAT', 'SUN') THEN
	RAISE_APPLICATION_ERROR (-20205,
		'You may only make changes during normal office hours');
  END IF;
END secure_dml;

/
--------------------------------------------------------
--  DDL for Procedure SHOWMEMBERS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "HR"."SHOWMEMBERS" (members_id IN NUMBER)
IS
 m_members MEMBERS%ROWTYPE;
 BEGIN
 SELECT *
 INTO m_members
 FROM MEMBERS
 WHERE members_id= MEMBERID;
 dbms_output.put_line(m_members.memberid||' '||m_members.name||' ' ||m_members.surname||' '||m_members.phonenumber);
 EXCEPTION
    WHEN OTHERS THEN
        dbms_output.put_line(SQLERRM);
END ShowMembers;

/
--------------------------------------------------------
--  DDL for Package COMM_PKG
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "HR"."COMM_PKG" 
IS
v_std_comm NUMBER :=0.10;
PROCDEDURA reset_comm (p_new_comm NUMBER);
end comm_pkg;

/
--------------------------------------------------------
--  DDL for Package Body COMM_PKG
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "HR"."COMM_PKG" AS
FUNCTION validate (p_comm number)
RETURN BOOLEAN
IS
v_max_comm employee.commission_pct%type;
begin
select max(commission_pct) INTO v_max_comm from employees;
RETURN (p_comm between 0.0 AND v_max_comm);
end validate;
 procedure reset_comm(p_new_comm NUMBER) IS
 BEGIN
  IF VALIDATE (p_new_comm) then
  v_std_comm :=p_new_comm;
  else
  RAISE_APPLICATION_ERROR(-20210, 'Bad Commision')
  end if;
END reset_comm;
END COMM_PKG;

/
--------------------------------------------------------
--  DDL for Function GET_BOOK
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "HR"."GET_BOOK" (
p_id IN NUMBER
) RETURN NUMBER AS 
v_bookid book.bookid%TYPE:=0;
BEGIN
SELECT bookid into v_bookid from book where bookid = p_id;
RETURN v_bookid;
END get_book;

/
--------------------------------------------------------
--  DDL for Function GET_MEMBUSERNAME
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "HR"."GET_MEMBUSERNAME" 
(
  M_ID IN NUMBER 
) RETURN NUMBER AS 
v_memb members.username%TYPE :=0;
BEGIN
 -- RETURN NULL;
 select username into v_memb
 from members
 where memberid = m_id;
 RETURN v_memb;
END GET_MEMBUSERNAME;

/
--------------------------------------------------------
--  DDL for Function GET_NAME
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "HR"."GET_NAME" 
(
  P_ID IN NUMBER 
) RETURN VARCHAR2 AS 
v_name userr.NAME%TYPE := NULL;
BEGIN
 -- RETURN NULL;
 select NAME into v_name
 from userr
 where userid =p_id;
 RETURN v_name;
END GET_name;

/
--------------------------------------------------------
--  DDL for Function IS_ACTIVE_MEMBER
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "HR"."IS_ACTIVE_MEMBER" (
    f_member_id members.memberid%TYPE
) RETURN NUMBER IS 
    v_register_date members.registerdate%TYPE;
    v_is_active NUMBER(1);
BEGIN 
    SELECT registerdate
    INTO v_register_date
    FROM members 
    WHERE memberid = f_member_id;
    IF SYSDATE <= v_register_date+365 THEN 
         v_is_active := 1;
    ELSE 
         v_is_active := 0;
    END IF;
    RETURN v_is_active;
END is_active_member;

/
--------------------------------------------------------
--  DDL for Function LOG_IN
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "HR"."LOG_IN" (x in varchar2, y in varchar2)
return varchar2
as
  match_count number;
begin
  select count(*)
    into match_count
    from MEMBERS
    where username=x 
    and password=y;
  if match_count = 0 then
    return 'Wrong username or password!';
  elsif match_count = 1 then
    return 'Login successful!';
  else
    return 'Too many matches, this should never happen!';
  end if;
end;

/
--------------------------------------------------------
--  DDL for Function NUM_RENTED_BOOKS
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "HR"."NUM_RENTED_BOOKS" (
    f_member_id MEMBERS.memberid%TYPE,
    f_loan_id BOOKLOAN.loanid%TYPE
) RETURN NUMBER IS 
    v_num_rented NUMBER;
BEGIN 
    SELECT COUNT(f_loan_id) 
    INTO v_num_rented 
    FROM MEMBERS
    WHERE memberid = f_member_id;
    RETURN v_num_rented;
END num_rented_books;

/
--------------------------------------------------------
--  DDL for Function SHFAQ_DUEDATE
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "HR"."SHFAQ_DUEDATE" 
           (f_due_date IN DATE) 
          RETURN DATE
          IS
              f_date DATE;
              CURSOR c1 is
              SELECT duedate 
              FROM bookloan
              WHERE duedate >= f_due_date; 
          BEGIN
              open c1;
              FETCH c1 INTO f_date;
              if c1%NOTFOUND THEN
              f_date :='Data gabim';
              end if;
              close c1;
              RETURN f_date;
          END shfaq_duedate;

/
--------------------------------------------------------
--  DDL for Function SHFAQ_LOANDATE
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "HR"."SHFAQ_LOANDATE" 
           (f_due_date IN DATE) 
          RETURN DATE
          IS
              f_date DATE;
              CURSOR c1 is
              SELECT loandate 
              FROM bookloan
              WHERE loandate >= f_due_date; 
          BEGIN
              open c1;
              FETCH c1 INTO f_date;
              if c1%NOTFOUND THEN
              f_date :='Data gabim';
              end if;
              close c1;
              RETURN f_date;
          END shfaq_loandate;

/
--------------------------------------------------------
--  DDL for Function TOTAL_LOANS
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "HR"."TOTAL_LOANS" 
RETURN number
IS
    total number(2):=0;
BEGIN
    SELECT count(*) 
    INTO total
    from BOOKLOAN;
    RETURN total;
END total_loans;

/
--------------------------------------------------------
--  DDL for Function V_IS_MEMBER
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "HR"."V_IS_MEMBER" (
    f_member_id members.memberid%TYPE
) RETURN NUMBER IS 
    v_member_id members.memberid%TYPE;
    is_member NUMBER(1);
BEGIN 
    SELECT MEMBERID
    INTO v_member_id
    FROM members 
    WHERE memberid = f_member_id;
   IF v_is_member = 0 THEN -- Nuk eshte i regjistrum
        dbms_output.put_line('You Are not a member!');
    ELSE v_is_member := 1 
        dbms_output.put_line('You Are a member!');
    END IF;
    RETURN is_member;
END v_is_member;

/
--------------------------------------------------------
--  Constraints for Table AUTHOR
--------------------------------------------------------

  ALTER TABLE "HR"."AUTHOR" ADD CONSTRAINT "AUTHORID" PRIMARY KEY ("AUTHORID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table AUTHORBOOK
--------------------------------------------------------

  ALTER TABLE "HR"."AUTHORBOOK" ADD CONSTRAINT "AUTHORBOOKID" PRIMARY KEY ("AUTHORBOOKID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "HR"."AUTHORBOOK" MODIFY ("AUTHORBOOKID" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."AUTHORBOOK" MODIFY ("AUTHORID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BOOK
--------------------------------------------------------

  ALTER TABLE "HR"."BOOK" ADD CONSTRAINT "BOOKID" PRIMARY KEY ("BOOKID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "HR"."BOOK" MODIFY ("TITLE" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."BOOK" MODIFY ("AUTHOR" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."BOOK" MODIFY ("PUBLISHED" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."BOOK" MODIFY ("EDITION" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."BOOK" MODIFY ("GENREID" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."BOOK" MODIFY ("ISBN" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."BOOK" MODIFY ("BOOKID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BOOKGENRE
--------------------------------------------------------

  ALTER TABLE "HR"."BOOKGENRE" ADD CONSTRAINT "BOOKGENREID" PRIMARY KEY ("BOOKGENREID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "HR"."BOOKGENRE" MODIFY ("BOOKGENREID" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."BOOKGENRE" MODIFY ("GENREID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BOOKLOAN
--------------------------------------------------------

  ALTER TABLE "HR"."BOOKLOAN" ADD CONSTRAINT "LOANID" PRIMARY KEY ("LOANID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "HR"."BOOKLOAN" MODIFY ("LOANID" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."BOOKLOAN" MODIFY ("BOOKID" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."BOOKLOAN" MODIFY ("MEMBERID" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."BOOKLOAN" MODIFY ("LOANDATE" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."BOOKLOAN" MODIFY ("DUEDATE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BOOKREQUEST
--------------------------------------------------------

  ALTER TABLE "HR"."BOOKREQUEST" ADD CONSTRAINT "REQUESTID" PRIMARY KEY ("REQUESTID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "HR"."BOOKREQUEST" MODIFY ("REQUESTID" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."BOOKREQUEST" MODIFY ("BOOKTITLE" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."BOOKREQUEST" MODIFY ("BOOKAUTHOR" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."BOOKREQUEST" MODIFY ("USERID" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."BOOKREQUEST" MODIFY ("MEMBERID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BOOKRETURN
--------------------------------------------------------

  ALTER TABLE "HR"."BOOKRETURN" ADD CONSTRAINT "RETURNID" PRIMARY KEY ("RETURNID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "HR"."BOOKRETURN" MODIFY ("RETURNID" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."BOOKRETURN" MODIFY ("BOOKID" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."BOOKRETURN" MODIFY ("MEMBERID" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."BOOKRETURN" MODIFY ("LOANDATE" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."BOOKRETURN" MODIFY ("DUEDATE" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."BOOKRETURN" MODIFY ("RETURNDATE" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."BOOKRETURN" MODIFY ("LOANID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FEEDBACK
--------------------------------------------------------

  ALTER TABLE "HR"."FEEDBACK" ADD CONSTRAINT "FEEDBACKID" PRIMARY KEY ("FEEDBACKID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "HR"."FEEDBACK" MODIFY ("FEEDBACKID" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."FEEDBACK" MODIFY ("BOOK" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."FEEDBACK" MODIFY ("FEEDBACKDESCRIPTION" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table GENRE
--------------------------------------------------------

  ALTER TABLE "HR"."GENRE" ADD CONSTRAINT "GENREID" PRIMARY KEY ("GENREID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "HR"."GENRE" MODIFY ("GENREID" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."GENRE" MODIFY ("GENRENAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table LANGUAGE
--------------------------------------------------------

  ALTER TABLE "HR"."LANGUAGE" ADD CONSTRAINT "LANGUAGEID" PRIMARY KEY ("LANGUAGEID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "HR"."LANGUAGE" MODIFY ("LANGUAGEID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MEMBERS
--------------------------------------------------------

  ALTER TABLE "HR"."MEMBERS" MODIFY ("MEMBERID" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."MEMBERS" MODIFY ("NAME" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."MEMBERS" MODIFY ("SURNAME" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."MEMBERS" MODIFY ("REGISTERDATE" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."MEMBERS" MODIFY ("ADDRESS" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."MEMBERS" MODIFY ("USERNAME" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."MEMBERS" MODIFY ("PASSWORD" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PUBLISHER
--------------------------------------------------------

  ALTER TABLE "HR"."PUBLISHER" ADD CONSTRAINT "PUBLISHERID" PRIMARY KEY ("PUBLISHERID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "HR"."PUBLISHER" MODIFY ("PUBLISHERID" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."PUBLISHER" MODIFY ("PUBLISHERDESCRIPTION" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table RATING
--------------------------------------------------------

  ALTER TABLE "HR"."RATING" ADD CONSTRAINT "RATINGID" PRIMARY KEY ("RATINGID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ROLE
--------------------------------------------------------

  ALTER TABLE "HR"."ROLE" ADD CONSTRAINT "ROLEID" PRIMARY KEY ("ROLEID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "HR"."ROLE" MODIFY ("ROLEID" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."ROLE" MODIFY ("DESCRIPTION" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table USERR
--------------------------------------------------------

  ALTER TABLE "HR"."USERR" MODIFY ("USERID" NOT NULL DISABLE);
 
  ALTER TABLE "HR"."USERR" MODIFY ("USERNAME" NOT NULL DISABLE);
 
  ALTER TABLE "HR"."USERR" MODIFY ("PASSWORD" NOT NULL DISABLE);
 
  ALTER TABLE "HR"."USERR" MODIFY ("ROLEID" NOT NULL DISABLE);
 
  ALTER TABLE "HR"."USERR" MODIFY ("NAME" NOT NULL DISABLE);
 
  ALTER TABLE "HR"."USERR" MODIFY ("SURNAME" NOT NULL DISABLE);
--------------------------------------------------------
--  Constraints for Table USERREPORT
--------------------------------------------------------

  ALTER TABLE "HR"."USERREPORT" MODIFY ("REPORTID" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."USERREPORT" MODIFY ("USERID" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."USERREPORT" MODIFY ("STATUS" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."USERREPORT" MODIFY ("DATA" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."USERREPORT" MODIFY ("TIME" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table BOOK
--------------------------------------------------------

  ALTER TABLE "HR"."BOOK" ADD CONSTRAINT "GENREID_FK" FOREIGN KEY ("GENREID")
	  REFERENCES "HR"."GENRE" ("GENREID") ENABLE;
 
  ALTER TABLE "HR"."BOOK" ADD CONSTRAINT "LANGUAGEID_FK" FOREIGN KEY ("LANGUAGEID")
	  REFERENCES "HR"."LANGUAGE" ("LANGUAGEID") ENABLE;
 
  ALTER TABLE "HR"."BOOK" ADD CONSTRAINT "LOANID_FK" FOREIGN KEY ("LOANID")
	  REFERENCES "HR"."BOOKLOAN" ("LOANID") ENABLE;
 
  ALTER TABLE "HR"."BOOK" ADD CONSTRAINT "PUBLISHERID_FK" FOREIGN KEY ("PUBLISHERID")
	  REFERENCES "HR"."PUBLISHER" ("PUBLISHERID") ENABLE;
 
  ALTER TABLE "HR"."BOOK" ADD CONSTRAINT "RETURNID_FK" FOREIGN KEY ("RETURNID")
	  REFERENCES "HR"."BOOKRETURN" ("RETURNID") ENABLE;
