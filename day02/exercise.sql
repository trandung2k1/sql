CREATE TABLE customers
(
    maKhachHang INT IDENTITY(1, 1) PRIMARY KEY,
    hoTen NVARCHAR(40) NOT NULL,
    soDienThoai CHAR(10) NOT NULL,
    diaChi NVARCHAR(50) NOT NULL,
    gioiTinh BIT NOT NULL,
    ngaySinh DATE NOT NULL,
)

INSERT INTO customers
VALUES(N'Trần Văn Dũng', '0866778584', N'Như Hòa - Kim Sơn - Ninh Bình', 1, '2001-08-30'),
    (N'Trần Anh', '0123456789', N'Hà Nội', 1, '2008-10-01'),
    (N'Quách Văn Minh', '0123456789', N'Bắc Ninh', 1, '2005-01-01'),
    (N'Nguyễn Văn Đức', '0123456789', N'Hà Giang', 1, '2010-08-03'),
    (N'Vũ Văn Nam', '0123456789', N'Hà Nam', 1, '1995-05-01')

SELECT *
FROM customers

SELECT hoTen, soDienThoai
FROM customers

UPDATE customers
SET hoTen = N'Tuấn'
WHERE maKhachHang=2

SELECT *
FROM customers
WHERE maKhachHang=2

DELETE FROM customers
WHERE maKhachHang > 3 AND gioiTinh=1

SELECT *
FROM customers
WHERE MONTH(ngaySinh) = 1

UPDATE customers
SET hoTen = N'Anh'
WHERE maKhachHang=4

SELECT *
FROM customers
WHERE (hoTen
IN
(N'Đức', N'Minh', N'Anh') AND gioiTinh = 1) OR YEAR(ngaySinh) < 2000

SELECT *
FROM customers
WHERE YEAR(GETDATE()) - YEAR(ngaySinh) > 18

SELECT TOP 3
    *
FROM customers
ORDER BY maKhachHang DESC


SELECT *
FROM customers
WHERE hoTen LIKE '%T%'

--solutions: check constraint, stored procedure, trigger 
ALTER TABLE customers
ADD CONSTRAINT ck_ngaySinh CHECK(ngaySinh
< GETDATE
())

INSERT INTO customers
VALUES(N'Trần Văn A', '0866778584', N'Như Hòa - Kim Sơn - Ninh Bình', 1, '2023-04-24')

SELECT *
FROM customers