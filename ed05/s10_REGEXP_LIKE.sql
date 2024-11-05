SELECT no,ip
  FROM t_reg2
 WHERE REGEXP_LIKE(ip,'^[10]{2}\.[0-9]{2}\.[0-9]{2}\.')
;