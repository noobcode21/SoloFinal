--DROP TABLE
DROP TABLE "MEMBER" CASCADE CONSTRAINTS;
DROP TABLE "BOARD" CASCADE CONSTRAINTS;
DROP TABLE "BOARD_CATEGORY" CASCADE CONSTRAINTS;
DROP TABLE "PET_INFO" CASCADE CONSTRAINTS;
DROP TABLE "REPLY" CASCADE CONSTRAINTS;
DROP TABLE "NOTICE" CASCADE CONSTRAINTS;
DROP TABLE "BOARD_PHOTO" CASCADE CONSTRAINTS;
DROP TABLE "NOTICE_PHOTO" CASCADE CONSTRAINTS;
DROP TABLE "GOODS" CASCADE CONSTRAINTS;
DROP TABLE "ORDER" CASCADE CONSTRAINTS;
DROP TABLE "PET_INFO_PHOTO" CASCADE CONSTRAINTS;
DROP TABLE "QNA" CASCADE CONSTRAINTS;
DROP TABLE "ADMIN" CASCADE CONSTRAINTS;
DROP TABLE "MILEAGE_HISTORY" CASCADE CONSTRAINTS;
DROP TABLE "ORDER_STATUS" CASCADE CONSTRAINTS;

--DROP SEQ
DROP SEQUENCE SEQ_MEMBER_NO;
DROP SEQUENCE SEQ_BOARD_NO;
DROP SEQUENCE SEQ_BOARD_CATEGORY_NO;
DROP SEQUENCE SEQ_PET_INFO_NO;
DROP SEQUENCE SEQ_REPLY_NO;
DROP SEQUENCE SEQ_NOTICE_NO;
DROP SEQUENCE SEQ_BOARD_PIC_NO;
DROP SEQUENCE SEQ_NOTICE_PIC_NO;
DROP SEQUENCE SEQ_GOODS_NO;
DROP SEQUENCE SEQ_ORDER_NO;
DROP SEQUENCE SEQ_QNA_NO;
DROP SEQUENCE SEQ_PET_INFO_PHOTO_NO;
DROP SEQUENCE SEQ_ADMIN_NO;
DROP SEQUENCE SEQ_MILEAGE_HISTORY_NO;
DROP SEQUENCE SEQ_ORDER_STATUS_NO;

--CREATE SEQ
CREATE SEQUENCE SEQ_MEMBER_NO;
CREATE SEQUENCE SEQ_BOARD_NO;
CREATE SEQUENCE SEQ_BOARD_CATEGORY_NO;
CREATE SEQUENCE SEQ_PET_INFO_NO;
CREATE SEQUENCE SEQ_REPLY_NO;
CREATE SEQUENCE SEQ_NOTICE_NO;
CREATE SEQUENCE SEQ_BOARD_PIC_NO;
CREATE SEQUENCE SEQ_NOTICE_PIC_NO;
CREATE SEQUENCE SEQ_GOODS_NO;
CREATE SEQUENCE SEQ_ORDER_NO;
CREATE SEQUENCE SEQ_QNA_NO;
CREATE SEQUENCE SEQ_PET_INFO_PHOTO_NO;
CREATE SEQUENCE SEQ_ADMIN_NO;
CREATE SEQUENCE SEQ_MILEAGE_HISTORY_NO;
CREATE SEQUENCE SEQ_ORDER_STATUS_NO;

--CREATE TABLE
CREATE TABLE "MEMBER" (
	"MEMBER_NO"	NUMBER		NOT NULL,
	"MEMBER_ID"	VARCHAR2(200)		NOT NULL    UNIQUE, 
	"MEMBER_PWD"	VARCHAR2(200)		NOT NULL,
	"MEMBER_NICK"	VARCHAR2(200)		NOT NULL    UNIQUE,
	"STATUS"	CHAR(1)	DEFAULT 'O'	NULL,
	"JOIN_DATE"	TIMESTAMP	DEFAULT SYSDATE	NULL,
	"EMAIL"	VARCHAR2(200)		NULL,
	"MODIFY_DATE"	TIMESTAMP	DEFAULT SYSDATE	NULL,
	"PROFILE"	VARCHAR2(1000)		NULL
);

CREATE TABLE "BOARD" (
	"BOARD_NO"	NUMBER		NOT NULL,
	"MEMBER_NO"	NUMBER		NOT NULL,
	"BOARD_CATEGORY_NO"	NUMBER		NOT NULL,
	"BOARD_TITLE"	VARCHAR2(500)		NOT NULL,
	"BOARD_CONTENT"	VARCHAR2(2500)		NOT NULL,
	"ENROLL_DATE"	TIMESTAMP	DEFAULT SYSDATE	NOT NULL,
	"MODIFY_DATE"	TIMESTAMP	DEFAULT SYSDATE	NOT NULL,
	"STATUS"	CHAR(1)	DEFAULT 'O'	NOT NULL,
	"HIT"	NUMBER	DEFAULT 0	NOT NULL
);

CREATE TABLE "BOARD_CATEGORY" (
	"BOARD_CATEGORY_NO"	NUMBER		NOT NULL,
	"BOARD_CATEGORY_NAME"	VARCHAR2(200)		NOT NULL
);

CREATE TABLE "PET_INFO" (
	"PET_INFO_NO"	NUMBER		NOT NULL,
	"PET_INFO_TITLE"	VARCHAR2(200)		NOT NULL,
	"PET_INFO_CONTENT"	VARCHAR2(2500)		NOT NULL,
	"PET_INFO_SUBCONTENT"	VARCHAR2(2500)		NULL,
	"PET_INFO_URL"	VARCHAR2(1000)		NULL
);

CREATE TABLE "REPLY" (
	"REPLY_NO"	NUMBER		NOT NULL,
	"MEMBER_NO"	NUMBER		NOT NULL,
	"BOARD_NO"	NUMBER		NOT NULL,
	"REPLY_CONTENT"	VARCHAR2(1000)		NOT NULL,
	"ENROLL_DATE"	TIMESTAMP	DEFAULT SYSDATE	NOT NULL,
	"MODIFY_DATE"	TIMESTAMP	DEFAULT SYSDATE	NOT NULL,
	"STATUS"	VARCHAR2(1)	DEFAULT 'O'	NOT NULL,
	"REPLY_PIC"	VARCHAR2(1000)		NULL
);

CREATE TABLE "NOTICE" (
	"NOTICE_NO"	NUMBER		NOT NULL,
	"ADMIN_NO"	NUMBER		NOT NULL,
	"NOTICE_TITLE"	VARCHAR2(500)		NOT NULL,
	"NOTICE_CONTENT"	VARCHAR2(2500)		NOT NULL,
	"ENROLL_DATE"	TIMESTAMP	DEFAULT SYSDATE	NOT NULL,
	"MODIFY_DATE"	TIMESTAMP	DEFAULT SYSDATE	NOT NULL,
	"STATUS"	CHAR(1)	DEFAULT 'O'	NOT NULL,
	"HIT"	NUMBER	DEFAULT 0	NOT NULL
);

CREATE TABLE "BOARD_PHOTO" (
	"BOARD_PIC_NO"	NUMBER		NOT NULL,
	"BOARD_NO"	NUMBER		NOT NULL,
	"BOARD_PIC"	VARCHAR2(1000)		NOT NULL
);

CREATE TABLE "NOTICE_PHOTO" (
	"NOTICE_PIC_NO"	NUMBER		NOT NULL,
	"NOTICE_NO"	NUMBER		NOT NULL,
	"NOTICE_PIC"	VARCHAR2(1000)		NOT NULL
);

CREATE TABLE "GOODS" (
	"GOODS_NO"	NUMBER		NOT NULL,
	"GOODS_NAME"	VARCHAR2(100)		NOT NULL,
	"PRICE"	NUMBER		NOT NULL,
	"LEFT_GOODS"	NUMBER	DEFAULT 0	NOT NULL,
	"STATUS"	CHAR(1)	DEFAULT 'N'	NOT NULL,
	"REGIST_DATE"	TIMESTAMP	DEFAULT SYSDATE	NOT NULL,
	"GOODS_PHOTO"	VARCHAR2(1000)		NULL
);

CREATE TABLE "ORDER" (
	"ORDER_NO"	NUMBER		NOT NULL,
	"MEMBER_NO"	NUMBER		NOT NULL,
	"GOODS_NO"	NUMBER		NOT NULL,
	"ORDER_STATUS_NO"	NUMBER		NOT NULL,
	"ORDER_DATE"	TIMESTAMP	DEFAULT SYSDATE	NULL,
	"ADRESS"	VARCHAR(500)		NOT NULL,
	"ORDER_PRISE"	NUMBER		NOT NULL
);

CREATE TABLE "QNA" (
	"QNA_NO"	NUMBER		NOT NULL,
	"MEMBER_NO"	NUMBER		NOT NULL,
	"ADMIN_NO"	NUMBER		NOT NULL,
	"QNA_TITLE"	VARCHAR2(500)		NOT NULL,
	"QNA_CONTENT"	VARCHAR2(2000)		NOT NULL,
	"QNA_ANSWER"	VARCHAR2(2000)		NULL
);

CREATE TABLE "PET_INFO_PHOTO" (
	"PET_INFO_PHOTO_NO"	NUMBER		NOT NULL,
	"PET_INFO_NO"	NUMBER		NOT NULL,
	"PET_INFO_PHOTOS"	VARCHAR2(1000)		NOT NULL
);

CREATE TABLE "ADMIN" (
	"ADMIN_NO"	NUMBER		NOT NULL,
	"ADMIN_ID"	VARCHAR2(200)		NOT NULL,
	"ADMIN_PWD"	VARCHAR2(200)		NOT NULL,
	"ADMIN_NICK"	VARCHAR2(200)		NOT NULL,
	"STATUS"	CHAR(1)	DEFAULT 'O'	NULL,
	"JOIN_DATE"	TIMESTAMP	DEFAULT SYSDATE	NULL,
	"EMAIL"	VARCHAR2(200)		NULL,
	"PROFILE"	VARCHAR2(1000)		NULL,
	"MODIFY_DATE"	TIMESTAMP	DEFAULT SYSDATE	NULL
);

CREATE TABLE "MILEAGE_HISTORY" (
	"MILEAGE_HISTORY_NO"	NUMBER		NOT NULL,
	"MEMBER_NO"	NUMBER		NOT NULL,
	"TOTAL_MILEAGE"	NUMBER	DEFAULT 0	NOT NULL,
	"MILEAGE_PLUS_HISTORY"	NUMBER	DEFAULT 0	NOT NULL,
	"MILEAGE_MINUS_HISTORY"	NUMBER	DEFAULT 0	NOT NULL,
	"MILEAGE_HISTORY_CONTENT"	VARCHAR2(100)		NOT NULL
);

CREATE TABLE "ORDER_STATUS" (
	"ORDER_STATUS_NO"	NUMBER		NOT NULL,
	"ORDER_STATUS_CONTENT"	VARCHAR2(100)		NOT NULL
);

--ALTER TABLE WITH KEY
ALTER TABLE "MEMBER" ADD CONSTRAINT "PK_MEMBER" PRIMARY KEY (
	"MEMBER_NO"
);

ALTER TABLE "BOARD" ADD CONSTRAINT "PK_BOARD" PRIMARY KEY (
	"BOARD_NO"
);

ALTER TABLE "BOARD_CATEGORY" ADD CONSTRAINT "PK_BOARD_CATEGORY" PRIMARY KEY (
	"BOARD_CATEGORY_NO"
);

ALTER TABLE "PET_INFO" ADD CONSTRAINT "PK_PET_INFO" PRIMARY KEY (
	"PET_INFO_NO"
);

ALTER TABLE "REPLY" ADD CONSTRAINT "PK_REPLY" PRIMARY KEY (
	"REPLY_NO"
);

ALTER TABLE "NOTICE" ADD CONSTRAINT "PK_NOTICE" PRIMARY KEY (
	"NOTICE_NO"
);

ALTER TABLE "BOARD_PHOTO" ADD CONSTRAINT "PK_BOARD_PHOTO" PRIMARY KEY (
	"BOARD_PIC_NO"
);

ALTER TABLE "NOTICE_PHOTO" ADD CONSTRAINT "PK_NOTICE_PHOTO" PRIMARY KEY (
	"NOTICE_PIC_NO"
);

ALTER TABLE "GOODS" ADD CONSTRAINT "PK_GOODS" PRIMARY KEY (
	"GOODS_NO"
);

ALTER TABLE "ORDER" ADD CONSTRAINT "PK_ORDER" PRIMARY KEY (
	"ORDER_NO"
);

ALTER TABLE "QNA" ADD CONSTRAINT "PK_QNA" PRIMARY KEY (
	"QNA_NO"
);

ALTER TABLE "PET_INFO_PHOTO" ADD CONSTRAINT "PK_PET_INFO_PHOTO" PRIMARY KEY (
	"PET_INFO_PHOTO_NO"
);

ALTER TABLE "ADMIN" ADD CONSTRAINT "PK_ADMIN" PRIMARY KEY (
	"ADMIN_NO"
);

ALTER TABLE "MILEAGE_HISTORY" ADD CONSTRAINT "PK_MILEAGE_HISTORY" PRIMARY KEY (
	"MILEAGE_HISTORY_NO"
);

ALTER TABLE "ORDER_STATUS" ADD CONSTRAINT "PK_ORDER_STATUS" PRIMARY KEY (
	"ORDER_STATUS_NO"
);

