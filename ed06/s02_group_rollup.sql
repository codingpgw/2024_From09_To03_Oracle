col position for a20
SELECT deptno,
	   position,
	   COUNT(*),
	   SUM(pay) 
  FROM professor
GROUP BY position,ROLLUP(deptno)
;