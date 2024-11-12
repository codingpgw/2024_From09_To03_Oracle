--col name for a15
--col position for a25
--SELECT profno,name,position,bonus 
--  FROM professor
--;

--UPDATE professor 
--   SET bonus = NVL(bonus,0) + 200
-- WHERE position = 'assistant professor'
--;

--UPDATE professor 
--   SET bonus = 200
-- WHERE position = 'assistant professor'
--;

col name for a20
col position for a25
SELECT profno,name,position,bonus 
  FROM professor
 WHERE position = 'assistant professor'
;

COMMIT;