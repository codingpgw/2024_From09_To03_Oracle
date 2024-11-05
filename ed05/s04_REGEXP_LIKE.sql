SELECT ename
  FROM emp
 WHERE REGEXP_LIKE(ename,'^A|B')
;