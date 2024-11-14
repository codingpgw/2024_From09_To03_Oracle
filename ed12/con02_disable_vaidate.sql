--INSERT INTO t_validate VALUES(4, NULL);

--INSERT INTO t_validate VALUES(4, NULL)
--                                 *
--1행에 오류:
--ORA-01400: NULL을 ("SCOTT"."T_VALIDATE"."NAME") 안에 삽입할 수 없습니다

--ALTER TABLE t_validate
--DISABLE VALIDATE CONSTRAINT TV_NAME_NN;
--
--INSERT INTO t_validate VALUES(4, NULL);
--
--ORA-25128: 사용 안함으로 설정되고 검증된 제약 조건(SCOTT.TV_NAME_NN)을
--사용하여 테이블에서 삽입/ 업데이트/삭제 작업이 수행되지 않았습니다.

INSERT INTO t_validate(no) VALUES(4);