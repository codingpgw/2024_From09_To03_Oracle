col MVIEW_NAME for a20
col QUERY for a50
SELECT MVIEW_NAME,QUERY
  FROM user_mviews
 WHERE MVIEW_NAME = 'M_PROF';