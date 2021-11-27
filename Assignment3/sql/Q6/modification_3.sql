UPDATE schedule s 
JOIN train t 
ON s.trainNo = t.trainNo
set s.routeStatus = 'Late'
WHERE t.rdyForUtil = 'No'