SELECT d.dname,
	   SUM(DECODE(job,'ANALYST',e.sal)  ) "ANALYST",
	   SUM(DECODE(job,'CLERK',e.sal)    ) "CLERK",
	   SUM(DECODE(job,'MANAGER',e.sal)  ) "MANAGER",
	   SUM(DECODE(job,'SALESMAN',e.sal) ) "SALESMAN"
  FROM emp e,dept d
 WHERE e.deptno = d.deptno
GROUP BY e.deptno,d.dname
;