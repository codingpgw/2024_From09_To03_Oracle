COL ENAME FOR A37
SELECT LEVEL,empno,LPAD(ename,LEVEL*4,'*') "ENAME",mgr
  FROM emp
START WITH mgr IS NULL
CONNECT BY prior empno = mgr
;