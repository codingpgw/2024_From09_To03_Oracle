col "ENAME AND POSITION" for a50
SELECT e.empno EMPNO,(e.ename||'-'||d.dname||'-'||e.job) "ENAME AND POSITION",
	   (SELECT COUNT(*)
	      FROM emp e2
		 START WITH e2.empno = e.empno 
		 CONNECT BY PRIOR e2.empno = e2.mgr
	   )-1 "COUNT"
  FROM emp e JOIN dept d
    ON e.deptno = d.deptno
START WITH e.mgr IS NULL
CONNECT BY prior e.empno = e.mgr
ORDER BY 3 DESC
;