CREATE VIEW trainFACTS
AS
SELECT trainNo, location, 
(SELECT count(employee_email)
FROM train NATURAL JOIN  employee
GROUP BY trainNO
) AS numberOfEmployees,
(SELECT COUNT(cartNO)
FROM train NATURAL JOIN transportCarts NATURAL JOIN locomotiveCarts NATURAL JOIN seatsPassengerCart NATURAL JOIN cabinPassengerCart
WHERE maintainReq = 'Yes'
GROUP BY trainNo
) noOfCartRepairsReq,
rdyForUtil,
(SELECT SUM(towingCap)
FROM cart_locomotive NATURAL JOIN  train
GROUP BY  trainNo
) AS trainTowingCapacity
FROM  train NATURAL JOIN  station