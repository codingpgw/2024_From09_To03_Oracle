--INSERT INTO t_validate VALUES(4, NULL);

--INSERT INTO t_validate VALUES(4, NULL)
--                                 *
--1�࿡ ����:
--ORA-01400: NULL�� ("SCOTT"."T_VALIDATE"."NAME") �ȿ� ������ �� �����ϴ�

--ALTER TABLE t_validate
--DISABLE VALIDATE CONSTRAINT TV_NAME_NN;
--
--INSERT INTO t_validate VALUES(4, NULL);
--
--ORA-25128: ��� �������� �����ǰ� ������ ���� ����(SCOTT.TV_NAME_NN)��
--����Ͽ� ���̺��� ����/ ������Ʈ/���� �۾��� ������� �ʾҽ��ϴ�.

INSERT INTO t_validate(no) VALUES(4);