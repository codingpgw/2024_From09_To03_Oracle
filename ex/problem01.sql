DROP TABLE BOARD_99 
	CASCADE CONSTRAINTS;

CREATE TABLE BOARD_99 (
	SEQ NUMBER(7) NOT NULL,
	TITLE VARCHAR2(300) NOT NULL,
	CONTENTS CLOB,
	DIV VARCHAR2(2),
	READ_CNT NUMBER(7) DEFAULT 0,
	REG_DT DATE DEFAULT SYSDATE,
	REG_ID VARCHAR2(20),
	MOD_DT DATE DEFAULT SYSDATE,
	MOD_ID VARCHAR2(20)
);

COMMENT ON TABLE BOARD_99 IS '게시판99';

COMMENT ON COLUMN BOARD_99.SEQ IS '순번';

COMMENT ON COLUMN BOARD_99.TITLE IS '제목';

COMMENT ON COLUMN BOARD_99.CONTENTS IS '내용';

COMMENT ON COLUMN BOARD_99.DIV IS '구분';

COMMENT ON COLUMN BOARD_99.READ_CNT IS '조회수';

COMMENT ON COLUMN BOARD_99.REG_DT IS '등록일';

COMMENT ON COLUMN BOARD_99.REG_ID IS '등록자';

COMMENT ON COLUMN BOARD_99.MOD_DT IS '수정일';

COMMENT ON COLUMN BOARD_99.MOD_ID IS '수정자';

CREATE UNIQUE INDEX BOARD_99_PK
	ON BOARD_99 (
		SEQ ASC
	);

ALTER TABLE BOARD_99
	ADD
		CONSTRAINT BOARD_99_PK
		PRIMARY KEY (
			SEQ
		);