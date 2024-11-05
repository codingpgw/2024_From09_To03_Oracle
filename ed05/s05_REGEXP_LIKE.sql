--대소문자 구분 없이 검색
SELECT ename
  FROM emp
 WHERE REGEXP_LIKE(ename,'scott','i')
 ;