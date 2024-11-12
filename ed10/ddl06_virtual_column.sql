--pdate : 20241112
CREATE TABLE sales88 (
	no NUMBER PRIMARY KEY,
	pcode CHAR(4),
	pdate CHAR(8),
	pqty NUMBER,
	pbungi NUMBER(1)
	GENERATED ALWAYS AS 
	(
		CASE
		 WHEN SUBSTR(pdate,5,2) IN ('01','02','03') THEN 1
		 WHEN SUBSTR(pdate,5,2) IN ('04','05','06') THEN 2
		 WHEN SUBSTR(pdate,5,2) IN ('07','08','09') THEN 3
		 ELSE 4
		END
	)VIRTUAL
);