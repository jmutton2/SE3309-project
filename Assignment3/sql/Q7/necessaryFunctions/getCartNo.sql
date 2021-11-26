CREATE VIEW trainStatus
AS SELECT DISTINCT trainNo,   departureTime, stationName, routeStatus, 
(SELECT COUNT(cartNo) * AVG(fuelCapacity)*  0.8
FROM cart_locamotive NATURAL JOIN train
WHERE fuelRequired = "yes"
GROUP BY trainNo										)
AS approxFuelRequired,
(SELECT SUM(towingCap)
FROM cart_locamotive NATURAL JOIN  train
GROUP BY  trainNo
) AS trainTowingCapacity
FROM schedule  NATURAL JOIN  train;
describe trainStatus;