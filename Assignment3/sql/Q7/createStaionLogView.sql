drop view  if exists stationlog ;
CREATE VIEW stationlog
AS SELECT DISTINCT trainNo,   departureTime, stationName, routeStatus, 
(SELECT COUNT(cartNo) * AVG(fuelCapacity)*  0.8
FROM cart_locamotive
WHERE fuelRequired = "yes" and cart_locamotive.trainno = train.trainNO
GROUP BY cart_locamotive.trainNo										)
AS approxFuelRequired,
(SELECT SUM(towingCap)
FROM cart_locamotive 
where cart_locamotive.trainno = train.trainNO
GROUP BY  cart_locamotive.trainNo
) AS trainTowingCapacity
FROM schedule  NATURAL JOIN  train;

describe stationlog;
