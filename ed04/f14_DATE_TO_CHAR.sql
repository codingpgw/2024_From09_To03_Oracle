col  년월시분초 for a25
SELECT SYSDATE,
	   TO_CHAR(SYSDATE,'YYYY') "년도",
	   TO_CHAR(SYSDATE,'RRRR') "년도",
	   TO_CHAR(SYSDATE,'DAY') "요일",
	   TO_CHAR(SYSDATE,'YY.MM.DD HH24:MI:SS AM') "년월시분초"
  FROM dual
;