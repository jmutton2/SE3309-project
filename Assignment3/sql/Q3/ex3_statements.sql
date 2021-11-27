-- Query 1
INSERT INTO employee
VALUES('isaac@newton.co','Isaac','Newton','123-456-7890',53,'supervisor','engineering and maintenance','1643-01-04','100');

-- Query 2
INSERT INTO train(trainNo, rdyForUtil, stationName)
VALUES('999','No','Rostov Station');

-- Query 3
INSERT INTO employee_associates_with_a_train(train_trainNo, employee_email)
(SELECT 999, email
FROM employee
WHERE email='et.euismod@google.couk');
