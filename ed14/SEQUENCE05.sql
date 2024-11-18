SELECT t1.sequence_name,
       t1.min_value,
       t1.max_value,
       t1.increment_by,
       t1.cycle_flag,
       t1.cache_size,
       t1.last_number
  FROM user_sequences t1
 WHERE SEQUENCE_NAME = 'JON_SEQ'; 
  
ALTER SEQUENCE JON_SEQ
MAXVALUE 120
CACHE 10;

--시퀀스 삭제
DROP SEQUENCE JON_SEQ;