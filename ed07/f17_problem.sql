col JAN for a4
col FEB for a4
col MAR for a4
col APF for a4
col MAY for a4
col JUN for a4
col JLY for a4
col AGU for a4
col SEP for a4
col OCT for a4
col NOV for a4
col DEC for a4
col TOTAL for a7
SELECT TOTAL || 'EA' AS "TOTAL",
       TO_CHAR(NVL(JAN, 0)) || 'EA' AS JAN,
       TO_CHAR(NVL(FEB, 0)) || 'EA' AS FEB,
       TO_CHAR(NVL(MAR, 0)) || 'EA' AS MAR,
       TO_CHAR(NVL(APF, 0)) || 'EA' AS APF,
       TO_CHAR(NVL(MAY, 0)) || 'EA' AS MAY,
       TO_CHAR(NVL(JUN, 0)) || 'EA' AS JUN,
       TO_CHAR(NVL(JLY, 0)) || 'EA' AS JLY,
       TO_CHAR(NVL(AGU, 0)) || 'EA' AS AGU,
       TO_CHAR(NVL(SEP, 0)) || 'EA' AS SEP,
       TO_CHAR(NVL(OCT, 0)) || 'EA' AS OCT,
       TO_CHAR(NVL(NOV, 0)) || 'EA' AS NOV,
       TO_CHAR(NVL(DEC, 0)) || 'EA' AS DEC
FROM (
    SELECT *
    FROM (
        SELECT studno, TO_CHAR(birthday, 'MM') AS month,COUNT(*) OVER() TOTAL
        FROM student
    )
    PIVOT(
        COUNT(studno) 
        FOR month IN(
            '01' AS JAN,
            '02' AS FEB,
            '03' AS MAR,
            '04' AS APF,
            '05' AS MAY,
            '06' AS JUN,
            '07' AS JLY,
            '08' AS AGU,
            '09' AS SEP,
            '10' AS OCT,
            '11' AS NOV,
            '12' AS DEC
        )
    )
);