col "a_name" for a10
col "b_name" for a10
col "c_name" for a10
SELECT a.name "a_name",b.name  "b_name",c.name "c_name"
  FROM cat_a a,cat_b b,cat_c c
 WHERE a.no = b.no AND 
	   b.no = c.no AND
	   c.no = a.no
;