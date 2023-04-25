use QLSV

select * from sinhvien

--save all record to sinhVienHistory
select * into sinhVienHistory
from sinhvien

select * from sinhVienHistory

select distinct ten from sinhvien

select distinct ten from sinhvien
order by ten desc

select distinct ten, tuoi from sinhvien
--=
select distinct ten, tuoi from sinhvien
group by tuoi, ten
order by ten, tuoi

-- multiple null -> 1 record null