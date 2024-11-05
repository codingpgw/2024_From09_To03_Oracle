--입사일이 12월인 사람
SELECT ename,
	   empno,
	   sal,
	   hiredate
  FROM emp
 WHERE hiredate LIKE '___12%'
;