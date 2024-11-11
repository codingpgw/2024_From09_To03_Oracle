col "cust_name" for a20
col "gift_name" for a20
SELECT c.gname "cust_name",
	   c.point,
	   g.gname "gift_name"
  FROM customer c JOIN gift g
	--ON c.point BETWEEN g.g_start AND g.g_end
	ON c.point >= g.g_start
	AND c.point <= g.g_end
;