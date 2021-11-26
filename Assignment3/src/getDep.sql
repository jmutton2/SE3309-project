delimiter //
CREATE FUNCTION getDept (email varchar(255))
RETURNS enum('engineering and maintenance','operations','human resource','sales and marketing') deterministic
RETURN (select dpt from employee
where email = employee.email)