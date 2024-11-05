--SELECT hiredate
--  FROM emp
--ORDER BY hiredate
--;

SELECT MAX(hiredate),
	   MIN(hiredate)
  FROM emp
;