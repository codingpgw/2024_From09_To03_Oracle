--CREATE INDEX idx_mprof_pay
--ON m_prof(pay);


--원본 데이터 : PROFNO (5001) 삭제
--DELETE FROM professor
--WHERE profno = 5001;

--삭제 후
--SELECT * FROM m_prof;

--수동으로 동기화 : DBMS_MVIEW 패키지로 동기화
BEGIN
	DBMS_MVIEW.REFRESH('M_PROF');
END;
/

--수동으로 동기화 후 뷰 조회
SELECT * FROM m_prof;