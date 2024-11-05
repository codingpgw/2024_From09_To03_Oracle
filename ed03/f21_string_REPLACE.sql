col name for a15
col tel for a20
col REPLACE for a20
SELECT name, tel,
	   REPLACE(tel,SUBSTR(tel,INSTR(tel,'-')+1),'****') "REPLACE"
  FROM student 
 WHERE deptno1 = 101
;