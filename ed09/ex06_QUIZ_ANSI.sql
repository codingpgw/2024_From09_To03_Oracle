SELECT e1.empno "EMPNO",
	   e1.ename "ENAME",
	   e1.hiredate "HIREDATE",
	   COUNT(e2.hiredate) "COUNT"
  FROM emp e1 LEFT OUTER JOIN emp e2
	ON e1.hiredate > e2.hiredate
 GROUP BY e1.empno,e1.ename,e1.hiredate
 ORDER BY 4
 ;