col table_name for a30
SELECT table_name,
	   num_rows,
	   blocks
  FROM user_tables
 WHERE table_name = 'STATIC_TABLE'
;