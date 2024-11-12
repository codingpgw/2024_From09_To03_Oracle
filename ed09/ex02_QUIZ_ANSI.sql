col NAME for a18
col POSITION for a24
col PAY for 99,999,999
col "Low PAY" for 99,999,999
col "High Pay" for 99,999,999
SELECT e.name "NAME",e.position "POSITION",
	   e.pay "PAY",
	   p.s_pay "Low PAY",p.e_pay "High Pay"
  FROM emp2 e JOIN p_grade p
	ON e.position = p.position
;