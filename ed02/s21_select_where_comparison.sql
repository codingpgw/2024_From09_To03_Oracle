SELECT ename,
	   empno,
	   sal,
	   hiredate
  FROM emp
 WHERE hiredate LIKE '%02%'
;