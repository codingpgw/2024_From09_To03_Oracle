--constraint_type
--P : PRIMARY KEY
--R : FOREIGN KEY
col table_name for a30
col constraint_name for a20
SELECT table_name,constraint_name,constraint_type
  FROM user_constraints
 WHERE table_name = 'EMP'
 ;