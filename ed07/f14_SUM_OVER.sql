SELECT p_code,
	   p_store,
	   p_date,
	   p_qty,
	   p_total,
	   SUM(p_total) OVER(PARTITION BY p_store,p_code ORDER BY p_store,p_code,p_date) "TOTAL" 
  FROM panmae
;