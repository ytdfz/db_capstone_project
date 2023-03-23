DROP PROCEDURE IF EXISTS GetMaxQuantity;

CREATE PROCEDURE GetMaxQuantity()
SELECT Quantity as 'Max Quantity In Order' FROM Orders
ORDER BY DESC LIMIT 1;
