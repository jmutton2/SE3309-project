CREATE TABLE `cart_transport` (
  `cartNo` decimal(5,1) DEFAULT NULL,
  `manufacturer` varchar(22) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `manufacturingYear` datetime DEFAULT NULL,
  `timeUntilNextMaintain` datetime DEFAULT NULL,
  `maintainReq` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `trainNo` decimal(4,1) DEFAULT NULL,
  `storageType` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `tempControl` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `maxCap` decimal(4,1) DEFAULT NULL,
  `maintainLogID` decimal(5,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `cart_passenger_seats` (
  `cartNo` decimal(5,1) DEFAULT NULL,
  `manufacturer` varchar(22) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `manufacturingYear` datetime DEFAULT NULL,
  `timeUntilNextMaintain` datetime DEFAULT NULL,
  `maintainReq` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `trainNo` decimal(4,1) DEFAULT NULL,
  `class` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `seatNo` decimal(4,1) DEFAULT NULL,
  `maintainLogID` decimal(5,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `cart_passenger_cabins` (
  `cartNo` decimal(5,1) DEFAULT NULL,
  `manufacturer` varchar(22) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `manufacturingYear` datetime DEFAULT NULL,
  `timeUntilNextMaintain` datetime DEFAULT NULL,
  `maintainReq` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `trainNo` decimal(4,1) DEFAULT NULL,
  `class` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `cabinNo` decimal(4,1) DEFAULT NULL,
  `maintainLogID` decimal(5,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `cart_locamotive` (
  `cartNo` decimal(4,1) DEFAULT NULL,
  `manufacturer` varchar(22) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `manufacturingYear` datetime DEFAULT NULL,
  `timeUntilNextMaintain` datetime DEFAULT NULL,
  `maintainReq` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `trainNo` decimal(3,1) DEFAULT NULL,
  `towingCap` decimal(7,1) DEFAULT NULL,
  `fuelRequired` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `fuelCapacity` decimal(6,1) DEFAULT NULL,
  `maintainLogID` decimal(5,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `employee` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `fName` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `lName` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `phoneNo` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `salary` int NOT NULL,
  `pos` enum('employee','supervisor') CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT 'employee',
  `dpt` enum('engineering and maintenance','operations','human resource','sales and marketing') CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `employmentStart` date NOT NULL,
  `allocatedVacation` int NOT NULL,
  PRIMARY KEY (`email`),
  CONSTRAINT `chk_phone` CHECK ((not((`phoneNo` like _utf8mb4'%[^0-9]%'))))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

CREATE TABLE `employee_associates_with_a_train` (
  `train_trainNo` bigint NOT NULL AUTO_INCREMENT,
  `employee_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`train_trainNo`,`employee_email`),
  KEY `fk_employee_has_train_train1_idx` (`train_trainNo`),
  KEY `fk_employee_has_train_employee1_idx` (`employee_email`),
  CONSTRAINT `fk_employee_has_train_employee` FOREIGN KEY (`employee_email`) REFERENCES `employee` (`email`) ON UPDATE CASCADE,
  CONSTRAINT `fk_employee_has_train_train` FOREIGN KEY (`train_trainNo`) REFERENCES `train` (`trainNo`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

CREATE TABLE `gate` (
  `gateNo` int NOT NULL,
  `typeAccepted` enum('passenger','cargo') CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `refuelingCapable` enum('Yes','No') CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT 'No',
  `maxCartsAccepted` int NOT NULL,
  `stationName` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`gateNo`),
  KEY `stationName` (`stationName`),
  CONSTRAINT `gate_ibfk_1` FOREIGN KEY (`stationName`) REFERENCES `station` (`stationName`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `limit_to_carts` CHECK ((`maxCartsAccepted` <= 100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

CREATE TABLE `maintenancelog` (
  `maintainLogID` bigint NOT NULL,
  `maintainType` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `maintainDate` date NOT NULL,
  `maintainPerformBy` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `cost` int NOT NULL,
  `supervisedBy` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `cartNo` bigint NOT NULL,
  PRIMARY KEY (`maintainLogID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

CREATE TABLE `schedule` (
  `trainNo` decimal(4,1) DEFAULT NULL,
  `arrivalTime` datetime DEFAULT NULL,
  `departureTime` datetime DEFAULT NULL,
  `routeStatus` varchar(9) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Column_5` datetime DEFAULT NULL,
  `Column_6` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `station` (
  `stationName` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT 'London Station',
  `location` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`stationName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

CREATE TABLE `train` (
  `trainNo` bigint NOT NULL,
  `rdyForUtil` enum('Yes','yes','no','No') CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT 'No',
  `stationName` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`trainNo`),
  KEY `stationName` (`stationName`),
  CONSTRAINT `stationName` FOREIGN KEY (`stationName`) REFERENCES `station` (`stationName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;



