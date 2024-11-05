--SELECT ename || ' ' ||job 
--FROM emp
--;

SELECT ename || ' ''s job is ' ||job AS name_job
FROM emp
;