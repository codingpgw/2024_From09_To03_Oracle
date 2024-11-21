--View를 통한 DML

--1.p_table 생성
--CREATE TABLE p_table(
--	no NUMBER,
--	name NVARCHAR2(10)
--);

--2. VIEW 생성 V_PTABLE
--CREATE VIEW V_PTABLE
--AS
--SELECT no,name
--  FROM p_table
--  ;

--3. DML
--INSERT INTO V_PTABLE VALUES(1,'이상무01');

--4. 데이터 조회
--SELECT * FROM V_PTABLE;

ROLLBACK;
SELECT * FROM V_PTABLE;