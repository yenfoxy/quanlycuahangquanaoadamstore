USE [master]
GO
/****** Object:  Database [KHO_ADAM]    Script Date: 6/12/2022 1:11:50 PM ******/
CREATE DATABASE [KHO_ADAM]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KHO_ADAM', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\KHO_ADAM.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'KHO_ADAM_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\KHO_ADAM_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [KHO_ADAM] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KHO_ADAM].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KHO_ADAM] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KHO_ADAM] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KHO_ADAM] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KHO_ADAM] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KHO_ADAM] SET ARITHABORT OFF 
GO
ALTER DATABASE [KHO_ADAM] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [KHO_ADAM] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KHO_ADAM] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KHO_ADAM] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KHO_ADAM] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KHO_ADAM] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KHO_ADAM] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KHO_ADAM] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KHO_ADAM] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KHO_ADAM] SET  ENABLE_BROKER 
GO
ALTER DATABASE [KHO_ADAM] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KHO_ADAM] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KHO_ADAM] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KHO_ADAM] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KHO_ADAM] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KHO_ADAM] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KHO_ADAM] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KHO_ADAM] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [KHO_ADAM] SET  MULTI_USER 
GO
ALTER DATABASE [KHO_ADAM] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KHO_ADAM] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KHO_ADAM] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KHO_ADAM] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [KHO_ADAM] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [KHO_ADAM] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'KHO_ADAM', N'ON'
GO
ALTER DATABASE [KHO_ADAM] SET QUERY_STORE = OFF
GO
USE [KHO_ADAM]
GO
/****** Object:  Table [dbo].[ChiTietPhieuXuat]    Script Date: 6/12/2022 1:11:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuXuat](
	[MaCTPX] [nvarchar](50) NOT NULL,
	[MaPX] [nvarchar](50) NULL,
	[MaHang] [nvarchar](50) NULL,
	[MaNV] [nvarchar](50) NULL,
	[Size] [nvarchar](50) NULL,
	[SoLuongXuat] [nvarchar](50) NULL,
	[DonGiaXuat] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCTPX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietPN]    Script Date: 6/12/2022 1:11:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPN](
	[MaCTPN] [nvarchar](50) NOT NULL,
	[MaPN] [nvarchar](50) NULL,
	[MaHang] [nvarchar](50) NULL,
	[MaNV] [nvarchar](50) NULL,
	[Size] [nvarchar](50) NULL,
	[SoLuongNhap] [int] NULL,
	[DonGiaNhap] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCTPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DangNhap]    Script Date: 6/12/2022 1:11:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DangNhap](
	[MaTK] [int] NOT NULL,
	[TaiKhoan] [nvarchar](30) NULL,
	[password] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hang]    Script Date: 6/12/2022 1:11:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hang](
	[MaHang] [nvarchar](50) NOT NULL,
	[MaNhaCC] [nvarchar](50) NULL,
	[MaLoai] [nvarchar](50) NULL,
	[TenHang] [nvarchar](150) NULL,
	[Size] [nvarchar](50) NULL,
	[SoLuong] [int] NULL,
	[DonGia] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 6/12/2022 1:11:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoai] [nvarchar](50) NOT NULL,
	[TenLoai] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCC]    Script Date: 6/12/2022 1:11:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCC](
	[MaNhaCC] [nvarchar](50) NOT NULL,
	[TenNCC] [nvarchar](30) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[DienThoai] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNhaCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 6/12/2022 1:11:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [nvarchar](50) NOT NULL,
	[TenNV] [nvarchar](30) NULL,
	[ngaysinh] [date] NULL,
	[gioitinh] [nvarchar](50) NULL,
	[diachi] [nvarchar](50) NULL,
	[dienthoai] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 6/12/2022 1:11:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[MaPN] [nvarchar](50) NOT NULL,
	[MaNhaCC] [nvarchar](50) NULL,
	[NgayNhap] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuXuat]    Script Date: 6/12/2022 1:11:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuXuat](
	[MaPX] [nvarchar](50) NOT NULL,
	[NgayXuat] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ChiTietPhieuXuat] ([MaCTPX], [MaPX], [MaHang], [MaNV], [Size], [SoLuongXuat], [DonGiaXuat]) VALUES (N'CTPX01', N'PX02', N'H03', N'NV01', N'XL', N'10', N'200000')
INSERT [dbo].[ChiTietPhieuXuat] ([MaCTPX], [MaPX], [MaHang], [MaNV], [Size], [SoLuongXuat], [DonGiaXuat]) VALUES (N'CTPX02', N'PX01', N'H04', N'NV02', N'L', N'10', N'30000')
INSERT [dbo].[ChiTietPhieuXuat] ([MaCTPX], [MaPX], [MaHang], [MaNV], [Size], [SoLuongXuat], [DonGiaXuat]) VALUES (N'CTPX03', N'PX01', N'H03', N'NV03', N'XL', N'100', N'20000')
INSERT [dbo].[ChiTietPhieuXuat] ([MaCTPX], [MaPX], [MaHang], [MaNV], [Size], [SoLuongXuat], [DonGiaXuat]) VALUES (N'CTPX04', N'PX01', N'H05', N'NV04', N'XXL', N'20', N'30000')
INSERT [dbo].[ChiTietPhieuXuat] ([MaCTPX], [MaPX], [MaHang], [MaNV], [Size], [SoLuongXuat], [DonGiaXuat]) VALUES (N'CTPX05', N'PX01', N'H04', N'NV03', N'XXL', N'30', N'200000')
INSERT [dbo].[ChiTietPhieuXuat] ([MaCTPX], [MaPX], [MaHang], [MaNV], [Size], [SoLuongXuat], [DonGiaXuat]) VALUES (N'CTPX07', N'PX06', N'H04', N'NV04', N'L', N'100', N'10')
GO
INSERT [dbo].[ChiTietPN] ([MaCTPN], [MaPN], [MaHang], [MaNV], [Size], [SoLuongNhap], [DonGiaNhap]) VALUES (N'CTPN01', N'PN02', N'H01', N'NV01', N'XL', 200, 1000000)
INSERT [dbo].[ChiTietPN] ([MaCTPN], [MaPN], [MaHang], [MaNV], [Size], [SoLuongNhap], [DonGiaNhap]) VALUES (N'CTPN02', N'PN03', N'H01', N'NV03', N'L', 10, 200000)
INSERT [dbo].[ChiTietPN] ([MaCTPN], [MaPN], [MaHang], [MaNV], [Size], [SoLuongNhap], [DonGiaNhap]) VALUES (N'CTPN03', N'PN04', N'H05', N'NV04', N'L', 10, 200000)
INSERT [dbo].[ChiTietPN] ([MaCTPN], [MaPN], [MaHang], [MaNV], [Size], [SoLuongNhap], [DonGiaNhap]) VALUES (N'CTPN04', N'PN04', N'H04', N'NV04', N'L', 10, 3000000)
INSERT [dbo].[ChiTietPN] ([MaCTPN], [MaPN], [MaHang], [MaNV], [Size], [SoLuongNhap], [DonGiaNhap]) VALUES (N'CTPN05', N'PN02', N'H07', N'NV06', N'L', 100, 2000000)
INSERT [dbo].[ChiTietPN] ([MaCTPN], [MaPN], [MaHang], [MaNV], [Size], [SoLuongNhap], [DonGiaNhap]) VALUES (N'CTPN06', N'PN04', N'H01', N'NV01', N'L', 10, 3000000)
INSERT [dbo].[ChiTietPN] ([MaCTPN], [MaPN], [MaHang], [MaNV], [Size], [SoLuongNhap], [DonGiaNhap]) VALUES (N'CTPN07', N'PN04', N'H05', N'NV05', N'XL', 200, 250000)
INSERT [dbo].[ChiTietPN] ([MaCTPN], [MaPN], [MaHang], [MaNV], [Size], [SoLuongNhap], [DonGiaNhap]) VALUES (N'CTPN09', N'PN09', N'H05', N'NV04', N'XXL', 30, 100000)
GO
INSERT [dbo].[DangNhap] ([MaTK], [TaiKhoan], [password]) VALUES (1, N'huy', N'123')
GO
INSERT [dbo].[Hang] ([MaHang], [MaNhaCC], [MaLoai], [TenHang], [Size], [SoLuong], [DonGia]) VALUES (N'H01', N'NCC02', N'L03', N'ÁO LEN THU ĐÔNG', N'L', 270, 300000)
INSERT [dbo].[Hang] ([MaHang], [MaNhaCC], [MaLoai], [TenHang], [Size], [SoLuong], [DonGia]) VALUES (N'H02', N'NCC04', N'L05', N'SO MI TRANG', N'L', 100, 250000)
INSERT [dbo].[Hang] ([MaHang], [MaNhaCC], [MaLoai], [TenHang], [Size], [SoLuong], [DonGia]) VALUES (N'H03', N'NCC03', N'L04', N'ÁO PHÔNG ÐEN TRON', N'XL', 100, 450000)
INSERT [dbo].[Hang] ([MaHang], [MaNhaCC], [MaLoai], [TenHang], [Size], [SoLuong], [DonGia]) VALUES (N'H04', N'NCC04', N'L06', N'QUAN XANH RÊU', N'L', 100, 750000)
INSERT [dbo].[Hang] ([MaHang], [MaNhaCC], [MaLoai], [TenHang], [Size], [SoLuong], [DonGia]) VALUES (N'H05', N'NCC01', N'L06', N'QUẦN XƯỚC KẺ', N'L', 100, 750000)
INSERT [dbo].[Hang] ([MaHang], [MaNhaCC], [MaLoai], [TenHang], [Size], [SoLuong], [DonGia]) VALUES (N'H07', N'NCC05', N'L05', N'CARAVAT XANH ÐEN', N'KHONG', 100, 75000)
INSERT [dbo].[Hang] ([MaHang], [MaNhaCC], [MaLoai], [TenHang], [Size], [SoLuong], [DonGia]) VALUES (N'H08', N'NCC02', N'L04', N'QUAN SOC HONG', N'L', 100, 750000)
INSERT [dbo].[Hang] ([MaHang], [MaNhaCC], [MaLoai], [TenHang], [Size], [SoLuong], [DonGia]) VALUES (N'H10', N'NCC04', N'L05', N'SO MI TRANG', N'L', 100, 250000)
INSERT [dbo].[Hang] ([MaHang], [MaNhaCC], [MaLoai], [TenHang], [Size], [SoLuong], [DonGia]) VALUES (N'H11', N'NCC05', N'L04', N'QUAN HOA', N'XL', 200, 750000)
GO
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai]) VALUES (N'aaaa', N'aaaa')
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai]) VALUES (N'L01', N' ÁO NAM')
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai]) VALUES (N'L02', N'ÁO DA NAM')
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai]) VALUES (N'L03', N'ÁO LEN')
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai]) VALUES (N'L04', N'ÁO THUN')
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai]) VALUES (N'L05', N'GIÀY DA NAM')
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai]) VALUES (N'L06', N'QUẦN ÂU NAM')
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai]) VALUES (N'L07', N'PHỤ KIỆN')
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai]) VALUES (N'L08', N'VEST')
GO
INSERT [dbo].[NhaCC] ([MaNhaCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'NCC01', N'HANOiMAY', N'Ha Noi', N'0345632752')
INSERT [dbo].[NhaCC] ([MaNhaCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'NCC02', N'HAIPHONGMAY', N'Hai Phong', N'0325124553')
INSERT [dbo].[NhaCC] ([MaNhaCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'NCC03', N'HUEMAY', N'Hue', N'0311251468')
INSERT [dbo].[NhaCC] ([MaNhaCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'NCC04', N'HCMMAY', N'TP HCM', N'0355124132')
INSERT [dbo].[NhaCC] ([MaNhaCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'NCC05', N'HOASEN', N'THAI NGUYEN', N'0312451235')
INSERT [dbo].[NhaCC] ([MaNhaCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'NCC06', N'HOAHONG', N'THAI NGUYEN', N'0312451235')
INSERT [dbo].[NhaCC] ([MaNhaCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'NCC07', N'HOALAN', N'VINH PHUC', N'0312451235')
INSERT [dbo].[NhaCC] ([MaNhaCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'NCC08', N'HOALY', N'CAMAU', N'0312451235')
GO
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [ngaysinh], [gioitinh], [diachi], [dienthoai]) VALUES (N'NV01', N'DAO QUANG HUY', CAST(N'2000-02-22' AS Date), N'NAM', N'Thai Nguyen', N'0345123145')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [ngaysinh], [gioitinh], [diachi], [dienthoai]) VALUES (N'NV02', N'TRAN HOANG', CAST(N'2000-12-12' AS Date), N'NAM', N'HA NOI', N'0312456125')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [ngaysinh], [gioitinh], [diachi], [dienthoai]) VALUES (N'NV03', N'THAI CONG', CAST(N'1999-11-05' AS Date), N'NAM', N'HUE', N'0312456789')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [ngaysinh], [gioitinh], [diachi], [dienthoai]) VALUES (N'NV04', N'QUYNH NHU', CAST(N'1989-02-15' AS Date), N'NU', N'HO\A NOI', N'0312456789')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [ngaysinh], [gioitinh], [diachi], [dienthoai]) VALUES (N'NV05', N'QUYNH NHU', CAST(N'1989-02-13' AS Date), N'nu', N'hà nội', N'0312456789')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [ngaysinh], [gioitinh], [diachi], [dienthoai]) VALUES (N'NV06', N'Thu uyen', CAST(N'1998-11-25' AS Date), N'nu', N'Ha Noi', N'0312456789')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [ngaysinh], [gioitinh], [diachi], [dienthoai]) VALUES (N'NV07', N'hoa', CAST(N'1999-06-22' AS Date), N'nu', N'Ha Noi', N'0312456789')
GO
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNhaCC], [NgayNhap]) VALUES (N'PN01', N'NCC03', CAST(N'2020-12-23' AS Date))
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNhaCC], [NgayNhap]) VALUES (N'PN02', N'NCC05', CAST(N'2020-10-10' AS Date))
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNhaCC], [NgayNhap]) VALUES (N'PN03', N'NCC05', CAST(N'2020-11-09' AS Date))
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNhaCC], [NgayNhap]) VALUES (N'PN04', N'NCC06', CAST(N'2020-05-07' AS Date))
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNhaCC], [NgayNhap]) VALUES (N'PN05', N'NCC01', CAST(N'2020-05-18' AS Date))
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNhaCC], [NgayNhap]) VALUES (N'PN06', N'NCC01', CAST(N'2020-05-07' AS Date))
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNhaCC], [NgayNhap]) VALUES (N'PN08', N'NCC07', CAST(N'2021-01-14' AS Date))
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNhaCC], [NgayNhap]) VALUES (N'PN09', N'NCC01', CAST(N'2021-01-14' AS Date))
GO
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayXuat]) VALUES (N'PX01', CAST(N'2020-01-20' AS Date))
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayXuat]) VALUES (N'PX02', CAST(N'2020-02-24' AS Date))
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayXuat]) VALUES (N'PX03', CAST(N'2020-12-01' AS Date))
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayXuat]) VALUES (N'PX04', CAST(N'2020-12-01' AS Date))
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayXuat]) VALUES (N'PX05', CAST(N'2333-01-23' AS Date))
INSERT [dbo].[PhieuXuat] ([MaPX], [NgayXuat]) VALUES (N'PX06', CAST(N'2020-12-21' AS Date))
GO
ALTER TABLE [dbo].[ChiTietPhieuXuat]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuXuat_Hang] FOREIGN KEY([MaHang])
REFERENCES [dbo].[Hang] ([MaHang])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietPhieuXuat] CHECK CONSTRAINT [FK_ChiTietPhieuXuat_Hang]
GO
ALTER TABLE [dbo].[ChiTietPhieuXuat]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuXuat_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietPhieuXuat] CHECK CONSTRAINT [FK_ChiTietPhieuXuat_NhanVien]
GO
ALTER TABLE [dbo].[ChiTietPhieuXuat]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuXuat_PhieuXuat] FOREIGN KEY([MaPX])
REFERENCES [dbo].[PhieuXuat] ([MaPX])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietPhieuXuat] CHECK CONSTRAINT [FK_ChiTietPhieuXuat_PhieuXuat]
GO
ALTER TABLE [dbo].[ChiTietPN]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPN_Hang] FOREIGN KEY([MaHang])
REFERENCES [dbo].[Hang] ([MaHang])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietPN] CHECK CONSTRAINT [FK_ChiTietPN_Hang]
GO
ALTER TABLE [dbo].[ChiTietPN]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPN_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietPN] CHECK CONSTRAINT [FK_ChiTietPN_NhanVien]
GO
ALTER TABLE [dbo].[ChiTietPN]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPN_PhieuNhap] FOREIGN KEY([MaPN])
REFERENCES [dbo].[PhieuNhap] ([MaPN])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietPN] CHECK CONSTRAINT [FK_ChiTietPN_PhieuNhap]
GO
ALTER TABLE [dbo].[Hang]  WITH CHECK ADD  CONSTRAINT [FK_Hang_LoaiSanPham] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LoaiSanPham] ([MaLoai])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Hang] CHECK CONSTRAINT [FK_Hang_LoaiSanPham]
GO
ALTER TABLE [dbo].[Hang]  WITH CHECK ADD  CONSTRAINT [FK_Hang_NhaCC] FOREIGN KEY([MaNhaCC])
REFERENCES [dbo].[NhaCC] ([MaNhaCC])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Hang] CHECK CONSTRAINT [FK_Hang_NhaCC]
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhap_NhaCC] FOREIGN KEY([MaNhaCC])
REFERENCES [dbo].[NhaCC] ([MaNhaCC])
ON UPDATE SET NULL
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_PhieuNhap_NhaCC]
GO
USE [master]
GO
ALTER DATABASE [KHO_ADAM] SET  READ_WRITE 
GO
