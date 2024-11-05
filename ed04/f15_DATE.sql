col name for a14
--76/01/23
SELECT studno,
	   name,
	   birthday
  FROM student
 WHERE TO_CHAR(birthday,'MM') = '01'
 ;