COL ENAME FOR A37
SELECT LEVEL,empno,LPAD(ename,LEVEL*4,'*') "ENAME",mgr
  FROM emp
START WITH mgr IS NULL
CONNECT BY empno = prior mgr -- prior 키워드가 설정되어 있는 컬럼에서 바로 이전의 데이터 값을 찾는데 사용
;