col CUST_NAME for a20
col GIFT_NAME for a25
SELECT c.gname "CUST_NAME",
	   c.point "POINT",
	   g.gname "GIFT_NAME"
  FROM customer c,gift g
 WHERE (c.point >= g.g_start AND g.gname = 'Notebook')
;