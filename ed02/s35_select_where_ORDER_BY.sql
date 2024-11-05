SELECT deptno,
	   ename,
	   sal,
	   hiredate
  FROM emp
 WHERE sal > 1000
ORDER BY 3 ASC,2 DESC
;