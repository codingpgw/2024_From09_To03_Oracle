SELECT ename,job,
	   TO_CHAR(hiredate,'YYYY/MM/DD') HIREDATE,
	   TO_CHAR(sal,'$999,999') SALARY
  FROM emp
 WHERE (job,sal) IN (
	SELECT job,MAX(sal)
	  FROM emp
	GROUP BY job
 )
ORDER BY sal;