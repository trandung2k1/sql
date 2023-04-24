--create database
create database QLSV

go 

use QLSV

go 
--create table
create table sinhvien(
	maSinhVien char(10) primary key,
	ten nvarchar(50) not null,
	gioiTinh bit not null,
	tuoi int not null,
	soDienThoai char(15) not null
)
--Comment nu: 0; nam: 1

--insert to table
insert into sinhvien values('2019603537', N'Dũng', 1, 21, '0866778584')
insert into sinhvien values('2019603538', N'Mai', 0, 21, '0346588890')

--select all record and all column
select * from sinhvien

--select n record
select  top 2 * from sinhvien

--select column
select maSinhVien from sinhvien
select maSinhVien, ten from sinhvien
--get current database system date and time
select getdate();
