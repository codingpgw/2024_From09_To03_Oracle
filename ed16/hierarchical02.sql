COL ENAME FOR A37
SELECT LEVEL,empno,LPAD(ename,LEVEL*4,'*') "ENAME",mgr
  FROM emp
START WITH mgr IS NULL
CONNECT BY empno = prior mgr -- prior Ű���尡 �����Ǿ� �ִ� �÷����� �ٷ� ������ ������ ���� ã�µ� ���
;