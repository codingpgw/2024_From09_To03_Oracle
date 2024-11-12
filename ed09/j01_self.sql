col ename for a20
col mgr_name for a20
SELECT t1.ename "ename",
	   t2.ename "mgr_name"
  FROM emp t1, emp t2
 WHERE t1.mgr = t2.empno
;