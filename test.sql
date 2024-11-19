--CREATE TABLE test_ex999(
--	col1 VARCHAR2(2),
--	col2 VARCHAR2(2),
--	col3 NUMBER(1)
--);
--INSERT INTO test_ex999 VALUES('A',NULL,1);
--INSERT INTO test_ex999 VALUES('B','A',2);
--INSERT INTO test_ex999 VALUES('C','A',3);
--INSERT INTO test_ex999 VALUES('D','B',4);
--SELECT MAX(LEVEL)
--FROM test_ex999
--WHERE COL3 <> 2
--START WITH COL3 = 4
--CONNECT BY COL1 = PRIOR COL2;
--CREATE TABLE test_ex998(
--	col1 VARCHAR2(2),
--	col2 NUMBER(1)
--);
--INSERT INTO test_ex998 VALUES('A',1);
--INSERT INTO test_ex998 VALUES('A',2);
--INSERT INTO test_ex998 VALUES('A',3);
--INSERT INTO test_ex998 VALUES('B',4);
--INSERT INTO test_ex998 VALUES('B',5);
--INSERT INTO test_ex998 VALUES('C',6);
--INSERT INTO test_ex998 VALUES('D',7);
--INSERT INTO test_ex998 VALUES('B',8);
--INSERT INTO test_ex998 VALUES('B',9);
--
--SELECT COUNT(*)
--  FROM test_ex998
-- GROUP BY col1
-- HAVING COUNT(*)>2;

--SELECT COUNT(*)
--  FROM test_ex998
-- WHERE col1 NOT IN(NULL,2);

--SELECT REGEXP_INSTR('123456789','((1,2),(4,(5,6),(7,8,9)))',1,1,0,'i',2)
--  FROM dual;
SELECT ename "aab",empno "aaa"
  FROM emp
UNION
SELECT ename "bba",empno "bbb"
  FROM emp
;