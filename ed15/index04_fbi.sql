--CREATE INDEX idx_emp_lower_name
--ON emp(LOWER(ename));
--SELECT empno,ename
--  FROM emp
--;

SELECT empno,ename
  FROM emp
 WHERE LOWER(ename) > 'a'
;