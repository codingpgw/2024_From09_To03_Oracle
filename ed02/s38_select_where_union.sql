SELECT profno,
	   name,
	   deptno,
	   1
  FROM professor
 WHERE deptno = 101
UNION
SELECT studno,
	   name,
	   deptno1,
	   2
  FROM student
 WHERE deptno1 = 101
;