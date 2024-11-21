col depth_name for a22
col ename_list for a32
col mgr_name for a15
SELECT LEVEL,empno,LPAD(' ',(LEVEL-1)*2, ' ')||ename "depth_name",mgr
  FROM emp
START WITH empno = 7369 --ROOT NODE(7839)
CONNECT BY empno = PRIOR mgr
;