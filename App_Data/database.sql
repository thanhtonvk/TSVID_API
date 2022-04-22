use master
go
create database TSVID
go
use TSVID
go
delete from SinhVien where ID != 10119713
create table SinhVien(
    ID int primary key ,
    MatKhau varchar(20),
    HoTen nvarchar(50) not null ,
    NgaySinh varchar(20),
    NganhHoc nvarchar(50),
    Lop varchar(20),
    KhoaHoc varchar(30),
    Avatar ntext,
    Status bit
)
go
create table HocPhan(
    ID int identity (1000,1) primary key ,
    TenHocPhan nvarchar(50),
    IDSV int not null,
    SoTinChi int,
    HeSo int,
    Ky int,
    NamHoc nvarchar(10),
    Status bit
)
go

create table BangDiem(
    ID int identity (1000,1) primary key ,
    IDSV int not null,
    IDHP int not null,
    LoaiDiem nvarchar(max),
    Diem float,
    ThoiGian date default getdate(),
    Status bit
)
alter proc getBangDiem(@IDSV int,@Ky int,@NamHoc nvarchar(10))
as
begin
select hp.ID,hp.TenHocPhan,hp.SoTinChi,hp.HeSo,bd.Diem,hp.Ky,hp.NamHoc from BangDiem bd, HocPhan hp, SinhVien sv
where hp.ID=bd.IDHP and sv.ID=bd.IDSV and sv.ID=@IDSV and hp.Ky=@Ky and hp.NamHoc=@NamHoc
end
go
exec getBangDiem 10119713,1,'2019-2020'
create proc getBangDiemAll(@IDSV int)
as
begin

select hp.ID,hp.TenHocPhan,hp.SoTinChi,hp.HeSo,bd.Diem,hp.Ky,hp.NamHoc from BangDiem bd, HocPhan hp, SinhVien sv
where hp.ID=bd.IDHP and sv.ID=bd.IDSV and sv.ID=@IDSV
end
exec getBangDiemAll 10119713
select * from BangDiem
// tuần 35
INSERT INTO LichHoc VALUES (10119713,'35','18/04/2022','2',N'Tiết 1 - Tiết 4','7h15-10h55',1001,N'Phòng 312',N'Nguyễn Hoàng Điệp',1)
INSERT INTO LichHoc VALUES (10119713,'35','19/04/2022','3',N'Tiết 1 - Tiết 4','7h15-10h55',1002,N'Phòng 312',N'Nguyễn Minh Tiến',1)
INSERT INTO LichHoc VALUES (10119713,'35','20/04/2022','4',N'Tiết 7 - Tiết 11','12h45-17h15',1001,N'Phòng 307',N'Nguyễn Hoàng Điệp',1)
INSERT INTO LichHoc VALUES (10119713,'35','21/04/2022','5',N'Tiết 1 - Tiết 5','7h15-11h45',1003,N'Phòng 312',N'Nguyễn Hoàng Điệp',1)

// tuần 36
INSERT INTO LichHoc VALUES (10119713,'36','25/04/2022','2',N'Tiết 1 - Tiết 4','7h15-10h55',1001,N'Phòng 312',N'Nguyễn Hoàng Điệp',1)
INSERT INTO LichHoc VALUES (10119713,'36','26/04/2022','3',N'Tiết 1 - Tiết 4','7h15-10h55',1002,N'Phòng 312',N'Nguyễn Minh Tiến',1)
INSERT INTO LichHoc VALUES (10119713,'36','27/04/2022','4',N'Tiết 7 - Tiết 11','12h45-17h15',1001,N'Phòng 307',N'Nguyễn Hoàng Điệp',1)
INSERT INTO LichHoc VALUES (10119713,'36','28/04/2022','5',N'Tiết 1 - Tiết 5','7h15-11h45',1003,N'Phòng 312',N'Nguyễn Hoàng Điệp',1)

// tuần 37
INSERT INTO LichHoc VALUES (10119713,'37','03/05/2022','3',N'Tiết 1 - Tiết 4','7h15-10h55',1002,N'Phòng 312',N'Nguyễn Minh Tiến',1)
INSERT INTO LichHoc VALUES (10119713,'37','04/05/2022','4',N'Tiết 1 - Tiết 4','7h15-10h55',1004,N'Phòng 507',N'Hoàng Thị Giang',1)
INSERT INTO LichHoc VALUES (10119713,'37','06/05/2022','6',N'Tiết 1 - Tiết 4','7h15-10h55',1005,N'Phòng 213',N'Bùi Đức Thọ',1)

// tuần 38
INSERT INTO LichHoc VALUES (10119713,'38','10/05/2022','3',N'Tiết 1 - Tiết 4','7h15-10h55',1002,N'Phòng 312',N'Nguyễn Minh Tiến',1)
INSERT INTO LichHoc VALUES (10119713,'38','11/05/2022','4',N'Tiết 1 - Tiết 4','7h15-10h55',1004,N'Phòng 507',N'Hoàng Thị Giang',1)
INSERT INTO LichHoc VALUES (10119713,'38','13/05/2022','6',N'Tiết 1 - Tiết 4','7h15-10h55',1005,N'Phòng 213',N'Bùi Đức Thọ',1)

// tuần 39
INSERT INTO LichHoc VALUES (10119713,'39','17/05/2022','3',N'Tiết 1 - Tiết 4','7h15-10h55',1002,N'Phòng 312',N'Nguyễn Minh Tiến',1)
INSERT INTO LichHoc VALUES (10119713,'39','18/05/2022','4',N'Tiết 1 - Tiết 4','7h15-10h55',1004,N'Phòng 507',N'Hoàng Thị Giang',1)
INSERT INTO LichHoc VALUES (10119713,'39','21/05/2022','6',N'Tiết 1 - Tiết 4','7h15-10h55',1005,N'Phòng 213',N'Bùi Đức Thọ',1)

// tuần 40
INSERT INTO LichHoc VALUES (10119713,'40','24/05/2022','3',N'Tiết 1 - Tiết 4','7h15-10h55',1002,N'Phòng 312',N'Nguyễn Minh Tiến',1)
INSERT INTO LichHoc VALUES (10119713,'40','25/05/2022','4',N'Tiết 1 - Tiết 4','7h15-10h55',1004,N'Phòng 507',N'Hoàng Thị Giang',1)
INSERT INTO LichHoc VALUES (10119713,'40','28/05/2022','6',N'Tiết 1 - Tiết 4','7h15-10h55',1005,N'Phòng 213',N'Bùi Đức Thọ',1)

create proc getlichhoc(@tuan nvarchar(20), @idsv int, @nam nvarchar(10))
as
begin
select Ngay,Thu,Tiet,ThoiGian,hp.TenHocPhan,Phong,GiaoVien,hp.NamHoc from LichHoc lh, HocPhan hp where lh.IdHP=hp.ID and  Tuan=@tuan and lh.IDSV=@idsv and hp.NamHoc= @nam
end
update SinhVien set Avatar = 'https://firebasestorage.googleapis.com/v0/b/tsvid1.appspot.com/o/z3360181040057_6351056f5956a4c03b9c7fdc47370792.jpg?alt=media&token=920b5a22-f74c-4e97-b9ba-41b599c5f518' where ID = 10119713
exec getlichhoc '35',10119713,'2019-2020'
create table LichHoc(
    ID int identity (1000,1) primary key ,
    IDSV int,
    Tuan nvarchar(20),
    Ngay nvarchar(20),
    Thu nvarchar(20),
    Tiet nvarchar(20),
    ThoiGian nvarchar(20),
    IdHP int,
    Phong nvarchar(20),
    GiaoVien nvarchar(30),
    Status int
)
go

