--CREATE TABLE prof03(
--	PROFNO	NUMBER(4,0),
--	NAME	VARCHAR2(20 BYTE)
--);
--CREATE TABLE prof04(
--	PROFNO	NUMBER(4,0),
--	NAME	VARCHAR2(20 BYTE)
--);

-- 교수번호 1000~1999 prof03
-- 교수번호 2000~2999 prof04

--INSERT ALL 
--  WHEN profno BETWEEN 1000 AND 1999 THEN
--	INTO prof03 VALUES(profno, name)
--  WHEN profno BETWEEN 2000 AND 2999 THEN
--	INTO prof04 VALUES(profno, name)
--SELECT profno, name FROM professor;

SELECT * FROM prof03;
SELECT * FROM prof04;