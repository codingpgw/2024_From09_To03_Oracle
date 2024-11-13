CREATE TABLE professor4 AS
SELECT profno,name,pay
  FROM professor
 WHERE 1 = 2
;

INSERT INTO professor4
SELECT profno,name,pay
  FROM professor
 WHERE profno <= 3000
;