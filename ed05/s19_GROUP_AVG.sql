--NULL 포함 : 계산 정상
SELECT COUNT(comm),
	   SUM(comm)/COUNT(*),
	   AVG(NVL(comm,0))
  FROM emp
;