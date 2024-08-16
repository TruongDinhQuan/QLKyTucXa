USE [DataQLKTX]
GO
/****** Object:  Table [dbo].[CHITIETHOADON]    Script Date: 8/16/2024 3:32:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETHOADON](
	[MaHD] [nvarchar](100) NOT NULL,
	[MaDV] [nvarchar](100) NOT NULL,
	[ChiSoDau] [int] NULL,
	[ChiSoCuoi] [int] NULL,
 CONSTRAINT [PK_CHITIETHOADONDVBV] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaDV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DICHVU]    Script Date: 8/16/2024 3:32:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DICHVU](
	[MaDV] [nvarchar](100) NOT NULL,
	[TenDichVuBatBuoc] [nvarchar](50) NULL,
	[DinhMuc] [int] NULL,
	[DonGia] [int] NULL,
	[DVT] [nvarchar](50) NULL,
 CONSTRAINT [PK_DICHVUBATBUOC] PRIMARY KEY CLUSTERED 
(
	[MaDV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 8/16/2024 3:32:49 PM ******/
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
/****** Object:  Table [dbo].[HOPDONG]    Script Date: 8/16/2024 3:32:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOPDONG](
	[SoHopDong] [nvarchar](100) NOT NULL,
	[NgayLap] [date] NULL,
	[ThoiGianThue] [date] NULL,
	[TienKyQuy] [int] NULL,
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
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 8/16/2024 3:32:49 PM ******/
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
/****** Object:  Table [dbo].[PHONG]    Script Date: 8/16/2024 3:32:49 PM ******/
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
	[DonGia] [int] NULL,
 CONSTRAINT [PK_PHONG] PRIMARY KEY CLUSTERED 
(
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHUHUYNH]    Script Date: 8/16/2024 3:32:49 PM ******/
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
/****** Object:  Table [dbo].[SINHVIEN]    Script Date: 8/16/2024 3:32:49 PM ******/
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
/****** Object:  Table [dbo].[TAIKHOAN]    Script Date: 8/16/2024 3:32:49 PM ******/
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
INSERT [dbo].[HOPDONG] ([SoHopDong], [NgayLap], [ThoiGianThue], [TienKyQuy], [PhuongThucThanhToan], [IDNhanVien], [MSSV], [MaPhong]) VALUES (N'75e178cd-80ae-4016-a89c-89e9fcc7cc06', CAST(N'2024-09-05' AS Date), CAST(N'2025-07-01' AS Date), 48000, N'Thành Công', N'bb76a518-2776-4217-ba3d-10e590c167dd', N'21K4090006', N'a6b4f52a-2c6d-4eef-9f58-1d0abe1f1295')
INSERT [dbo].[HOPDONG] ([SoHopDong], [NgayLap], [ThoiGianThue], [TienKyQuy], [PhuongThucThanhToan], [IDNhanVien], [MSSV], [MaPhong]) VALUES (N'9ede383b-287a-4942-9e7e-6fabe716bf87', CAST(N'2024-09-05' AS Date), CAST(N'2025-07-01' AS Date), 32000, N'Thành Công', N'bb76a518-2776-4217-ba3d-10e590c167dd', N'21K4090001', N'5cc4091d-1f4d-497d-8318-1534184cfda3')
INSERT [dbo].[HOPDONG] ([SoHopDong], [NgayLap], [ThoiGianThue], [TienKyQuy], [PhuongThucThanhToan], [IDNhanVien], [MSSV], [MaPhong]) VALUES (N'bacb43a1-d784-4be9-afa0-146a02927ddd', CAST(N'2024-09-05' AS Date), CAST(N'2025-07-01' AS Date), 48000, N'Thành Công', N'bb76a518-2776-4217-ba3d-10e590c167dd', N'21K4090039', N'a6b4f52a-2c6d-4eef-9f58-1d0abe1f1295')
GO
INSERT [dbo].[NHANVIEN] ([IDNhanVien], [HoTen], [SDT], [DiaChi], [ChucVu], [IDUser]) VALUES (N'5348c289-511e-47b3-8f8d-530022313167', N'Lê Thị Vật ', N'0394192849', N'Huế', N'Tạp Vụ', NULL)
INSERT [dbo].[NHANVIEN] ([IDNhanVien], [HoTen], [SDT], [DiaChi], [ChucVu], [IDUser]) VALUES (N'bb76a518-2776-4217-ba3d-10e590c167dd', N'Nguyễn Duy Hưng', N'0949201930', N'Huế', N'Quản Lý', N'd6096885-7976-43bb-ad25-d93d9420af7d')
INSERT [dbo].[NHANVIEN] ([IDNhanVien], [HoTen], [SDT], [DiaChi], [ChucVu], [IDUser]) VALUES (N'bfc6afb2-2dbe-4653-a7c8-1c16493f9d45', N'Trần Bình An', N'0359201059', N'Quảng Ngãi', N'Bảo Vệ', NULL)
GO
INSERT [dbo].[PHONG] ([MaPhong], [TenPhong], [Khu], [Tang], [SoGiuong], [SoNguoiO], [DonGia]) VALUES (N'1916daea-6987-4436-aeb9-d4412e5755c6', N'B103', N'B', N'1', 8, 0, 120000)
INSERT [dbo].[PHONG] ([MaPhong], [TenPhong], [Khu], [Tang], [SoGiuong], [SoNguoiO], [DonGia]) VALUES (N'1d3c2e4f-0278-4705-aed5-7415cfd04dee', N'A102', N'A', N'1', 4, 4, 80000)
INSERT [dbo].[PHONG] ([MaPhong], [TenPhong], [Khu], [Tang], [SoGiuong], [SoNguoiO], [DonGia]) VALUES (N'28b9bd80-aab5-4c54-b42b-5d1d693741ed', N'A103', N'A', N'1', 8, 6, 120000)
INSERT [dbo].[PHONG] ([MaPhong], [TenPhong], [Khu], [Tang], [SoGiuong], [SoNguoiO], [DonGia]) VALUES (N'31fa9dc6-904c-4589-8215-7f7adc3b17b0', N'A105', N'A', N'1', 4, 4, 80000)
INSERT [dbo].[PHONG] ([MaPhong], [TenPhong], [Khu], [Tang], [SoGiuong], [SoNguoiO], [DonGia]) VALUES (N'50cc9f6a-5069-4955-83b3-4d62e9d3520a', N'B101', N'B', N'1', 4, 0, 80000)
INSERT [dbo].[PHONG] ([MaPhong], [TenPhong], [Khu], [Tang], [SoGiuong], [SoNguoiO], [DonGia]) VALUES (N'5cc4091d-1f4d-497d-8318-1534184cfda3', N'A106', N'A', N'1', 4, 2, 80000)
INSERT [dbo].[PHONG] ([MaPhong], [TenPhong], [Khu], [Tang], [SoGiuong], [SoNguoiO], [DonGia]) VALUES (N'603f78bc-11a0-4339-b47c-8d91e8020936', N'A101', N'A', N'1', 4, 4, 80000)
INSERT [dbo].[PHONG] ([MaPhong], [TenPhong], [Khu], [Tang], [SoGiuong], [SoNguoiO], [DonGia]) VALUES (N'944dff45-b156-445f-9d6d-750e44d70de2', N'B106', N'B', N'1', 4, 0, 80000)
INSERT [dbo].[PHONG] ([MaPhong], [TenPhong], [Khu], [Tang], [SoGiuong], [SoNguoiO], [DonGia]) VALUES (N'a6b4f52a-2c6d-4eef-9f58-1d0abe1f1295', N'B104', N'B', N'1', 8, 2, 120000)
INSERT [dbo].[PHONG] ([MaPhong], [TenPhong], [Khu], [Tang], [SoGiuong], [SoNguoiO], [DonGia]) VALUES (N'f18351be-63e7-4a4f-9f1b-0d701fdb077f', N'A104', N'A', N'1', 8, 8, 50000)
INSERT [dbo].[PHONG] ([MaPhong], [TenPhong], [Khu], [Tang], [SoGiuong], [SoNguoiO], [DonGia]) VALUES (N'fa17b961-1b7e-45db-98c2-3c10ced7a6ea', N'B105', N'B', N'1', 4, 0, 80000)
INSERT [dbo].[PHONG] ([MaPhong], [TenPhong], [Khu], [Tang], [SoGiuong], [SoNguoiO], [DonGia]) VALUES (N'ffaf7242-82b2-42e0-ae6c-610891f9a940', N'B102', N'B', N'1', 4, 0, 80000)
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
