SELECT SYSDATE,
       ADD_MONTHS(SYSDATE,1),
	   ADD_MONTHS(SYSDATE,-2)
  FROM dual
 ;