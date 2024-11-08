SELECT empno,
	   ename,
	   hiredate,
	   sal,
	   LEAD(sal,1,0) OVER(ORDER BY empno) AS NEXT_SAL,
	   LEAD(sal,1,0) OVER(ORDER BY empno) -sal AS sal_diff
  FROM emp
;