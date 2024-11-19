--SELECT ename,
--	   job,
--	   sal
--  FROM emp
--;

--ÀÎµ¦½º »ý¼º
--CREATE INDEX idx_emp_job_sal
--ON emp(job,sal DESC);
EXPLAIN PLAN FOR
SELECT ename,
	   job,
	   sal
  FROM emp
 WHERE job > 'A'
   AND sal > 0
;