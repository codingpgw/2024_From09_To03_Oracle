--���� ����ڰ� ������ ���̺� ���
--ANALYZE TABLE emp COMPUTE STATISTICS;

col table_name for a29
SELECT table_name,
	   num_rows
  FROM user_tables
;