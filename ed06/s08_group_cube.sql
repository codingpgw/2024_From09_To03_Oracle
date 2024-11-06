EXPLAIN PLAN FOR
SELECT deptno,job,ROUND(AVG(NVL(sal,0)),2),COUNT(*) CNT_EMP
  FROM emp
GROUP BY deptno,job
UNION ALL
SELECT deptno, NULL job,ROUND(AVG(NVL(sal,0)),2),COUNT(*) CNT_EMP
  FROM emp
GROUP BY deptno
UNION ALL
SELECT NULL deptno,job,ROUND(AVG(NVL(sal,0)),2),COUNT(*) CNT_EMP
  FROM emp
GROUP BY job
UNION ALL
SELECT NULL deptno, NULL job,ROUND(AVG(NVL(sal,0)),2),COUNT(*) CNT_EMP
  FROM emp
ORDER BY deptno,job
;