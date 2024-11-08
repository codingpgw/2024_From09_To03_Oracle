SELECT deptno,
	   empno,
	   ename,
	   sal,
	   SUM(sal) OVER(PARTITION BY deptno ORDER BY sal) AS cumulative_sal
  FROM emp
;