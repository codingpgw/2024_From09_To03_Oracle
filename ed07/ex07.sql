col TOTAL for 99999
SELECT deptno,ename,sal,SUM(sal) OVER() "TOTAL",
	   ROUND(RATIO_TO_REPORT(sal)OVER()*100,2) "%"
  FROM emp
ORDER BY sal DESC
;