CREATE TABLE new_emp1(
	no 	   NUMBER(4) 	CONSTRAINT emp1_no_pk 	 PRIMARY KEY,
	name   VARCHAR2(20) CONSTRAINT emp1_name_nn  NOT NULL,
	jumin  CHAR(13)  	CONSTRAINT emp1_jumin_uk UNIQUE
						CONSTRAINT emp1_jumin_nn NOT NULL,
    loc_code NUMBER(1)
		CONSTRAINT emp1_area_ck CHECK(loc_code < 5),
	deptno VARCHAR2(6 BYTE) CONSTRAINT emp1_deptno_fk REFERENCES dept2(dcode)
);