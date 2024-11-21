COL ENAME FOR A37
SELECT LEVEL,empno,LPAD(ename,LEVEL*4,'*') "ENAME",mgr
  FROM emp
  WHERE empno <> 7566
START WITH empno = 7369 --SMITH
CONNECT BY empno = prior mgr
;