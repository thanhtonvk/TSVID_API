use master
go
create database TSVID
go
use TSVID
go
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

