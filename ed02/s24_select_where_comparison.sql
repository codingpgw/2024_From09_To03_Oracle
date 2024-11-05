--
SELECT empno,
	   ename,
	   sal,
  FROM emp
 WHERE deptno IN(20,30)
;