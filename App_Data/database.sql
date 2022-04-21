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
create table Diem(
    ID int identity (1000,1) primary key ,
    IDSV int not null,
    IDHP int not null,
    Status bit
)
go
create table ChiTietDiem(
    ID int identity (1000,1) primary key ,
    IDDiem int not null,
    LoaiDiem nvarchar(max),
    Diem float,
    ThoiGian date default getdate(),
    Status bit
)
go
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

