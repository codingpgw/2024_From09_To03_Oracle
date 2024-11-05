col ename for a8
col "LOWER_ENAME" for a12
SELECT ename,
	   LOWER(ename) "LOWER_ENAME",
	   INITCAP(ename) "INITCAP",
	   UPPER(ename)	"UPPER"
  FROM emp
;