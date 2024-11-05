col "local" for a10
SELECT name,
	   tel,
	   SUBSTR(tel,1,INSTR(tel,')')-1) "local"
  FROM student
 WHERE deptno1 = 201
;