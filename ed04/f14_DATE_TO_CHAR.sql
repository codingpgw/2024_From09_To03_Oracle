col  ����ú��� for a25
SELECT SYSDATE,
	   TO_CHAR(SYSDATE,'YYYY') "�⵵",
	   TO_CHAR(SYSDATE,'RRRR') "�⵵",
	   TO_CHAR(SYSDATE,'DAY') "����",
	   TO_CHAR(SYSDATE,'YY.MM.DD HH24:MI:SS AM') "����ú���"
  FROM dual
;