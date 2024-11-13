--sys 계정에서 작업

--col tablespace_name for a20
--col file_name for a59
--
--SELECT tablespace_name,
--	   file_name
--  FROM dba_data_files
--;

--ALTER DATABASE DATAFILE
--'C:\APP\GY\PRODUCT\18.0.0\ORADATA\XE\USERS01.DBF'
--AUTOEXTEND ON;
--
--#테이블 생성 : SCOTT.REORG

--CREATE TABLE SCOTT.REORG(
--	no NUMBER,
--	name VARCHAR2(20),
--	addr VARCHAR2(50)
--);

--random 문자 생성: DBMS_RANDOM.STRING(옵션, 길이)
--DBMS_RANDOM.STRING('A',5) : 대소문자 포함한 랜덤 문자 5자
--DBMS_RANDOM.STRING('L',5) : 소문자 랜덤 문자 5자
--DBMS_RANDOM.STRING('U',5) : 대문자 랜덤 문자 5자
SELECT DBMS_RANDOM.STRING('A',5),
	   DBMS_RANDOM.STRING('L',5),
	   DBMS_RANDOM.STRING('U',5)
  FROM dual
;