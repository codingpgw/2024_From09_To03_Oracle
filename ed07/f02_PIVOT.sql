SELECT *
  FROM (SELECT deptno,
			   job
		  FROM emp  
)
PIVOT(
	COUNT(job)
	FOR job IN(
		 'CLERK'     AS "CLERK"
		,'MANAGER'   AS "MANAGER"
		,'PRESIDENT' AS "PRESIDENT"
		,'ANALYST'   AS "ANALYST"
		,'SALESMAN'  AS "SALESMA"
	)
)
ORDER BY deptno
;