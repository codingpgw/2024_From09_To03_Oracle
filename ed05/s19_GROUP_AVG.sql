--NULL ���� : ��� ����
SELECT COUNT(comm),
	   SUM(comm)/COUNT(*),
	   AVG(NVL(comm,0))
  FROM emp
;