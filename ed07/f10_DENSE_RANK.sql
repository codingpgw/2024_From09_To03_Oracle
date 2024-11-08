SELECT empno,
	   ename,
	   sal,
	   DENSE_RANK() OVER(ORDER BY sal) AS RANK_ASC
  FROM emp
;