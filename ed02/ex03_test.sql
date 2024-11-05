COLUMN "Name and Sal" FORMAT A45
SELECT ename||'''s sal is $'||sal AS "Name and Sal"
FROM emp
;