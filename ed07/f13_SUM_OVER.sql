--DESC panmae;
--                             ��?      ����
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 --p_date	 NOT NULL VARCHAR2(8)
 --p_code	 NOT NULL NUMBER
 --p_qty			  NUMBER
 --p_total 		      NUMBER
 --p_store 	     	  VARCHAR2(5)
-- SELECT * 
--   FROM panmae
--ORDER BY P_STORE,P_DATE
--;
SELECT p_date,
	   p_code,
	   p_qty,
	   p_total,
	   SUM(p_total) OVER(PARTITION BY p_code ORDER BY p_total) "TOTAL",
	   p_store
  FROM panmae
 WHERE p_store = 1000
;