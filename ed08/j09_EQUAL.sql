SELECT e.empno,e.ename,e.deptno,d.dname
  FROM emp e,dept d
 WHERE e.deptno = d.deptno
 ;