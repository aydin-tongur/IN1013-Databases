
-- Task 2: Aggregate Queries

-- 1
SELECT SUM(Bill_Total) AS Income 
FROM Bills;

-- 2
SELECT SUM(Bill_Total) AS "Feb Income" 
FROM Bills 
WHERE Date BETWEEN '160201' AND '160229';

-- 3
SELECT AVG(Bill_Total) 
FROM Bills 
WHERE Table_No = 2;

-- 4
SELECT MIN(Seats) AS Min, MAX(Seats) AS Max, AVG(Seats) AS Avg 
FROM Tables 
WHERE Room = 'Blue';

-- 5
SELECT COUNT(DISTINCT Table_No) 
FROM Service 
WHERE Waiter_No IN ('004', '002');
