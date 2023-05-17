CREATE TABLE aggregate_table AS (
    SELECT
		CustomerID,
		OrderID,
        Date, 
        FullName,
		CustomerCity,
		CustomerState,
		ProdNumber,
		CategoryID,
		CategoryName,
		CategoryAbbreviation,
		ProdName,
		Category, 
        SUM(Quantity) AS TotalQuantity,
        SUM(Quantity*Price) AS TotalRevenue,
        SUM(Price) AS TotalPrice
    FROM
        master_table
    GROUP BY
		CustomerID,
		OrderID,
        Date, 
        FullName,
		CustomerCity,
		CustomerState,
		Quantity,
		ProdNumber,
        ProdName,
		Category, 
		Price,
		CategoryID,
		CategoryName,
		CategoryAbbreviation
);
