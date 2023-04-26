SELECT *
FROM customers

SELECT *
FROM customers
WHERE maKhachHang = 1 OR maKhachHang = 2 OR maKhachHang = 3

SELECT *
FROM customers
WHERE YEAR (GETDATE()) - YEAR(ngaySinh) < 10 OR YEAR(GETDATE()) - YEAR(ngaySinh) > 20

SELECT *
FROM customers
WHERE maKhachHang IN (1, 2, 3)

SELECT *
FROM customers
WHERE (maKhachHang = 1 OR maKhachHang = 2) AND YEAR(GETDATE()) - YEAR(ngaySinh) > 20