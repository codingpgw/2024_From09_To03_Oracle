SELECT deptno,
	   empno,
	   ename,
	   sal,
	   RATIO_TO_REPORT(sal) OVER(PARTITION BY deptno)*100 "SAL_RATIO"
  FROM emp
ORDER BY deptno,sal
;