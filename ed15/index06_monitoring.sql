--IDX_DEPT2_DNAME
--����͸� START
--ALTER INDEX IDX_DEPT2_DNAME MONITORING USAGE;

--SELECT *
--  FROM dept2
-- WHERE dname > 'A';

--����͸� STOP
--ALTER INDEX IDX_DEPT2_DNAME NOMONITORING USAGE;

--����͸� Ȯ�� : V$OBJECT_USAGE
--SELECT table_name,index_name,used
--  FROM V$OBJECT_USAGE
-- WHERE INDEX_NAME = 'IDX_DEPT2_DNAME';
 
