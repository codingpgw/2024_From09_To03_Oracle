--현재 사용자가 소유한 테이블 목록
--ANALYZE TABLE emp COMPUTE STATISTICS;

col table_name for a29
SELECT table_name,
	   num_rows
  FROM user_tables
;