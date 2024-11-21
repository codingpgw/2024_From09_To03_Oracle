col name for a20
SELECT name, prior name AS "MGR_NAME"
  FROM emp2
START WITH pempno IS NULL
CONNECT BY PRIOR empno = pempno
;