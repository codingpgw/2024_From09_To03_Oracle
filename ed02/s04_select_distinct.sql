--레코드 기준으로 중복 제거가 된다.(인스턴스)
SELECT DISTINCT job,
		ename
FROM emp
ORDER BY 1,2
;