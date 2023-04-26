SELECT *
FROM customers

ALTER TABLE customers
ALTER COLUMN soDienThoai char(10)

INSERT INTO customers
VALUES(N'Trần Văn Dũng', NULL, N'Như Hòa - Kim Sơn - Ninh Bình', 1, '2001-08-30')

SELECT hoTen, maKhachHang, soDienThoai
FROM customers
WHERE soDienThoai  = NULL
ORDER BY hoTen, maKhachHang
--Result: empty

SELECT *
FROM customers
WHERE soDienThoai IS NULL

SELECT *
FROM customers
WHERE soDienThoai IS NOT NULL

--Note: phone = NULL -> UNKNOWN