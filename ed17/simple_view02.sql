--View�� ���� DML

--1.p_table ����
--CREATE TABLE p_table(
--	no NUMBER,
--	name NVARCHAR2(10)
--);

--2. VIEW ���� V_PTABLE
--CREATE VIEW V_PTABLE
--AS
--SELECT no,name
--  FROM p_table
--  ;

--3. DML
--INSERT INTO V_PTABLE VALUES(1,'�̻�01');

--4. ������ ��ȸ
--SELECT * FROM V_PTABLE;

ROLLBACK;
SELECT * FROM V_PTABLE;