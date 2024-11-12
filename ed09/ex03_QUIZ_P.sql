SELECT 
    e.name,	   
    TRUNC((SYSDATE - TO_DATE(e.birthday)) / 365) AS AGE,	   
    e.position,	   
    p.position AS BE_POSITION  
FROM 
    emp2 e
LEFT JOIN 
    p_grade p 
ON 
    TRUNC((SYSDATE - TO_DATE(e.birthday)) / 365) BETWEEN p.s_age AND p.e_age;