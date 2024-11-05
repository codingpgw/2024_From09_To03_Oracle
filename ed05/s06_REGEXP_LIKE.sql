SELECT name
  FROM student
 WHERE REGEXP_LIKE(name,'k$','i')
;