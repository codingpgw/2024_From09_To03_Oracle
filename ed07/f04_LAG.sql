SELECT ename,
	   hiredate,
	   sal,
	   LAG(sal,1,0) OVER(ORDER BY sal) "LAG"
  FROM emp
;