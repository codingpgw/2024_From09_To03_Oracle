--CREATE TABLE professor2
--AS SELECT deptno,position,pay
--     FROM professor
--SELECT deptno,position,pay
--     FROM professor
--;

--SELECT *
--  FROM professor2
-- ;
	   
--INSERT INTO professor2 VALUES(101,'instructor',100);
--INSERT INTO professor2 VALUES(101,'assistant professor',100);
--INSERT INTO professor2 VALUES(101,'a full professor',100);

--COMMIT;
col deptno for a15
col position for a20
SELECT CASE
		WHEN deptno IS NULL AND position IS NOT NULL THEN '������ �Ұ�'
		ELSE TO_CHAR(deptno)
		END deptno,
	   CASE
		WHEN deptno IS NOT NULL AND position IS NULL THEN '�μ��� �Ұ�'
		WHEN deptno IS NULL AND position IS NULL THEN '�Ѱ�'
		ELSE position
		END position,
	   COUNT(*),
	   SUM(pay) 
  FROM professor2
GROUP BY CUBE(deptno,position)
ORDER BY deptno,position
;