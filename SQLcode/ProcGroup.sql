CREATE OR REPLACE PROCEDURE group_customers_by_age
IS
  
  v_age Customers.age%TYPE;
  v_customer_count NUMBER;
 
  CURSOR c_customers IS 
    SELECT age, COUNT(*) AS customer_count
    FROM Customers
    GROUP BY age;
BEGIN
 
  OPEN c_customers;

  LOOP
    FETCH c_customers INTO v_age, v_customer_count;
    EXIT WHEN c_customers%NOTFOUND;
    
    DBMS_OUTPUT.PUT_LINE('Age: '|| v_age ||', Customer Count: ' || v_customer_count);
  END LOOP;

  CLOSE c_customers;
END;


BEGIN
  group_customers_by_age;
END;
