SELECT ename,
	   hiredate,
	   sal,
	   LAG(sal,2,999) OVER(ORDER BY hiredate) "LAG"
  FROM emp
;