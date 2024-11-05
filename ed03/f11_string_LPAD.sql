col id for a10
col "LPAD_ID" for a15
SELECT name,
	   id,
	   LPAD(id,10,'*') "LPAD_ID"
  FROM student
 WHERE deptno1 = 201
;