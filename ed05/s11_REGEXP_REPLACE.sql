--abc123abc => abc를 xyz로 치환
SELECT REGEXP_REPLACE('abc123abc','abc','xyz') AS "RESULT"
  FROM dual
 ;