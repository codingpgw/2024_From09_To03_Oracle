SELECT name,id
  FROM student
 WHERE REGEXP_LIKE(id,'^M(a|o)')
 ;