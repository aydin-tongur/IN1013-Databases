
-- 1
SELECT s.first_name, s.surname, b.bill_date, COUNT(*) AS bill_count
FROM restBill b
JOIN restStaff s ON b.waiter_no = s.staff_no
GROUP BY s.staff_no, b.bill_date
HAVING COUNT(*) >= 2;

-- 2
SELECT room_name, COUNT(*) AS num_tables
FROM restRest_table
WHERE no_of_seats > 6
GROUP BY room_name;

-- 3
SELECT t.room_name, SUM(b.bill_total) AS total_bill_amount
FROM restBill b
JOIN restRest_table t ON b.table_no = t.table_no
GROUP BY t.room_name;

-- 4
SELECT hs.first_name, hs.surname, SUM(b.bill_total) AS total_bill_amount
FROM restBill b
JOIN restStaff w ON b.waiter_no = w.staff_no
JOIN restStaff hs ON w.headwaiter = hs.staff_no
GROUP BY hs.staff_no
ORDER BY total_bill_amount DESC;

-- 5
SELECT cust_name
FROM restBill
GROUP BY cust_name
HAVING AVG(bill_total) > 400;

-- 6
SELECT s.first_name, s.surname, COUNT(*) AS bill_count
FROM restBill b
JOIN restStaff s ON b.waiter_no = s.staff_no
GROUP BY s.staff_no, b.bill_date
HAVING COUNT(*) >= 3;
