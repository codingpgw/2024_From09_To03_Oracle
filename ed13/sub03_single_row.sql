col dname for a24
col sal for $999,999
SELECT e.ename,e.sal,d.dname
  FROM emp e JOIN dept d
    on e.deptno = d.deptno
 WHERE e.sal > (
	SELECT AVG(sal)
	  FROM emp
	 WHERE deptno = 10
	GROUP BY deptno
	);