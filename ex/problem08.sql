SELECT *
FROM (
  SELECT
    profno,
    TRUNC((SYSDATE - hiredate) / 365, -1) AS years_of_service
  FROM professor
)
PIVOT (
  COUNT(profno)
  FOR years_of_service IN (
    10 AS "10��",
    20 AS "20��",
    30 AS "30��",
    40 AS "40��",
    50 AS "50��"
  )
);