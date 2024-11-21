col depth_name for a26
col ename_list for a32
col ROOT<-LEAF for a27
col "ROOT EMPNO" for 9999
SELECT empno,LPAD(ename,LEVEL*5,'*')||ename "depth_name",
	   SYS_CONNECT_BY_PATH(ename,'<-') "ROOT<-LEAF",
	   CONNECT_BY_ROOT empno "ROOT EMPNO"
  FROM emp
 WHERE LEVEL = 1 --자기 자신 출력
   AND empno = 7369
CONNECT BY PRIOR empno = mgr
;