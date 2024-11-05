col name for a17
col dname for a21
SELECT deptno,
	   name,
	   DECODE(deptno,101,'Computer Engineering','ETC') "dname"
  FROM professor
 ;