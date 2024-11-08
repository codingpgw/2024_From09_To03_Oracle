SELECT deptno,ename,sal,
	   SUM(sal) OVER(PARTITION BY deptno) TOTAL,
	   --ROUND((sal/SUM(sal) OVER(PARTITION BY deptno))*100,2) "%" 
	   ROUND((RATIO_TO_REPORT(sal) OVER(PARTITION BY deptno))*100,2) "%"
  FROM emp
ORDER BY deptno
;