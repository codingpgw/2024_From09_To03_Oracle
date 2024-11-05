SELECT name, tel
  FROM student
 WHERE REGEXP_LIKE(tel,'^[0-9]{2}\)[0-9]{4}')
 ;