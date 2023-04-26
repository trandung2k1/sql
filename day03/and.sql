SELECT *
FROM customers

SELECT *
FROM customers
WHERE hoTen = N'Trần Văn Dũng' and maKhachHang = 1

--multiple and
SELECT *
FROM customers
WHERE hoTen = N'Trần Văn Dũng' and maKhachHang = 1 AND gioiTinh = 1

SELECT *
FROM customers
WHERE maKhachHang = 1 OR maKhachHang = 2 AND gioiTinh = 1

--AND more priority OR

SELECT *
FROM customers
WHERE (maKhachHang
= 1 OR maKhachHang = 2) AND gioiTinh = 1