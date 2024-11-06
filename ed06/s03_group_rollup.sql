col position for a20
SELECT deptno,
	   position,
	   COUNT(*),
	   SUM(pay) 
  FROM professor2
GROUP BY deptno,ROLLUP(position)
;