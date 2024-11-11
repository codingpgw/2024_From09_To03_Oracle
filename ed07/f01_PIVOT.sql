SELECT deptno,
	   COUNT(DECODE(job,'CLERK',0)    ) "CLERK",
	   COUNT(DECODE(job,'MANAGER',0)  ) "MANAGER",
	   COUNT(DECODE(job,'PRESIDENT',0)) "PRESIDENT",
	   COUNT(DECODE(job,'ANALYST',0)  ) "ANALYST",
	   COUNT(DECODE(job,'SALESMAN',0) ) "SALESMAN"
  FROM emp
GROUP BY deptno
ORDER BY deptno
;