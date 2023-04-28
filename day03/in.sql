SELECT *
FROM customers

SELECT *
from customers
WHERE maKhachHang IN (1, 2, 3)
-- =
SELECT *
FROM customers
WHERE maKhachHang = 1 OR maKhachHang = 2 OR maKhachHang = 3

SELECT *
from customers
WHERE maKhachHang NOT IN (1, 2, 3)
-- =
SELECT *
from customers
WHERE maKhachHang != 1 AND maKhachHang != 2 AND maKhachHang != 3

SELECT maKhachHang
from customers
WHERE gioiTinh = 1 AND YEAR(ngaySinh) > 2000


SELECT hoTen, ngaySinh, gioiTinh, soDienThoai, diaChi
FROM customers
WHERE maKhachHang IN (SELECT maKhachHang
FROM customers
WHERE gioiTinh = 1 AND YEAR(ngaySinh) > 2000)
