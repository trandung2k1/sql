SELECT *
FROM customers

SELECT convert(nvarchar(255),maKhachHang) + ' ' + hoTen as Info
FROM customers

SELECT convert(nvarchar(255),maKhachHang) + ' ' + hoTen Info
FROM customers

SELECT convert(nvarchar(255),maKhachHang) + ' ' + hoTen as 'Thông tin'
FROM customers

SELECT convert(nvarchar(255),maKhachHang) + ' ' + hoTen 'Thông tin'
FROM customers

SELECT maKhachHang as 'id', hoTen
FROM customers
ORDER BY 'id' DESC