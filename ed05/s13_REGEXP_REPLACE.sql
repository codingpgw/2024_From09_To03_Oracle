--'Hello World, HELLO Oracle' -> hi world, hi Oracle
SELECT REGEXP_REPLACE('Hello World, HELLO Oracle','Hello','hi',1,0,'i')
  FROM dual
;