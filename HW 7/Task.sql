-- Q1
CREATE VIEW IF NOT EXISTS samsBills AS
SELECT 
    first_name,
    surname,
    bill_date,
    cust_name,
    bill_total
FROM 
    bills
WHERE 
    first_name = 'Sam' AND surname = 'Pitt';

-- Q2
SELECT *
FROM samsBills
WHERE bill_total > 400;

-- Q3
CREATE VIEW IF NOT EXISTS roomTotals AS
SELECT 
    room_name,
    SUM(bill_total) AS total_sum
FROM 
    bills
GROUP BY 
    room_name;

-- Q4
CREATE VIEW IF NOT EXISTS teamTotals AS
SELECT 
    CONCAT(first_name, ' ', surname) AS headwaiter_name,
    SUM(bill_total) AS total_sum
FROM 
    bills
GROUP BY 
    first_name, surname;
