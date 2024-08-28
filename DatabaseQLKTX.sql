USE [DataQLKTX]
GO
/****** Object:  Table [dbo].[CHITIETHOADON]    Script Date: 8/28/2024 3:04:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETHOADON](
	[MaHD] [nvarchar](100) NOT NULL,
	[MaDV] [nvarchar](100) NOT NULL,
	[SoLuong] [int] NULL,
	[ChiSoDau] [int] NULL,
	[ChiSoCuoi] [int] NULL,
 CONSTRAINT [PK_CHITIETHOADONDVBV] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaDV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DICHVU]    Script Date: 8/28/2024 3:04:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DICHVU](
	[MaDV] [nvarchar](100) NOT NULL,
	[TenDichVuBatBuoc] [nvarchar](50) NULL,
	[DonGia] [float] NULL,
	[DVT] [nvarchar](50) NULL,
	[LoaiDichVu] [nvarchar](50) NULL,
 CONSTRAINT [PK_DICHVUBATBUOC] PRIMARY KEY CLUSTERED 
(
	[MaDV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 8/28/2024 3:04:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON](
	[MaHD] [nvarchar](100) NOT NULL,
	[NgayLapHD] [date] NULL,
	[PhuongThucThanhToan] [nvarchar](50) NULL,
	[TrangThai] [nvarchar](50) NULL,
	[MaPhong] [nvarchar](100) NULL,
	[IDNhanVien] [nvarchar](100) NULL,
 CONSTRAINT [PK_HOADONDVBATBUOC] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOPDONG]    Script Date: 8/28/2024 3:04:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOPDONG](
	[SoHopDong] [nvarchar](100) NOT NULL,
	[NgayLap] [date] NULL,
	[ThoiGianBatDau] [date] NULL,
	[ThoiGianKetThuc] [date] NULL,
	[TrangThai] [nvarchar](50) NULL,
	[PhuongThucThanhToan] [nvarchar](50) NULL,
	[IDNhanVien] [nvarchar](100) NULL,
	[MSSV] [nvarchar](10) NULL,
	[MaPhong] [nvarchar](100) NULL,
 CONSTRAINT [PK_HOPDONG] PRIMARY KEY CLUSTERED 
(
	[SoHopDong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 8/28/2024 3:04:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[IDNhanVien] [nvarchar](100) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[SDT] [nvarchar](10) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[ChucVu] [nvarchar](50) NULL,
	[IDUser] [nvarchar](100) NULL,
 CONSTRAINT [PK_NHANVIEN] PRIMARY KEY CLUSTERED 
(
	[IDNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHONG]    Script Date: 8/28/2024 3:04:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHONG](
	[MaPhong] [nvarchar](100) NOT NULL,
	[TenPhong] [nvarchar](10) NULL,
	[Khu] [nvarchar](10) NULL,
	[Tang] [nvarchar](10) NULL,
	[SoGiuong] [int] NULL,
	[SoNguoiO] [int] NULL,
 CONSTRAINT [PK_PHONG] PRIMARY KEY CLUSTERED 
(
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHUHUYNH]    Script Date: 8/28/2024 3:04:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHUHUYNH](
	[IDPhuHuynh] [nvarchar](100) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[NgheNghiep] [nvarchar](50) NULL,
	[SDT] [nvarchar](10) NULL,
	[QuanHe] [nvarchar](20) NULL,
	[MSSV] [nvarchar](10) NULL,
 CONSTRAINT [PK_PHUHUYNH] PRIMARY KEY CLUSTERED 
(
	[IDPhuHuynh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SINHVIEN]    Script Date: 8/28/2024 3:04:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SINHVIEN](
	[MSSV] [nvarchar](10) NOT NULL,
	[TenSinhVien] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [nvarchar](10) NULL,
	[Lop] [nvarchar](50) NULL,
	[Khoa] [nvarchar](50) NULL,
	[SoCCCD] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [nvarchar](10) NULL,
	[IDUser] [nvarchar](100) NULL,
 CONSTRAINT [PK_SINHVIEN] PRIMARY KEY CLUSTERED 
(
	[MSSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TAIKHOAN]    Script Date: 8/28/2024 3:04:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAIKHOAN](
	[IDUser] [nvarchar](100) NOT NULL,
	[TenDangNhap] [nvarchar](50) NULL,
	[MatKhau] [nvarchar](20) NULL,
	[Email] [nvarchar](50) NULL,
	[ConfirmPassword] [nvarchar](20) NULL,
	[EmailDaXacMinh] [bit] NULL,
	[VaiTro] [nvarchar](10) NULL,
 CONSTRAINT [PK_TAIKHOAN] PRIMARY KEY CLUSTERED 
(
	[IDUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongBao]    Script Date: 8/28/2024 3:04:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongBao](
	[MaThongBao] [nvarchar](100) NOT NULL,
	[NoiDung] [nvarchar](100) NULL,
	[ThoiGianThongBao] [datetime] NULL,
	[TrangThaiThongBao] [bit] NULL,
	[LoaiThongBao] [nvarchar](50) NULL,
	[IDUser] [nvarchar](100) NULL,
 CONSTRAINT [PK_ThongBao] PRIMARY KEY CLUSTERED 
(
	[MaThongBao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaDV], [SoLuong], [ChiSoDau], [ChiSoCuoi]) VALUES (N'14b4915e-271a-4464-80a6-7af726a2c432', N'34184399-8186-4adf-b7fd-ddec6897cb5e', NULL, 237, 278)
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaDV], [SoLuong], [ChiSoDau], [ChiSoCuoi]) VALUES (N'14b4915e-271a-4464-80a6-7af726a2c432', N'dcfbf29e-bcc3-4c61-a44a-ea41cef0b55d', NULL, 12789, 13000)
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaDV], [SoLuong], [ChiSoDau], [ChiSoCuoi]) VALUES (N'14b4915e-271a-4464-80a6-7af726a2c432', N'dd3791cb-3070-4b3a-b3f1-64c1fbb5916a', NULL, NULL, NULL)
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaDV], [SoLuong], [ChiSoDau], [ChiSoCuoi]) VALUES (N'5e284672-724b-492a-9d7c-9f3fd561e66e', N'11b10723-38d8-4c45-a530-7741f1a81bf2', 2, NULL, NULL)
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaDV], [SoLuong], [ChiSoDau], [ChiSoCuoi]) VALUES (N'5e284672-724b-492a-9d7c-9f3fd561e66e', N'34184399-8186-4adf-b7fd-ddec6897cb5e', NULL, 145, 152)
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaDV], [SoLuong], [ChiSoDau], [ChiSoCuoi]) VALUES (N'5e284672-724b-492a-9d7c-9f3fd561e66e', N'dcfbf29e-bcc3-4c61-a44a-ea41cef0b55d', NULL, 12740, 12780)
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaDV], [SoLuong], [ChiSoDau], [ChiSoCuoi]) VALUES (N'5e284672-724b-492a-9d7c-9f3fd561e66e', N'dd3791cb-3070-4b3a-b3f1-64c1fbb5916a', NULL, NULL, NULL)
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaDV], [SoLuong], [ChiSoDau], [ChiSoCuoi]) VALUES (N'84ebd48d-9e6f-4bba-9185-68d44c7e920d', N'11b10723-38d8-4c45-a530-7741f1a81bf2', 1, NULL, NULL)
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaDV], [SoLuong], [ChiSoDau], [ChiSoCuoi]) VALUES (N'84ebd48d-9e6f-4bba-9185-68d44c7e920d', N'f680db71-d028-4b4d-90a5-01e6a921157e', 2, NULL, NULL)
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaDV], [SoLuong], [ChiSoDau], [ChiSoCuoi]) VALUES (N'8722d0bf-930d-4a27-987e-95024336712a', N'11b10723-38d8-4c45-a530-7741f1a81bf2', 4, NULL, NULL)
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaDV], [SoLuong], [ChiSoDau], [ChiSoCuoi]) VALUES (N'8722d0bf-930d-4a27-987e-95024336712a', N'b2af43da-ad9c-4548-9b24-5db24cdac4bb', 1, NULL, NULL)
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaDV], [SoLuong], [ChiSoDau], [ChiSoCuoi]) VALUES (N'96d16575-7109-411e-a283-8aff82bceff9', N'34184399-8186-4adf-b7fd-ddec6897cb5e', NULL, 234, 456)
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaDV], [SoLuong], [ChiSoDau], [ChiSoCuoi]) VALUES (N'96d16575-7109-411e-a283-8aff82bceff9', N'dcfbf29e-bcc3-4c61-a44a-ea41cef0b55d', NULL, 12670, 12690)
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaDV], [SoLuong], [ChiSoDau], [ChiSoCuoi]) VALUES (N'c79c70d7-3b6f-441f-b2d7-ab0e88fd3a8f', N'11b10723-38d8-4c45-a530-7741f1a81bf2', 1, NULL, NULL)
GO
INSERT [dbo].[DICHVU] ([MaDV], [TenDichVuBatBuoc], [DonGia], [DVT], [LoaiDichVu]) VALUES (N'11b10723-38d8-4c45-a530-7741f1a81bf2', N'DV-WIFI 7 ngày', 50000, N'Gói ', N'DV thông thường')
INSERT [dbo].[DICHVU] ([MaDV], [TenDichVuBatBuoc], [DonGia], [DVT], [LoaiDichVu]) VALUES (N'18c47901-45f9-4912-a616-fb97702eb6e6', N'DV-WIFI 30 ngày', 120000, N'Gói ', N'DV thông thường')
INSERT [dbo].[DICHVU] ([MaDV], [TenDichVuBatBuoc], [DonGia], [DVT], [LoaiDichVu]) VALUES (N'34184399-8186-4adf-b7fd-ddec6897cb5e', N'Nước', 8000, N'm³', N'DV Bắt Buộc')
INSERT [dbo].[DICHVU] ([MaDV], [TenDichVuBatBuoc], [DonGia], [DVT], [LoaiDichVu]) VALUES (N'b2af43da-ad9c-4548-9b24-5db24cdac4bb', N'DV-WIFI 3 ngày', 15000, N'Gói ', N'DV thông thường')
INSERT [dbo].[DICHVU] ([MaDV], [TenDichVuBatBuoc], [DonGia], [DVT], [LoaiDichVu]) VALUES (N'dcfbf29e-bcc3-4c61-a44a-ea41cef0b55d', N'Điện', 3000, N'kWh', N'DV Bắt Buộc')
INSERT [dbo].[DICHVU] ([MaDV], [TenDichVuBatBuoc], [DonGia], [DVT], [LoaiDichVu]) VALUES (N'dd3791cb-3070-4b3a-b3f1-64c1fbb5916a', N'Phí thuê phòng', 200000, N'người/tháng', N'DV Bắt Buộc')
INSERT [dbo].[DICHVU] ([MaDV], [TenDichVuBatBuoc], [DonGia], [DVT], [LoaiDichVu]) VALUES (N'f680db71-d028-4b4d-90a5-01e6a921157e', N'DV-WIFI 1 ngày', 5000, N'Gói ', N'DV thông thường')
GO
INSERT [dbo].[HOADON] ([MaHD], [NgayLapHD], [PhuongThucThanhToan], [TrangThai], [MaPhong], [IDNhanVien]) VALUES (N'14b4915e-271a-4464-80a6-7af726a2c432', CAST(N'2024-08-28' AS Date), N'Tiền Mặt', N'Đang thanh toán', N'5cc4091d-1f4d-497d-8318-1534184cfda3', N'bb76a518-2776-4217-ba3d-10e590c167dd')
INSERT [dbo].[HOADON] ([MaHD], [NgayLapHD], [PhuongThucThanhToan], [TrangThai], [MaPhong], [IDNhanVien]) VALUES (N'1dc46401-87bd-40ba-a809-55d27d54b2bd', CAST(N'2024-08-27' AS Date), N'Tiền Mặt', N'Đã thanh toán', NULL, N'bb76a518-2776-4217-ba3d-10e590c167dd')
INSERT [dbo].[HOADON] ([MaHD], [NgayLapHD], [PhuongThucThanhToan], [TrangThai], [MaPhong], [IDNhanVien]) VALUES (N'5e284672-724b-492a-9d7c-9f3fd561e66e', CAST(N'2024-08-26' AS Date), N'Tiền Mặt', N'Đã thanh toán', N'f18351be-63e7-4a4f-9f1b-0d701fdb077f', N'bb76a518-2776-4217-ba3d-10e590c167dd')
INSERT [dbo].[HOADON] ([MaHD], [NgayLapHD], [PhuongThucThanhToan], [TrangThai], [MaPhong], [IDNhanVien]) VALUES (N'84ebd48d-9e6f-4bba-9185-68d44c7e920d', CAST(N'2024-08-27' AS Date), N'Tiền Mặt', N'Đang thanh toán', NULL, N'bb76a518-2776-4217-ba3d-10e590c167dd')
INSERT [dbo].[HOADON] ([MaHD], [NgayLapHD], [PhuongThucThanhToan], [TrangThai], [MaPhong], [IDNhanVien]) VALUES (N'8722d0bf-930d-4a27-987e-95024336712a', CAST(N'2024-08-27' AS Date), N'Tiền Mặt', N'Đang thanh toán', NULL, N'bb76a518-2776-4217-ba3d-10e590c167dd')
INSERT [dbo].[HOADON] ([MaHD], [NgayLapHD], [PhuongThucThanhToan], [TrangThai], [MaPhong], [IDNhanVien]) VALUES (N'96d16575-7109-411e-a283-8aff82bceff9', CAST(N'2024-08-27' AS Date), N'Tiền Mặt', N'Đã thanh toán', N'a6b4f52a-2c6d-4eef-9f58-1d0abe1f1295', N'bb76a518-2776-4217-ba3d-10e590c167dd')
INSERT [dbo].[HOADON] ([MaHD], [NgayLapHD], [PhuongThucThanhToan], [TrangThai], [MaPhong], [IDNhanVien]) VALUES (N'c79c70d7-3b6f-441f-b2d7-ab0e88fd3a8f', CAST(N'2024-08-27' AS Date), N'Tiền Mặt', N'Đã thanh toán', NULL, N'bb76a518-2776-4217-ba3d-10e590c167dd')
GO
INSERT [dbo].[HOPDONG] ([SoHopDong], [NgayLap], [ThoiGianBatDau], [ThoiGianKetThuc], [TrangThai], [PhuongThucThanhToan], [IDNhanVien], [MSSV], [MaPhong]) VALUES (N'30da4150-971d-4347-8215-33c10c18e9e7', CAST(N'2024-08-27' AS Date), CAST(N'2024-09-05' AS Date), CAST(N'2025-07-01' AS Date), N'Đang chờ phê duyệt', NULL, N'bb76a518-2776-4217-ba3d-10e590c167dd', N'21K4090015', N'1916daea-6987-4436-aeb9-d4412e5755c6')
INSERT [dbo].[HOPDONG] ([SoHopDong], [NgayLap], [ThoiGianBatDau], [ThoiGianKetThuc], [TrangThai], [PhuongThucThanhToan], [IDNhanVien], [MSSV], [MaPhong]) VALUES (N'75e178cd-80ae-4016-a89c-89e9fcc7cc06', CAST(N'2024-08-16' AS Date), CAST(N'2024-09-05' AS Date), CAST(N'2025-07-01' AS Date), N'Thành Công', N'Tiền Mặt', N'bb76a518-2776-4217-ba3d-10e590c167dd', N'21K4090006', N'a6b4f52a-2c6d-4eef-9f58-1d0abe1f1295')
INSERT [dbo].[HOPDONG] ([SoHopDong], [NgayLap], [ThoiGianBatDau], [ThoiGianKetThuc], [TrangThai], [PhuongThucThanhToan], [IDNhanVien], [MSSV], [MaPhong]) VALUES (N'9ede383b-287a-4942-9e7e-6fabe716bf87', CAST(N'2024-08-16' AS Date), CAST(N'2024-09-05' AS Date), CAST(N'2025-07-01' AS Date), N'Thành Công', N'Tiền Mặt', N'bb76a518-2776-4217-ba3d-10e590c167dd', N'21K4090001', N'5cc4091d-1f4d-497d-8318-1534184cfda3')
INSERT [dbo].[HOPDONG] ([SoHopDong], [NgayLap], [ThoiGianBatDau], [ThoiGianKetThuc], [TrangThai], [PhuongThucThanhToan], [IDNhanVien], [MSSV], [MaPhong]) VALUES (N'bacb43a1-d784-4be9-afa0-146a02927ddd', CAST(N'2024-08-17' AS Date), CAST(N'2024-09-05' AS Date), CAST(N'2025-07-01' AS Date), N'Thành Công', N'Tiền Mặt', N'bb76a518-2776-4217-ba3d-10e590c167dd', N'21K4090039', N'a6b4f52a-2c6d-4eef-9f58-1d0abe1f1295')
GO
INSERT [dbo].[NHANVIEN] ([IDNhanVien], [HoTen], [SDT], [DiaChi], [ChucVu], [IDUser]) VALUES (N'5348c289-511e-47b3-8f8d-530022313167', N'Lê Thị Vật ', N'0394192849', N'Huế', N'Tạp Vụ', NULL)
INSERT [dbo].[NHANVIEN] ([IDNhanVien], [HoTen], [SDT], [DiaChi], [ChucVu], [IDUser]) VALUES (N'bb76a518-2776-4217-ba3d-10e590c167dd', N'Nguyễn Duy Hưng', N'0949201930', N'Huế', N'Quản Lý', N'd6096885-7976-43bb-ad25-d93d9420af7d')
INSERT [dbo].[NHANVIEN] ([IDNhanVien], [HoTen], [SDT], [DiaChi], [ChucVu], [IDUser]) VALUES (N'bfc6afb2-2dbe-4653-a7c8-1c16493f9d45', N'Trần Bình An', N'0359201059', N'Quảng Ngãi', N'Bảo Vệ', NULL)
GO
INSERT [dbo].[PHONG] ([MaPhong], [TenPhong], [Khu], [Tang], [SoGiuong], [SoNguoiO]) VALUES (N'1916daea-6987-4436-aeb9-d4412e5755c6', N'B103', N'B', N'1', 8, 4)
INSERT [dbo].[PHONG] ([MaPhong], [TenPhong], [Khu], [Tang], [SoGiuong], [SoNguoiO]) VALUES (N'1d3c2e4f-0278-4705-aed5-7415cfd04dee', N'A102', N'A', N'1', 4, 4)
INSERT [dbo].[PHONG] ([MaPhong], [TenPhong], [Khu], [Tang], [SoGiuong], [SoNguoiO]) VALUES (N'28b9bd80-aab5-4c54-b42b-5d1d693741ed', N'A103', N'A', N'1', 8, 6)
INSERT [dbo].[PHONG] ([MaPhong], [TenPhong], [Khu], [Tang], [SoGiuong], [SoNguoiO]) VALUES (N'31fa9dc6-904c-4589-8215-7f7adc3b17b0', N'A105', N'A', N'1', 4, 4)
INSERT [dbo].[PHONG] ([MaPhong], [TenPhong], [Khu], [Tang], [SoGiuong], [SoNguoiO]) VALUES (N'50cc9f6a-5069-4955-83b3-4d62e9d3520a', N'B101', N'B', N'1', 4, 0)
INSERT [dbo].[PHONG] ([MaPhong], [TenPhong], [Khu], [Tang], [SoGiuong], [SoNguoiO]) VALUES (N'5cc4091d-1f4d-497d-8318-1534184cfda3', N'A106', N'A', N'1', 4, 2)
INSERT [dbo].[PHONG] ([MaPhong], [TenPhong], [Khu], [Tang], [SoGiuong], [SoNguoiO]) VALUES (N'603f78bc-11a0-4339-b47c-8d91e8020936', N'A101', N'A', N'1', 4, 4)
INSERT [dbo].[PHONG] ([MaPhong], [TenPhong], [Khu], [Tang], [SoGiuong], [SoNguoiO]) VALUES (N'944dff45-b156-445f-9d6d-750e44d70de2', N'B106', N'B', N'1', 4, 2)
INSERT [dbo].[PHONG] ([MaPhong], [TenPhong], [Khu], [Tang], [SoGiuong], [SoNguoiO]) VALUES (N'a6b4f52a-2c6d-4eef-9f58-1d0abe1f1295', N'B104', N'B', N'1', 8, 3)
INSERT [dbo].[PHONG] ([MaPhong], [TenPhong], [Khu], [Tang], [SoGiuong], [SoNguoiO]) VALUES (N'f18351be-63e7-4a4f-9f1b-0d701fdb077f', N'A104', N'A', N'1', 8, 8)
INSERT [dbo].[PHONG] ([MaPhong], [TenPhong], [Khu], [Tang], [SoGiuong], [SoNguoiO]) VALUES (N'fa17b961-1b7e-45db-98c2-3c10ced7a6ea', N'B105', N'B', N'1', 4, 0)
INSERT [dbo].[PHONG] ([MaPhong], [TenPhong], [Khu], [Tang], [SoGiuong], [SoNguoiO]) VALUES (N'ffaf7242-82b2-42e0-ae6c-610891f9a940', N'B102', N'B', N'1', 4, 0)
GO
INSERT [dbo].[PHUHUYNH] ([IDPhuHuynh], [HoTen], [NgaySinh], [NgheNghiep], [SDT], [QuanHe], [MSSV]) VALUES (N'2294ac38-b30d-4da9-ac45-44f395960b1d', N'Mai Thị Thắm', CAST(N'2024-08-24' AS Date), N'thợ May', N'0993291039', N'Ba', N'21K4090001')
INSERT [dbo].[PHUHUYNH] ([IDPhuHuynh], [HoTen], [NgaySinh], [NgheNghiep], [SDT], [QuanHe], [MSSV]) VALUES (N'5c1ae0c4-7a5b-49dc-90db-e0d8542fb878', N'Trần Văn Tực', CAST(N'1987-08-21' AS Date), N'Phụ Hồ', N'0993291039', N'Ba', N'21K4090001')
GO
INSERT [dbo].[SINHVIEN] ([MSSV], [TenSinhVien], [NgaySinh], [GioiTinh], [Lop], [Khoa], [SoCCCD], [DiaChi], [SDT], [IDUser]) VALUES (N'21K4090001', N'Huỳnh Ngọc Trợ', CAST(N'2003-07-09' AS Date), N'Nam', N'K55 THKT', N'HTTTKT', N'03929109310', N'Huế', N'0993392010', N'f322ec3c-5d23-4618-8272-26dfd09e77f9')
INSERT [dbo].[SINHVIEN] ([MSSV], [TenSinhVien], [NgaySinh], [GioiTinh], [Lop], [Khoa], [SoCCCD], [DiaChi], [SDT], [IDUser]) VALUES (N'21K4090006', N'Nguyễn Bùi sum Hợp', CAST(N'2003-08-22' AS Date), N'Nam', N'K55 THKT', N'HTTTKT', N'0493291039102', N'Huế', N'0939291029', N'd263e262-6cfd-471b-8936-c0958abfcecf')
INSERT [dbo].[SINHVIEN] ([MSSV], [TenSinhVien], [NgaySinh], [GioiTinh], [Lop], [Khoa], [SoCCCD], [DiaChi], [SDT], [IDUser]) VALUES (N'21K4090015', N'Nguyễn Đức Hiếu', CAST(N'2003-08-14' AS Date), N'Nam', N'K55 THKT', N'HTTTKT', N'0463821958102', N'Huế', N'0833333310', N'14601a11-f790-4f54-891b-2c0326c0d30e')
INSERT [dbo].[SINHVIEN] ([MSSV], [TenSinhVien], [NgaySinh], [GioiTinh], [Lop], [Khoa], [SoCCCD], [DiaChi], [SDT], [IDUser]) VALUES (N'21K4090039', N'Trương Đình Quân', CAST(N'2003-07-10' AS Date), N'Nam', N'K55 THKT', N'HTTTKT', N'03929109310', N'Huế', N'0833333310', N'3af5c4e7-ded2-4b90-8850-2b112d5baa2c')
GO
INSERT [dbo].[TAIKHOAN] ([IDUser], [TenDangNhap], [MatKhau], [Email], [ConfirmPassword], [EmailDaXacMinh], [VaiTro]) VALUES (N'14601a11-f790-4f54-891b-2c0326c0d30e', N'Nguyễn Đức Hiếu', N'abCC123@#', N'odiacanhan@gmail.com', N'abCC123@#', 1, N'User')
INSERT [dbo].[TAIKHOAN] ([IDUser], [TenDangNhap], [MatKhau], [Email], [ConfirmPassword], [EmailDaXacMinh], [VaiTro]) VALUES (N'2177c075-a0b4-4df4-acf9-c539bc824ec2', N'Admin', N'abc123', N'Admin@gmail.com', N'abc123', 1, N'Admin')
INSERT [dbo].[TAIKHOAN] ([IDUser], [TenDangNhap], [MatKhau], [Email], [ConfirmPassword], [EmailDaXacMinh], [VaiTro]) VALUES (N'3af5c4e7-ded2-4b90-8850-2b112d5baa2c', N'Trương Đình Quân', N'songgio10', N'quanngau10@gmail.com', N'songgio10', 1, N'User')
INSERT [dbo].[TAIKHOAN] ([IDUser], [TenDangNhap], [MatKhau], [Email], [ConfirmPassword], [EmailDaXacMinh], [VaiTro]) VALUES (N'd263e262-6cfd-471b-8936-c0958abfcecf', N'Nguyễn Bùi Sum Hợp', N'hop1234', N'hopn5586@gmail.com', N'hop1234', 1, N'User')
INSERT [dbo].[TAIKHOAN] ([IDUser], [TenDangNhap], [MatKhau], [Email], [ConfirmPassword], [EmailDaXacMinh], [VaiTro]) VALUES (N'd6096885-7976-43bb-ad25-d93d9420af7d', N'Duy Hưng', N'abc123', N'duyhung123@gmail.com', N'abc123', 1, N'Employee')
INSERT [dbo].[TAIKHOAN] ([IDUser], [TenDangNhap], [MatKhau], [Email], [ConfirmPassword], [EmailDaXacMinh], [VaiTro]) VALUES (N'f322ec3c-5d23-4618-8272-26dfd09e77f9', N'TroHuynh', N'12345', N'trohuynh123@gmail.com', N'12345', 1, N'User')
GO
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser]) VALUES (N'006a9fdf-8704-4241-8af0-db02915bbcec', N'Hợp đồng thuê chỗ ở nội trú đã được gửi đi phê duyệt.', CAST(N'2024-08-27T14:41:57.430' AS DateTime), 0, NULL, N'14601a11-f790-4f54-891b-2c0326c0d30e')
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser]) VALUES (N'021c4540-fb46-47dc-9e3e-a4a3acc60c0f', N'Hợp đồng thuê chỗ ở nội trú đã được gửi đi phê duyệt.', CAST(N'2024-08-22T11:02:17.330' AS DateTime), 1, N'Bình Thường', N'14601a11-f790-4f54-891b-2c0326c0d30e')
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser]) VALUES (N'16324f81-7933-42e8-98a1-b6df4f7f3a57', N'Phòng A106 bị hư 1 cái quạt trần. Mong ban quản lý sớm giải quyết!', CAST(N'2024-08-27T23:09:31.037' AS DateTime), 0, N'Sự cố', N'2177c075-a0b4-4df4-acf9-c539bc824ec2')
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser]) VALUES (N'171297be-433f-4396-b949-723008fa9bb4', N'Đã có hóa đơn điện, nước. Thanh toán', CAST(N'2024-08-27T10:25:09.440' AS DateTime), 1, N'Bình Thường', N'3af5c4e7-ded2-4b90-8850-2b112d5baa2c')
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser]) VALUES (N'253e0bd8-a08d-40e4-802e-894071ffd74f', N'Phòng của bạn đã thanh toán!', CAST(N'2024-08-27T11:06:29.900' AS DateTime), 0, N'Bình Thường', N'd263e262-6cfd-471b-8936-c0958abfcecf')
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser]) VALUES (N'2eb818b4-93a8-455f-a2f6-4401a613a621', N'Thật tuyệt, hợp đồng của bạn đã được phê duyệt', CAST(N'2024-08-26T22:51:52.037' AS DateTime), 1, NULL, N'14601a11-f790-4f54-891b-2c0326c0d30e')
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser]) VALUES (N'30df35f4-8aa5-4c19-a77a-0572bd80c017', N'Có hợp đồng cần bạn phê duyệt.', CAST(N'2024-08-27T14:41:57.430' AS DateTime), 1, NULL, N'2177c075-a0b4-4df4-acf9-c539bc824ec2')
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser]) VALUES (N'38e7062b-52d5-4f02-b380-ba959da46c13', N'Hợp đồng thuê chỗ ở nội trú đã được gửi đi phê duyệt.', CAST(N'2024-08-26T22:51:10.497' AS DateTime), 1, NULL, N'14601a11-f790-4f54-891b-2c0326c0d30e')
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser]) VALUES (N'3c72712a-8aec-42b5-a271-d95209fd64d5', N'Hợp đồng số 2fef0cc8-dcc0-4115-b410-a8b15a09743a đã bị hủy với lý do: Thông tin đã bị sai', CAST(N'2024-08-22T13:27:21.883' AS DateTime), 1, N'Bình Thường', N'14601a11-f790-4f54-891b-2c0326c0d30e')
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser]) VALUES (N'3e0ac1ee-834c-4cc3-a943-28df8b3dda7c', N'Đã có hóa đơn điện, nước. Thanh toán', CAST(N'2024-08-27T10:31:33.310' AS DateTime), 1, N'Bình Thường', N'3af5c4e7-ded2-4b90-8850-2b112d5baa2c')
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser]) VALUES (N'3ffe0786-56af-46b2-bfc1-16ed787cfa15', N'Phòng của bạn đã thanh toán!', CAST(N'2024-08-27T11:06:29.930' AS DateTime), 0, N'Bình Thường', N'3af5c4e7-ded2-4b90-8850-2b112d5baa2c')
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser]) VALUES (N'4ed505cf-bc28-4be5-9dde-91c0a7b97ef4', N'Có hợp đồng cần bạn phê duyệt.', CAST(N'2024-08-27T13:49:30.597' AS DateTime), 1, NULL, N'2177c075-a0b4-4df4-acf9-c539bc824ec2')
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser]) VALUES (N'6569b499-5f0a-4b2c-aeed-aa029740a1ed', N'Hợp đồng của bạn đã được phê duyệt', CAST(N'2024-08-22T11:21:30.867' AS DateTime), 1, N'Bình Thường', N'14601a11-f790-4f54-891b-2c0326c0d30e')
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser]) VALUES (N'6b131d7e-42cd-4866-aded-159084481a23', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-08-28T14:42:06.700' AS DateTime), 1, N'Bình Thường', N'f322ec3c-5d23-4618-8272-26dfd09e77f9')
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser]) VALUES (N'7a968f7d-f7d3-4a6d-86fa-1f28ac294727', N'Đã có hóa đơn điện, nước. Thanh toán', CAST(N'2024-08-27T10:31:33.300' AS DateTime), 1, N'Bình Thường', N'd263e262-6cfd-471b-8936-c0958abfcecf')
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser]) VALUES (N'7e1d6fb0-5ccb-465b-8484-0c01ad6e40a4', N'Có hợp đồng cần bạn phê duyệt.', CAST(N'2024-08-26T22:51:10.497' AS DateTime), 1, NULL, N'2177c075-a0b4-4df4-acf9-c539bc824ec2')
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser]) VALUES (N'822378e8-f675-4af3-92c5-9c0f02805267', N'Hợp đồng thuê chỗ ở nội trú đã được gửi đi phê duyệt.', CAST(N'2024-08-22T13:23:31.607' AS DateTime), 1, N'Bình Thường', N'14601a11-f790-4f54-891b-2c0326c0d30e')
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser]) VALUES (N'8271b241-75b0-408e-94fc-dc25261026a2', N'Có hợp đồng cần bạn phê duyệt.', CAST(N'2024-08-27T14:43:34.850' AS DateTime), 1, NULL, N'2177c075-a0b4-4df4-acf9-c539bc824ec2')
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser]) VALUES (N'904ad5ef-426d-427a-92d0-381350063cd4', N'Đã có hóa đơn điện, nước. Thanh toán', CAST(N'2024-08-27T10:25:09.323' AS DateTime), 1, N'Bình Thường', N'd263e262-6cfd-471b-8936-c0958abfcecf')
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser]) VALUES (N'957584d6-176f-4095-9c26-81810ad50943', N'Hợp đồng thuê chỗ ở nội trú đã được gửi đi phê duyệt.', CAST(N'2024-08-27T14:43:34.850' AS DateTime), 0, NULL, N'14601a11-f790-4f54-891b-2c0326c0d30e')
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser]) VALUES (N'9a836f1a-a0e2-49ee-96dc-7970e008745f', N'Hợp đồng của bạn đã được phê duyệt', CAST(N'2024-08-22T10:50:36.140' AS DateTime), 1, N'Bình Thường', N'14601a11-f790-4f54-891b-2c0326c0d30e')
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser]) VALUES (N'a3ce5553-bcd9-44af-a8c0-6c44468f3434', N'bbbbbbbb', CAST(N'2024-08-20T15:31:15.093' AS DateTime), 1, N'Bình Thường', N'd6096885-7976-43bb-ad25-d93d9420af7d')
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser]) VALUES (N'a3ce8d43-bcd9-44af-a8c0-6c44468f3434', N'thử nghiệm', CAST(N'2024-08-20T15:31:15.093' AS DateTime), 1, N'Bình Thường', N'14601a11-f790-4f54-891b-2c0326c0d30e')
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser]) VALUES (N'a3ce8d43-bcd9-44af-a8c0-6c6a968f3434', N'Hợp đồng thuê chỗ ở nội trú đã được gửi đi phê duyệt.', CAST(N'2024-08-20T15:31:15.093' AS DateTime), 1, N'Bình Thường', N'14601a11-f790-4f54-891b-2c0326c0d30e')
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser]) VALUES (N'a934a80e-c195-4245-ba48-5a73edb31a58', N'Có hợp đồng cần bạn phê duyệt.', CAST(N'2024-08-22T13:23:31.607' AS DateTime), 1, N'Bình Thường', N'2177c075-a0b4-4df4-acf9-c539bc824ec2')
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser]) VALUES (N'ad1ab4a0-1e69-4bbd-a33f-975f8a251e81', N'Phòng A106 bị hư 1 cái quạt trần. Mong ban quản lý sớm giải quyết!', CAST(N'2024-08-27T23:09:47.653' AS DateTime), 0, N'Sự cố', N'2177c075-a0b4-4df4-acf9-c539bc824ec2')
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser]) VALUES (N'b43d220e-d73f-4dfe-bc1e-c4548ad0f2dc', N'Thật tuyệt, hợp đồng của bạn đã được phê duyệt', CAST(N'2024-08-27T13:49:52.300' AS DateTime), 0, NULL, N'14601a11-f790-4f54-891b-2c0326c0d30e')
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser]) VALUES (N'c7c0710e-3390-42d0-b012-5feb0a1b0f48', N'Hợp đồng thuê chỗ ở nội trú đã được gửi đi phê duyệt.', CAST(N'2024-08-26T22:51:48.867' AS DateTime), 1, NULL, N'14601a11-f790-4f54-891b-2c0326c0d30e')
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser]) VALUES (N'e24c4999-fea9-49f0-986c-bdafa5e9b9ec', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-08-28T14:36:18.600' AS DateTime), 1, N'Bình Thường', N'f322ec3c-5d23-4618-8272-26dfd09e77f9')
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser]) VALUES (N'e9a3b5eb-34b4-4c60-b27e-635440f0d369', N'Đã có hóa đơn điện nước. Thanh toán nhanh!', CAST(N'2024-08-28T14:36:59.263' AS DateTime), 1, N'Bình Thường', N'f322ec3c-5d23-4618-8272-26dfd09e77f9')
INSERT [dbo].[ThongBao] ([MaThongBao], [NoiDung], [ThoiGianThongBao], [TrangThaiThongBao], [LoaiThongBao], [IDUser]) VALUES (N'ff1713d3-afd5-436b-87ff-bbc95776bac3', N'Hợp đồng thuê chỗ ở nội trú đã được gửi đi phê duyệt.', CAST(N'2024-08-27T13:49:30.593' AS DateTime), 1, NULL, N'14601a11-f790-4f54-891b-2c0326c0d30e')
GO
ALTER TABLE [dbo].[CHITIETHOADON]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETHOADON_DICHVU] FOREIGN KEY([MaDV])
REFERENCES [dbo].[DICHVU] ([MaDV])
GO
ALTER TABLE [dbo].[CHITIETHOADON] CHECK CONSTRAINT [FK_CHITIETHOADON_DICHVU]
GO
ALTER TABLE [dbo].[CHITIETHOADON]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETHOADON_HOADON] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HOADON] ([MaHD])
GO
ALTER TABLE [dbo].[CHITIETHOADON] CHECK CONSTRAINT [FK_CHITIETHOADON_HOADON]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_NHANVIEN] FOREIGN KEY([IDNhanVien])
REFERENCES [dbo].[NHANVIEN] ([IDNhanVien])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HOADON_NHANVIEN]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_PHONG] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[PHONG] ([MaPhong])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HOADON_PHONG]
GO
ALTER TABLE [dbo].[HOPDONG]  WITH CHECK ADD  CONSTRAINT [FK_HOPDONG_NHANVIEN] FOREIGN KEY([IDNhanVien])
REFERENCES [dbo].[NHANVIEN] ([IDNhanVien])
GO
ALTER TABLE [dbo].[HOPDONG] CHECK CONSTRAINT [FK_HOPDONG_NHANVIEN]
GO
ALTER TABLE [dbo].[HOPDONG]  WITH CHECK ADD  CONSTRAINT [FK_HOPDONG_PHONG] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[PHONG] ([MaPhong])
GO
ALTER TABLE [dbo].[HOPDONG] CHECK CONSTRAINT [FK_HOPDONG_PHONG]
GO
ALTER TABLE [dbo].[HOPDONG]  WITH CHECK ADD  CONSTRAINT [FK_HOPDONG_SINHVIEN] FOREIGN KEY([MSSV])
REFERENCES [dbo].[SINHVIEN] ([MSSV])
GO
ALTER TABLE [dbo].[HOPDONG] CHECK CONSTRAINT [FK_HOPDONG_SINHVIEN]
GO
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD  CONSTRAINT [FK_NHANVIEN_TAIKHOAN] FOREIGN KEY([IDUser])
REFERENCES [dbo].[TAIKHOAN] ([IDUser])
GO
ALTER TABLE [dbo].[NHANVIEN] CHECK CONSTRAINT [FK_NHANVIEN_TAIKHOAN]
GO
ALTER TABLE [dbo].[PHUHUYNH]  WITH CHECK ADD  CONSTRAINT [FK_PHUHUYNH_SINHVIEN] FOREIGN KEY([MSSV])
REFERENCES [dbo].[SINHVIEN] ([MSSV])
GO
ALTER TABLE [dbo].[PHUHUYNH] CHECK CONSTRAINT [FK_PHUHUYNH_SINHVIEN]
GO
ALTER TABLE [dbo].[SINHVIEN]  WITH CHECK ADD  CONSTRAINT [FK_SINHVIEN_TAIKHOAN] FOREIGN KEY([IDUser])
REFERENCES [dbo].[TAIKHOAN] ([IDUser])
GO
ALTER TABLE [dbo].[SINHVIEN] CHECK CONSTRAINT [FK_SINHVIEN_TAIKHOAN]
GO
ALTER TABLE [dbo].[ThongBao]  WITH CHECK ADD  CONSTRAINT [FK_ThongBao_TAIKHOAN] FOREIGN KEY([IDUser])
REFERENCES [dbo].[TAIKHOAN] ([IDUser])
GO
ALTER TABLE [dbo].[ThongBao] CHECK CONSTRAINT [FK_ThongBao_TAIKHOAN]
GO
