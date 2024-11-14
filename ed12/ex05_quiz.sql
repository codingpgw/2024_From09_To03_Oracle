col constraint_name for a20
col table_name for a20
col index_name for a20
SELECT table_name,
	   owner,
       constraint_name,
       constraint_type,
       status
  FROM user_constraints
 WHERE table_name = 'EMP'
   AND constraint_type <> 'R'
 ;