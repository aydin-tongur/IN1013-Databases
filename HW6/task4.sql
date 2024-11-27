
-- 1
SELECT DISTINCT b.cust_name
FROM restBill b
JOIN restStaff s ON b.waiter_no = s.staff_no
WHERE b.bill_total > 450.00 
  AND s.headwaiter = (SELECT staff_no FROM restStaff WHERE first_name = 'Charles');

-- 2
SELECT hs.first_name, hs.surname
FROM restBill b
JOIN restStaff w ON b.waiter_no = w.staff_no
JOIN restStaff hs ON w.headwaiter = hs.staff_no
WHERE b.cust_name = 'Nerida Smith' AND b.bill_date = 160111;

-- 3
SELECT cust_name
FROM restBill
WHERE bill_total = (SELECT MIN(bill_total) FROM restBill);

-- 4
SELECT first_name, surname
FROM restStaff
WHERE staff_no NOT IN (SELECT waiter_no FROM restBill);

-- 5
SELECT b.cust_name, hs.first_name AS headwaiter_first, hs.surname AS headwaiter_last, r.room_name
FROM restBill b
JOIN restRest_table t ON b.table_no = t.table_no
JOIN restStaff w ON b.waiter_no = w.staff_no
JOIN restStaff hs ON w.headwaiter = hs.staff_no
WHERE b.bill_total = (SELECT MAX(bill_total) FROM restBill);
