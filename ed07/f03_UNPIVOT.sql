--CREATE TABLE unpivot
--AS
--SELECT *
--  FROM (SELECT deptno,
--			   job
--		  FROM emp  
--)
--PIVOT(
--	COUNT(job)
--	FOR job IN(
--		 'CLERK'     AS "CLERK"
--		,'MANAGER'   AS "MANAGER"
--		,'PRESIDENT' AS "PRESIDENT"
--		,'ANALYST'   AS "ANALYST"
--		,'SALESMAN'  AS "SALESMA"
--	)
--)
--ORDER BY deptno
--;

--DESC unpivot;
--SELECT * FROM unpivot;

SELECT * FROM unpivot
UNPIVOT(
	empno FOR job IN (CLERK,MANAGER,PRESIDENT,ANALYST,SALESMA)
);