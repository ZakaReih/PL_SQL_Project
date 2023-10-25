CREATE OR REPLACE FUNCTION count_goods RETURN NUMBER
IS
 
  v_count NUMBER;
BEGIN
  
  SELECT COUNT(*) INTO v_count
  FROM Goods;
 
  RETURN v_count;
END;

SELECT count_goods() as num_goods
FROM dual;
