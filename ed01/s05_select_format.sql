--DESC dept
--;

SET LINESIZE 200
COL deptno FOR 999
COL dname FOR A15
SELECT deptno,
		dname
	FROM dept
;