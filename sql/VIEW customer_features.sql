CREATE VIEW customer_features AS
SELECT
    CustomerID,
    Gender,
    Age,
    TenureMonths,
    ContractType,
    PaymentMethod,
    MonthlyCharges,
    TotalCharges,
    HasOnlineSupport,
    HasPhoneService,
    HasExtraServices,
    Churn
FROM customers;
