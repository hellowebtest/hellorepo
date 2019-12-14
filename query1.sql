SELECT OrderNumber, TotalAmount, FirstName, LastName, City, Country
--this added
--this too
--this too[2]
WITH
 sales AS
 (SELECT sf.*
  FROM gosalesdw.sls_order_method_dim AS md,
       gosalesdw.sls_product_dim AS pd,
       gosalesdw.emp_employee_dim AS ed,
       gosalesdw.sls_sales_fact AS sf
  WHERE pd.product_key = sf.product_key
    AND pd.product_number > 10000
    AND pd.base_product_key > 30
    AND md.order_method_key = sf.order_method_key
    AND md.order_method_code > 5
    AND ed.employee_key = sf.employee_key
    AND ed.manager_code1 > 20),
 inventory AS
 (SELECT if.*
  FROM gosalesdw.go_branch_dim AS bd,
    gosalesdw.dist_inventory_fact AS if
  WHERE if.branch_key = bd.branch_key
    AND bd.branch_code > 20)
SELECT sales.product_key AS PROD_KEY,
 SUM(CAST (inventory.quantity_shipped AS BIGINT)) AS INV_SHIPPED,
 SUM(CAST (sales.quantity AS BIGINT)) AS PROD_QUANTITY,
 RANK() OVER ( ORDER BY SUM(CAST (sales.quantity AS BIGINT)) DESC) AS PROD_RANK
FROM sales, inventory
 WHERE sales.product_key = inventory.product_key
GROUP BY sales.product_key;
  FROM Customer C LEFT JOIN [Order] O --comment additional
    ON O.CustomerId = C.Id-- this changed

-- sql comment added
+ test
ORDER BY TotalAmount
WITH
 sales AS
 (SELECT sf.*
  FROM gosalesdw.sls_order_method_dim AS md,
       gosalesdw.sls_product_dim AS pd,
       gosalesdw.emp_employee_dim AS ed,
       gosalesdw.sls_sales_fact AS sf
  WHERE pd.product_key = sf.product_key
    AND pd.product_number > 10000
    AND pd.base_product_key > 30
    AND md.order_method_key = sf.order_method_key
    AND md.order_method_code > 5
    AND ed.employee_key = sf.employee_key
    AND ed.manager_code1 > 20),
 inventory AS
 (SELECT if.*
  FROM gosalesdw.go_branch_dim AS bd,
    gosalesdw.dist_inventory_fact AS if
  WHERE if.branch_key = bd.branch_key
    AND bd.branch_code > 20)
SELECT sales.product_key AS PROD_KEY,
 SUM(CAST (inventory.quantity_shipped AS BIGINT)) AS INV_SHIPPED,
 SUM(CAST (sales.quantity AS BIGINT)) AS PROD_QUANTITY,
 RANK() OVER ( ORDER BY SUM(CAST (sales.quantity AS BIGINT)) DESC) AS PROD_RANK
FROM sales, inventory
 WHERE sales.product_key = inventory.product_key
GROUP BY sales.product_key;
WITH
 sales AS
 (SELECT sf.*
  FROM gosalesdw.sls_order_method_dim AS md,
       gosalesdw.sls_product_dim AS pd,
       gosalesdw.emp_employee_dim AS ed,
       gosalesdw.sls_sales_fact AS sf
  WHERE pd.product_key = sf.product_key
    AND pd.product_number > 10000
    AND pd.base_product_key > 30
    AND md.order_method_key = sf.order_method_key
    AND md.order_method_code > 5
    AND ed.employee_key = sf.employee_key
    AND ed.manager_code1 > 20),
 inventory AS
 (SELECT if.*
  FROM gosalesdw.go_branch_dim AS bd,
    gosalesdw.dist_inventory_fact AS if
  WHERE if.branch_key = bd.branch_key
    AND bd.branch_code > 20)
SELECT sales.product_key AS PROD_KEY,
 SUM(CAST (inventory.quantity_shipped AS BIGINT)) AS INV_SHIPPED,
 SUM(CAST (sales.quantity AS BIGINT)) AS PROD_QUANTITY,
 RANK() OVER ( ORDER BY SUM(CAST (sales.quantity AS BIGINT)) DESC) AS PROD_RANK
FROM sales, inventory
 WHERE sales.product_key = inventory.product_key
GROUP BY sales.product_key;
