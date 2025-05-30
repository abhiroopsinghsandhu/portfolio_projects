#Viewing dataset----
use transactions;
SELECT * FROM `sales transaction v.4a`;
#----

#----total sales revenue
SELECT SUM(Price * Quantity) AS Total_Revenue
FROM `sales transaction v.4a`;
#----

#Average order value-----
SELECT AVG(Price * Quantity) AS Average_Order_Value
FROM `sales transaction v.4a`;
#-----

# Top 5 products that sold in highest quantities-----
SELECT ProductName, SUM(Quantity) AS Total_Quantity_Sold FROM `sales transaction v.4a`
GROUP BY ProductName
ORDER BY Total_Quantity_Sold DESC
LIMIT 5;
#-----

# 5 Most revenue generating products----
SELECT ProductName, SUM(Price * Quantity) AS Total_Revenue
FROM `sales transaction v.4a`
GROUP BY ProductName
ORDER BY Total_Revenue DESC
LIMIT 5;
#-----

# 5 customers that reorder most often----
SELECT CustomerNo, COUNT(TransactionNo) AS Purchase_Frequency
FROM `sales transaction v.4a`
WHERE CustomerNo IS NOT NULL
GROUP BY CustomerNo
ORDER BY Purchase_Frequency DESC
LIMIT 5;
#----

# comparison of revenue generated by both countries----
SELECT Country, SUM(Price * Quantity) AS Country_Revenue
FROM `sales transaction v.4a`
GROUP BY Country
ORDER BY Country_Revenue DESC;
#-----

#valuable customers(most revenue generating)----
SELECT CustomerNo, SUM(Price * Quantity) AS Total_Spent
FROM `sales transaction v.4a`
WHERE CustomerNo IS NOT NULL
GROUP BY CustomerNo
ORDER BY Total_Spent DESC
LIMIT 5;
#-----

