DECLARE
  ageT customers.age%TYPE := :Enter_Age;
  age_exception EXCEPTION;
BEGIN
  IF ageT < 18 THEN
    RAISE age_exception;
  ELSE
    INSERT INTO customers (CUSTOMER_ID, age, fullname, address) VALUES (46, ageT, 'Sanya milo', 'Qaskelen');
  END IF;
EXCEPTION
  WHEN age_exception THEN
    DBMS_OUTPUT.PUT_LINE('Error: Customer has to be older than 18.');
END;

select * from customers
