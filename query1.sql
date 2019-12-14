SELECT OrderNumber, TotalAmount, FirstName, LastName, City, Country
  FROM Customer C LEFT JOIN [Order] O --comment additional
    ON O.CustomerId = C.Id
ORDER BY TotalAmount
