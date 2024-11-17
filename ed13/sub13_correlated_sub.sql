SELECT e1.ename,e1.sal,e1.deptno
  FROM emp e1
 WHERE e1.sal > (
	SELECT AVG(NVL(sal,0))
	  FROM emp e2
	 WHERE e1.deptno = e2.deptno
);