col constraint_name for a20
SELECT owner,
       constraint_name,
       constraint_type,
       status
  FROM user_constraints
 WHERE table_name = 'EMP'
 ;