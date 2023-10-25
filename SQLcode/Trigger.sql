CREATE OR REPLACE TRIGGER trg_show_num_rows
BEFORE INSERT ON goods
FOR EACH ROW
DECLARE
  num_rows NUMBER;
BEGIN
  SELECT COUNT(*) INTO num_rows FROM goods;
  DBMS_OUTPUT.PUT_LINE('Current number of rows in the table: ' || num_rows);
END;

insert into goods(GOODS_ID, SUPPLIER_ID, CATEGORY_ID) values(31, 7, 2)

select * from goods
