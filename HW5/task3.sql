
-- Task 3: Joins

-- 1
SELECT DISTINCT Waiter_Name 
FROM Service 
JOIN Bills ON Service.Bill_No = Bills.Bill_No 
JOIN Customers ON Bills.Customer_ID = Customers.Customer_ID 
WHERE Customers.Name = 'Tanya Singh';

-- 2
SELECT Date 
FROM Room_Management 
WHERE Headwaiter_Name = 'Charles' AND Room = 'Green' 
AND Date BETWEEN '160201' AND '160229';

-- 3
SELECT Waiter_Name, Waiter_Surname 
FROM Waiters 
WHERE Headwaiter_No = (SELECT Headwaiter_No 
                       FROM Waiters 
                       WHERE Name = 'Zoe' AND Surname = 'Ball');

-- 4
SELECT Customers.Name AS Customer_Name, Bills.Bill_Total, Waiters.Name AS Waiter_Name 
FROM Bills 
JOIN Customers ON Bills.Customer_ID = Customers.Customer_ID 
JOIN Service ON Bills.Bill_No = Service.Bill_No 
JOIN Waiters ON Service.Waiter_No = Waiters.Waiter_No 
ORDER BY Bills.Bill_Total DESC;

-- 5
SELECT DISTINCT Waiters.Name, Waiters.Surname 
FROM Waiters 
JOIN Service ON Waiters.Waiter_No = Service.Waiter_No 
WHERE Service.Bill_No IN ('00014', '00017');

-- 6
SELECT DISTINCT Waiters.Name, Waiters.Surname 
FROM Waiters 
JOIN Room_Management ON Waiters.Headwaiter_No = Room_Management.Headwaiter_No 
WHERE Room_Management.Room = 'Blue' AND Room_Management.Date = '160312';
