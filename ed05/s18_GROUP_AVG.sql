--NULL ������ : ����̻�
SELECT COUNT(comm),
	   SUM(comm)/COUNT(comm),
	   AVG(comm)
  FROM emp
;