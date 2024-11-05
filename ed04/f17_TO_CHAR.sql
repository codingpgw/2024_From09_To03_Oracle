SELECT empno,
	   ename,
	   sal,
	   comm,
	   TO_CHAR((sal*12)+comm,'99,999') "annual_sal"
  FROM emp
 WHERE ename = 'ALLEN';