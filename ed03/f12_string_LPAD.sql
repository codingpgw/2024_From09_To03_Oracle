col LPAD for a19
SELECT LPAD(ename,10,'123456789') "LPAD"
  FROM emp
 WHERE deptno = 10
;