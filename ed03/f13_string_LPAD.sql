col LPAD for a50
SELECT ename,
	   sal,
	   LPAD('0',sal/100,'0') "LPAD"
  FROM emp
;