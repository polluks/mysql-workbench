DELIMITER //

CREATE
DEFINER = 'user'@'hostname'
EVENT
IF NOT EXISTS
event2
ON SCHEDULE AT '2006-01-01 23:59:00' + INTERVAL 2 DAY 
ON COMPLETION PRESERVE
DISABLE
COMMENT 'comment1'
DO
BEGIN
INSERT INTO table1(id) values (1);
END //

DELIMITER ;
;
