SELECT deptno,job,AVG(NVL(sal,0)) "AVG"
  FROM emp
GROUP BY deptno,job
ORDER BY deptno,job
;