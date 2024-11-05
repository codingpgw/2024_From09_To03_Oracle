COLUMN "NAME AND JOB" FORMAT A45
SELECT ename||'('||job||') , '||ename||''''||job||'''' AS "NAME AND JOB"
FROM emp
;