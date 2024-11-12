SELECT e1.empno "EMPNO",
	   e1.ename "ENAME",
	   e1.hiredate "HIREDATE",
	   (SELECT COUNT(*)
		  FROM emp e2
		 WHERE e1.hiredate > e2.hiredate
	   ) "COUNT"
  FROM emp e1
 ORDER BY 4
 ;