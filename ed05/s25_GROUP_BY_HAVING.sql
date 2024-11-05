SELECT deptno,
	   ROUND(AVG(NVL(sal,0)),2) AS "AVG_SAL"
  FROM emp
GROUP BY deptno
HAVING AVG(NVL(sal,0)) >= 2000
;