col depth_name for a22
col ename_list for a32
col mgr_name for a15
SELECT LEVEL,empno,LPAD(' ',(LEVEL-1)*2, ' ')||ename "depth_name",
	   prior ename as mgr_name,
	   SYS_CONNECT_BY_PATH(ename,'->') AS ename_list
  FROM emp
 WHERE ename <> 'JONES'
START WITH mgr IS NULL --ROOT NODE(7839)
CONNECT BY PRIOR empno = mgr
ORDER SIBLINGS BY ename
;