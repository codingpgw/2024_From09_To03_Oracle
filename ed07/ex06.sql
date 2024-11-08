SELECT COUNT(*)||'EA'              || '(' ||(COUNT(*)/COUNT(*))*100 ||'%)'                            TOTAL,
	   COUNT(DECODE(AREA,'02' ,0)) || 'EA' || '(' ||(COUNT(DECODE(AREA,'02' ,0))/COUNT(*))*100 ||'%)' SEOUL,
	   COUNT(DECODE(AREA,'031',0)) || 'EA' || '(' ||(COUNT(DECODE(AREA,'031',0))/COUNT(*))*100 ||'%)' GYEONGGI,
	   COUNT(DECODE(AREA,'051',0)) || 'EA' || '(' ||(COUNT(DECODE(AREA,'051',0))/COUNT(*))*100 ||'%)' BUSAN,
	   COUNT(DECODE(AREA,'052',0)) || 'EA' || '(' ||(COUNT(DECODE(AREA,'052',0))/COUNT(*))*100 ||'%)' ULSAN,
	   COUNT(DECODE(AREA,'053',0)) || 'EA' || '(' ||(COUNT(DECODE(AREA,'053',0))/COUNT(*))*100 ||'%)' DAEGU,
	   COUNT(DECODE(AREA,'055',0)) || 'EA' || '(' ||(COUNT(DECODE(AREA,'055',0))/COUNT(*))*100 ||'%)' GYEONGANM
  FROM (
	SELECT SUBSTR(tel,0,INSTR(tel,')')-1) AREA
	  FROM student
  )
;