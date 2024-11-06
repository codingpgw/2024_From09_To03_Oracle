--DESC cal; 
--weekno       VARCHAR2(1)
--day			 VARCHAR2(5)
--dayno		 VARCHAR2(2)
SELECT MAX(DECODE(day,'SUN',dayno)) SUN,
       MAX(DECODE(day,'MON',dayno)) MON,
	   MAX(DECODE(day,'TUE',dayno)) TUE,
	   MAX(DECODE(day,'WED',dayno)) WED,
	   MAX(DECODE(day,'THU',dayno)) THU,
	   MAX(DECODE(day,'FRI',dayno)) FRI,
	   MAX(DECODE(day,'SAT',dayno)) SAT
  FROM cal
GROUP BY weekno
ORDER BY weekno
;