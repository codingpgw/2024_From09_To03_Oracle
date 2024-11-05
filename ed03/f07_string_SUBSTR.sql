col name for a15
col "Birthday" for a15
col "Birthday-1" for 999999
SELECT name,
	   SUBSTR(jumin,1,6) "Birthday",
	   SUBSTR(jumin,1,6)-1 "Birthday-1"
  FROM student
 WHERE deptno1 = 101
;