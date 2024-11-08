col deptno for 99,999
col sal for 99,999
col TOTAL for 99,999
SELECT deptno,ename,sal,
	   SUM(sal) OVER(ORDER BY sal) "TOTAL"
  FROM emp
;