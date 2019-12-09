--some
--query
SELECT OrderNumber, TotalAmount, FirstName, LastName, City, Country
  FROM Customer C LEFT JOIN [Order] O
    ON O.CustomerId = C.Id --comment new
ORDER BY TotalAmount
