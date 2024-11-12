--SELECT p1.profno "PROFNO",
--	   p1.name "NAME",
--	   p1.hiredate "HIREDATE",
--	   (SELECT COUNT(*)
--		  FROM professor p2
--		 WHERE p1.hiredate > p2.hiredate   
--	   ) "COUNT"
--  FROM professor p1
--ORDER BY "COUNT"
--;

SELECT p1.profno "PROFNO",
	   p1.name "NAME",
	   p1.hiredate "HIREDATE",
	   COUNT(p2.hiredate) 
  FROM professor p1,professor p2
 WHERE p1.hiredate > p2.hiredate(+)
GROUP BY p1.profno,p1.name,p1.hiredate
ORDER BY COUNT(p2.hiredate) 
;
