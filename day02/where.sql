SELECT *
FROM customers

SELECT *
FROM customers
WHERE gioiTinh = 1

SELECT *
FROM customers
WHERE YEAR(ngaySinh) > '2001' AND gioiTinh = 1
ORDER BY maKhachHang DESC

SELECT *
FROM customers
WHERE hoTen = N'Tuấn'
ORDER BY maKhachHang DESC

SELECT *
FROM customers
WHERE YEAR
(ngaySinh) > '2001' OR gioiTinh = 1

SELECT *
FROM customers
WHERE hoTen IN (N'Tuấn', N'Anh')

--Not case sensitive
SELECT *
FROM customers
WHERE hoTen LIKE '%v%'
--Trần Văn Dũng
--Quách Văn Minh

SELECT *
FROM customers
WHERE hoTen LIKE 'T%'
--Tuấn, Trần