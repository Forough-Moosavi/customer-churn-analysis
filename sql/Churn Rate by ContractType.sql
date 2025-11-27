SELECT 
    ContractType,
    COUNT(*) AS NumCustomers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS NumChurned,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 1.0 / COUNT(*) AS ChurnRate
FROM customers
GROUP BY ContractType
ORDER BY ChurnRate DESC;
