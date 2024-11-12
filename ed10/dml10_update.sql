--SELECT name,position
--  FROM professor
-- WHERE name = 'Sharon Stone'
--;
--instructor
--
--SELECT profno,name,position,pay
--  FROM professor
-- WHERE position = 'instructor'
-- ;
--
--UPDATE professor 
--   SET pay = pay*1.15 
-- WHERE position = (SELECT position
--                     FROM professor
--                    WHERE name = 'Sharon Stone')
--	AND pay < 250;
--	
SELECT profno,name,position,pay
  FROM professor
 WHERE position = 'instructor' 
   AND profno = 4006
 ;
					 
					 
                    