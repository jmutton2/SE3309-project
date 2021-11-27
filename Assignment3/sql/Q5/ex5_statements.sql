-- Query 1
SELECT maintenancelog.maintainType, maintenancelog.maintainDate, employee.fName, employee.lName
FROM maintenancelog
INNER JOIN employee
ON maintenancelog.maintainPerformBy = employee.email
WHERE maintenancelog.supervisedBy = 'aenean.massa@protonmail.org';

SELECT maintenancelog.maintainType, maintenancelog.maintainDate, employee.fName, employee.lName
FROM maintenancelog
INNER JOIN employee
ON maintenancelog.supervisedBy= employee.email
WHERE maintenancelog.maintainPerformBy = 'fringilla.euismod@google.ca';

-- Query 2
SELECT train.trainNo as TrainNo, train.stationName as StationName
FROM train
INNER JOIN schedule
ON train.trainNo = schedule.trainNo
WHERE rdyForUtil = 'No';

-- Query 3
SELECT trainNo, departureTime, arrivalTime, routeStatus
FROM schedule
WHERE trainNo = 1;

-- Query 4
SELECT dpt, COUNT(*)
FROM employee
GROUP BY dpt;

-- Query 5 
SELECT cartNo
FROM cart_locamotive
WHERE trainNo = (SELECT trainNo
    FROM train
    WHERE trainNo = 1)
UNION
SELECT cartNo
FROM cart_passenger_cabins
WHERE trainNo = (SELECT trainNo
    FROM train
    WHERE trainNo = 1)
UNION
SELECT cartNo
FROM cart_passenger_seats
WHERE trainNo = (SELECT trainNo
    FROM train
    WHERE trainNo = 1);

-- Query 6
SELECT cart_locamotive.cartNo,AVG(maintenancelog.cost) as AverageMaintenanceCost
FROM maintenancelog
INNER JOIN cart_locamotive
ON maintenancelog.maintainLogID = cart_locamotive.maintainLogID
GROUP BY cart_locamotive.cartNo;

-- Query 7 
SELECT trainNo, cartNo
FROM cart_passenger_seats
WHERE class = 'economy'
UNION
SELECT cartNo, trainNo
FROM cart_passenger_cabins
WHERE class = 'economy';


