delimiter //
CREATE FUNCTION getPos (email varchar(255))
RETURNS enum('employee','supervisor') deterministic
RETURN (select pos from employee
where email = employee.email)