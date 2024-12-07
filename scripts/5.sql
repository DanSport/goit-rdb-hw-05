USE mydb;
DROP FUNCTION IF EXISTS divide_numbers;
DELIMITER //
CREATE FUNCTION divide_numbers (a FLOAT, b FLOAT) 
RETURNS FLOAT
DETERMINISTIC
BEGIN
    IF b = 0 THEN
        RETURN NULL;
    ELSE
        RETURN a / b;
    END IF;
END //
DELIMITER ;
SELECT order_id, quantity, divide_numbers(quantity, 2) AS result_division FROM order_details;