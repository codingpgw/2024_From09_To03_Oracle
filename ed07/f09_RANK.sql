--emp 테이블을 조회하여 같은 부서 내 job별 급여 순윈
SELECT empno,
	   ename,
	   deptno,
	   job,
	   sal,
	   RANK() OVER(PARTITION BY deptno,job ORDER BY sal DESC) AS RANK_DESC
  FROM emp
;