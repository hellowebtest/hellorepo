SELECT OrderNumber, TotalAmount, FirstName, LastName, City, Country
  FROM Customer C LEFT JOIN [Order] O
    ON O.CustomerId = C.Id
ORDER BY TotalAmount
