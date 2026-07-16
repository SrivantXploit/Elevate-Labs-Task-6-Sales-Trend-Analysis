CREATE DATABASE sales_analysis;
USE sales_analysis;
CREATE TABLE online_sales (
    order_id INT PRIMARY KEY,
    order_date DATE NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    product_id INT NOT NULL
);
INSERT INTO online_sales VALUES
(101,'2026-01-05',12000.00,201),
(102,'2026-01-18',8500.00,202),

(103,'2026-02-08',15000.00,203),
(104,'2026-02-25',9500.00,204),

(105,'2026-03-10',18000.00,205),
(106,'2026-03-28',11000.00,206),

(107,'2026-04-07',22000.00,207),
(108,'2026-04-19',13000.00,208),

(109,'2026-05-04',25000.00,209),
(110,'2026-05-22',14500.00,210),

(111,'2026-06-03',28000.00,211),
(112,'2026-06-27',17000.00,212),

(113,'2026-07-09',32000.00,213),
(114,'2026-07-24',18500.00,214),

(115,'2026-08-06',35000.00,215),
(116,'2026-08-30',21000.00,216);
SELECT * FROM online_sales;
SELECT
    YEAR(order_date) AS Year,
    MONTH(order_date) AS Month,
    SUM(amount) AS Total_Revenue,
    COUNT(DISTINCT order_id) AS Total_Orders
FROM online_sales
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY Year, Month;
SELECT
    YEAR(order_date) AS Year,
    MONTH(order_date) AS Month,
    SUM(amount) AS Total_Revenue,
    COUNT(DISTINCT order_id) AS Total_Orders
FROM online_sales
WHERE MONTH(order_date) BETWEEN 5 AND 8
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY Year, Month;
SELECT
    YEAR(order_date) AS Year,
    MONTH(order_date) AS Month,
    SUM(amount) AS Total_Revenue
FROM online_sales
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY Total_Revenue DESC
LIMIT 3;