--NULL 미포함 : 계산이상
SELECT COUNT(comm),
	   SUM(comm)/COUNT(comm),
	   AVG(comm)
  FROM emp
;