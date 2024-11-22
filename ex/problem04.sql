SELECT d.dname DNAME,
	   e.ename ENAME,
	   e.sal   SAL,
	   SUM(e.sal) OVER(PARTITION BY e.deptno) SUM_DEPT,
       ROUND(RATIO_TO_REPORT(e.sal) OVER(PARTITION BY e.deptno)*100,2) "%R"
  FROM emp e JOIN dept d
    ON e.deptno = d.deptno
ORDER BY d.deptno
;