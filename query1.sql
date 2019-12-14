SELECT OrderNumber, TotalAmount, FirstName, LastName, City, Country
--this added
--this too
--this too[2]
  FROM Customer C LEFT JOIN [Order] O --comment additional
    ON O.CustomerId = C.Id-- this changed

-- sql comment added
+ test
ORDER BY TotalAmount
