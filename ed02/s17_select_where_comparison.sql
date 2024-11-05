SELECT empno,
	   ename,
	   sal
  FROM emp
 WHERE ename BETWEEN 'JAMES' AND 'SMITH'
ORDER BY ename
;