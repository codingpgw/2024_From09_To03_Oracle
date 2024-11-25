SELECT ROWNUM RANKING,
	   name,
	   pay
  FROM(
  SELECT name,pay
	FROM professor
  ORDER BY pay DESC
) WHERE ROWNUM <= 5
;

SELECT RANK() OVER(ORDER BY pay DESC) RANKING,name,pay
  FROM professor
 WHERE ROWNUM <= 5;