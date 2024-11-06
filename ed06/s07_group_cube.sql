EXPLAIN PLAN FOR
SELECT deptno,job,ROUND(AVG(NVL(sal,0)),2),COUNT(*) CNT_EMP
  FROM emp
GROUP BY CUBE(deptno,job)
ORDER BY deptno,job
;