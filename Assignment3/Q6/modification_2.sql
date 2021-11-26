SET FOREIGN_KEY_CHECKS=0;
DELETE e, m 
FROM employee AS e
INNER JOIN maintenancelog AS m
ON e.email = m.maintainPerformBy
WHERE e.dpt = 'engineering and maintenance' AND e.employmentStart > '2019-10-10'