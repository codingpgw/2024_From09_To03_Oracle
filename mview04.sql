--CREATE INDEX idx_mprof_pay
--ON m_prof(pay);


--���� ������ : PROFNO (5001) ����
--DELETE FROM professor
--WHERE profno = 5001;

--���� ��
--SELECT * FROM m_prof;

--�������� ����ȭ : DBMS_MVIEW ��Ű���� ����ȭ
BEGIN
	DBMS_MVIEW.REFRESH('M_PROF');
END;
/

--�������� ����ȭ �� �� ��ȸ
SELECT * FROM m_prof;