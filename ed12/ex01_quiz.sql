CREATE TABLE tcons(
	no    NUMBER(5) 	CONSTRAINT tcons_no_pk PRIMARY KEY,
	name  VARCHAR2(20) 	CONSTRAINT tcons_name_nn NOT NULL,
	jumin VARCHAR2(13) 	CONSTRAINT tcons_jumin_nn NOT NULL
						CONSTRAINT tcons_jumin_uk UNIQUE,
    area   NUMBER(1) 	CONSTRAINT tcons_area_ck CHECK(area >= 1 AND area <= 4),
	deptno VARCHAR2(6) 	CONSTRAINT tcons_deptno_fk REFERENCES dept2(dcode)
);