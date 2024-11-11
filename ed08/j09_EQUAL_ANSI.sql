SELECT e.empno,e.ename,e.deptno,d.dname
  FROM emp e INNER JOIN dept d
	ON e.deptno = d.deptno
 ;