CREATE OR REPLACE PROCEDURE update_delivery_price
(
  p_order_id Delivery.Order_id%TYPE,
  p_new_price Delivery.Price%TYPE
)
IS
BEGIN
 
  UPDATE Orders
  SET Price = p_new_price
  WHERE Order_id = p_order_id;
 
  DBMS_OUTPUT.PUT_LINE('Number of rows updated: ' || SQL%ROWCOUNT);
END;

BEGIN
update_delivery_price(1, 2323);
END;
