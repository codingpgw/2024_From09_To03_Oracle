col name for a20
col tel for a15
SELECT name,
	   tel,
	   INSTR(tel,')') AS INSTR
  FROM student
 WHERE deptno1 = 201
;