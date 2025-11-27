SELECT 
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS NumChurned
FROM customers;
