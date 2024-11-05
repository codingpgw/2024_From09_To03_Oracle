col name for a18
col dname for a35
SELECT deptno,name,
	   DECODE(deptno,101,'Computer Engineering',
					 102,'Multimedia Engineering',
					 103,'Software Engineering',
					 'ETC') "dname"
  FROM professor
;