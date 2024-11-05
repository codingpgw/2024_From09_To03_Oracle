col name for a14
--76/01/23
SELECT studno,
	   name,
	   birthday
  FROM student
 WHERE birthday LIKE '__/01/__'
 ;