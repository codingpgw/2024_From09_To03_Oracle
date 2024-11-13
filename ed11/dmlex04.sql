UPDATE professor 
   SET bonus = 100 
 WHERE profno = (SELECT profno
				   FROM professor
				  WHERE name = 'Sharon Stone'
				)
;

SELECT *
  FROM professor
 WHERE name = 'Sharon Stone';