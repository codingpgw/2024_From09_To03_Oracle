SELECT empno,
	   ename,
	   sal,
	   RANK() OVER(ORDER BY sal DESC) AS RANK_DESC,
	   RANK() OVER(ORDER BY sal) AS RANK_ASC
  FROM emp
;