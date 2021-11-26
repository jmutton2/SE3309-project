
Drop view IF EXISTS supervisormetric;
CREATE VIEW supervisorMetric AS
SELECT * FROM 
(SELECT  supervisedBy, maintainType as mostCommonMaintSupervised FROM (SELECT supervisedBy,maintainType, nor, ROW_NUMBER() OVER (PARTITION BY supervisedBy ORDER BY nor DESC) as pos FROM (select supervisedby, maintainType,count(*) as nor from maintenanceLog
group by supervisedby, maintaintype
ORDER BY nor DESC) as temp) as temp2
WHERE POS = 1)  mostCommon NATURAL JOIN
(SELECT supervisedBy, SUM(cost) AS totalCostofMaint, COUNT(maintainType) AS totalMaintSupervised ,SUM(cost)/COUNT(maintainType) AS maintainCostAVG
FROM maintenancelog
GROUP BY supervisedBy
ORDER BY COUNT(maintainType) DESC) staffFact;
describe supervisormetric;
        
	








        