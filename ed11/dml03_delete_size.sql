--sys �������� �۾�

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
--#���̺� ���� : SCOTT.REORG

--CREATE TABLE SCOTT.REORG(
--	no NUMBER,
--	name VARCHAR2(20),
--	addr VARCHAR2(50)
--);

--random ���� ����: DBMS_RANDOM.STRING(�ɼ�, ����)
--DBMS_RANDOM.STRING('A',5) : ��ҹ��� ������ ���� ���� 5��
--DBMS_RANDOM.STRING('L',5) : �ҹ��� ���� ���� 5��
--DBMS_RANDOM.STRING('U',5) : �빮�� ���� ���� 5��
SELECT DBMS_RANDOM.STRING('A',5),
	   DBMS_RANDOM.STRING('L',5),
	   DBMS_RANDOM.STRING('U',5)
  FROM dual
;