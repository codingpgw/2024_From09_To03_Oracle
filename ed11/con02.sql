--CREATE TABLE new_emp1(
--	no 	   NUMBER(4) 	CONSTRAINT emp1_no_pk 	 PRIMARY KEY,
--	name   VARCHAR2(20) CONSTRAINT emp1_name_nn  NOT NULL,
--	jumin  CHAR(13)  	CONSTRAINT emp1_jumin_uk UNIQUE
--						CONSTRAINT emp1_jumin_nn NOT NULL,
--    loc_code NUMBER(1)
--		CONSTRAINT emp1_area_ck CHECK(loc_code < 5),
--	deptno VARCHAR2(6 BYTE) CONSTRAINT emp1_deptno_fk REFERENCES dept2(dcode)
--);

--제약 조건 이름 삭제
CREATE TABLE new_emp2(
	no NUMBER(4) PRIMARY KEY,
	name VARCHAR2(20) NOT NULL,
	jumin CHAR(13) NOT NULL UNIQUE,
	loc_code NUMBER(1) CHECK(loc_code < 5),
	deptno VARCHAR2(6) REFERENCES dept2(dcode)
);