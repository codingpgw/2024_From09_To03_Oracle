--ORACLE OUTER JOIN
--emp 테이블과 부서 테이블에서 부서정보를 모두 보여주고,부서 번호가 20인 사원의 사원번호, 이름, 급여를 출력
col ename for a10
SELECT e.*,
	   d.dname
  FROM emp e, dept d
 WHERE e.deptno(+) = d.deptno
   AND e.deptno(+) = 20
;