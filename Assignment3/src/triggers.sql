delimiter $$
CREATE  TRIGGER mustBeEngineerEmployee BEFORE INSERT ON maintenancelog FOR EACH ROW BEGIN
    DECLARE MESSAGE_TEXT varchar(70);
	if (getPos(NEW.maintainPerformBy) <> 'employee' AND getPos(NEW.maintainPerformBy) <> 'engineering and maintenance') THEN
	signal sqlstate '45000'
    SET MESSAGE_TEXT = 'Not an engineering and maintenance employee';
    end if;
	if (getPos(NEW.supervisedBy) <> 'supervisor' AND getPos(NEW.supervisedBY) <> 'engineering and maintenance') THEN
	signal sqlstate '45000'
    SET MESSAGE_TEXT = 'Not an engineering and maintenance supervisor';
    end if;
    END;$$