SELECT l_code,l_store,l_date,l_qty,l_total,
	   SUM(l_total) OVER(PARTITION BY l_code,l_store ORDER BY l_total DESC) "CUMULATIVE_TOTAL"
  FROM loan
;