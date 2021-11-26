Update employee
SET salary = salary + 100
WHERE email = ANY(select employee_email
FROM employee_associates_with_a_train
WHERE train_trainNo = ANY (select trainNo 
FROM cart_transport
WHERE maintainReq = 'Yes' and  timeUntilNextMaintain = '2021-12-25'))



  








