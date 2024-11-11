SELECT *
  FROM( SELECT empno,ename,sal
		  FROM emp
		 WHERE deptno = 10
),(SELECT LEVEL c1
	 FROM dual
	CONNECT BY LEVEL <= 3
)
;