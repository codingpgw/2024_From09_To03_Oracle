col "cust_name" for a20
col "gift_name" for a20
SELECT c.gname "cust_name",
	   c.point,
	   g.gname "gift_name"
  FROM customer c, gift g
 WHERE c.point BETWEEN g.g_start AND g.g_end
;