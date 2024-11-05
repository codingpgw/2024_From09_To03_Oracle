col name for a15
col jumin for a20
col REPLACE for a30
SELECT name, jumin,
	   REPLACE(jumin,SUBSTR(jumin,7,7), '-/-/-/-' ) "REPLACE"
  FROM student
 WHERE deptno1 = 101
 ;