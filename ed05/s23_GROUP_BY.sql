--부서별 평균 급여
SELECT deptno,COUNT(*),ROUND(AVG(NVL(sal,0)),2)
  FROM emp
GROUP BY deptno
ORDER BY 1
;
