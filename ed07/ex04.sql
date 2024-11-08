--SELECT *
--  FROM(SELECT deptno,job,sal
--	     FROM emp
--)
--PIVOT( 
--	SUM(sal)
--	FOR job IN(
--		'CLERK'     AS "CLERK",
--		'MANAGER'   AS "MANAGER",
--		'PRESIDENT' AS "PRESIDENT",
--		'ANALYST'   AS "ANALYST",
--		'SALESMAN'	AS "SALESMAN"
--	)
--)
--ORDER BY deptno
--;
col TOTAL for 999,999
col deptno for a10
SELECT CASE
	   WHEN deptno IS NULL THEN 'job total'
	   ELSE TO_CHAR(deptno)
	   END deptno,
	   SUM(DECODE(job,'CLERK',    NVL(sal,0),0))     "CLERK",
	   SUM(DECODE(job,'MANAGER',  NVL(sal,0),0))   "MANAGER",
	   SUM(DECODE(job,'PRESIDENT',NVL(sal,0),0)) "PRESIDENT",
	   SUM(DECODE(job,'ANALYST',  NVL(sal,0),0))   "ANALYST",
	   SUM(DECODE(job,'SALESMAN', NVL(sal,0),0))  "SALESMAN",
	   --SUM(DECODE(deptno,deptno,NVL(sal,0),0))    "TOTAL" 
	   SUM(NVL2(job,sal,0)) "TOTAL"
  FROM emp
GROUP BY ROLLUP(deptno)
ORDER BY deptno
;