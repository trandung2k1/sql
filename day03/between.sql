SELECT *
FROM customers

SELECT *
FROM customers
WHERE maKhachHang BETWEEN 1 AND 2

SELECT *
FROM customers
WHERE maKhachHang NOT BETWEEN 1 AND 2

SELECT ngaySinh, hoTen
FROM customers
WHERE YEAR(ngaySinh) BETWEEN 2001 AND 2010

SELECT ngaySinh, hoTen
FROM customers
WHERE ngaySinh BETWEEN '20010830' AND '20100803'

SELECT ngaySinh, hoTen
FROM customers
WHERE ngaySinh BETWEEN '2001-08-30' AND '2010-08-03'
