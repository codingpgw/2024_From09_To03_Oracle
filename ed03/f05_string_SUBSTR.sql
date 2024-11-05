--SELECT dummy
  --FROM dual;
  
 
SELECT SUBSTR('ABCDE', 3,2) "3_2",
	   SUBSTR('ABCDE', -2,2) "-2_2",
	   SUBSTR('ABCDE', 2) "2"
  FROM dual
;
