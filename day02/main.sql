use QLSV

select * from sinhvien

--query use condition
select * from sinhvien
where gioiTinh = 1

--and operator
select * from sinhvien
where gioiTinh = 1 and maSinhVien = '2019603537'

--or operator
select * from sinhvien
where gioiTinh = 1 or maSinhVien = '2019603538'


--CRUD: c - create, r = read, u - update, d - delete

--insert
insert into sinhvien values('2019603536', N'Nam', 1, 21, '0123456789'),
('2019603539', 'Lan', 0, 21, '0123456789')

update sinhvien
set ten =  'Nam Oke'
where ten = 'Nam'

select * from sinhvien
where ten = 'Nam Oke'

delete from sinhvien
where ten = 'Nam Oke'

--primary key and auto increment
create table sv(
	id int identity(1,1) primary key,
	ten nvarchar(20) not null,
	ngaysinh date
)

select getdate()

insert into sv values(N'Dung', '2001-08-30')
select * from sv

insert into sinhvien values('2019603540', 'Lan', 0, 21, '0123456789')

select * from sinhvien
where ten in ('Mai', 'Lan')
