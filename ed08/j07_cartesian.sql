SELECT LEVEL c1
  FROM dual
  CONNECT BY LEVEL <= 3
;