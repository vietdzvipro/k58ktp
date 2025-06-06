USE [qlysv]
GO
INSERT [dbo].[SinhVien] ([maSV], [hoTen], [NgaySinh]) VALUES (N'sv1       ', N'viet', CAST(N'2004-01-13' AS Date))
INSERT [dbo].[SinhVien] ([maSV], [hoTen], [NgaySinh]) VALUES (N'sv2       ', N'tham', CAST(N'2004-07-14' AS Date))
INSERT [dbo].[SinhVien] ([maSV], [hoTen], [NgaySinh]) VALUES (N'sv3       ', N'huy', CAST(N'2004-11-29' AS Date))
GO
INSERT [dbo].[Khoa] ([maKhoa], [tenKhoa]) VALUES (N'khoa1', N'dientu')
INSERT [dbo].[Khoa] ([maKhoa], [tenKhoa]) VALUES (N'khoa2', N'kinhte')
INSERT [dbo].[Khoa] ([maKhoa], [tenKhoa]) VALUES (N'khoa3', N'ngoaingu')
GO
INSERT [dbo].[BoMon] ([maBM], [tenBM], [maKhoa]) VALUES (N'bm1', N'cntt', N'khoa1')
INSERT [dbo].[BoMon] ([maBM], [tenBM], [maKhoa]) VALUES (N'bm2', N'kinhtechinh', N'khoa2')
INSERT [dbo].[BoMon] ([maBM], [tenBM], [maKhoa]) VALUES (N'bm3', N'tienganh', N'khoa3')
GO
INSERT [dbo].[GiaoVien] ([maGV], [hoTen], [NgaySinh], [maBM]) VALUES (N'gv1', N'ngockem', CAST(N'2000-01-01' AS Date), N'bm1')
INSERT [dbo].[GiaoVien] ([maGV], [hoTen], [NgaySinh], [maBM]) VALUES (N'gv2', N'phao', CAST(N'2003-01-01' AS Date), N'bm2')
INSERT [dbo].[GiaoVien] ([maGV], [hoTen], [NgaySinh], [maBM]) VALUES (N'gv3', N'virus', CAST(N'1999-01-01' AS Date), N'bm3')
GO
INSERT [dbo].[MonHoc] ([maMon], [TenMon], [STC]) VALUES (N'sinh1', N'sinh', 3)
INSERT [dbo].[MonHoc] ([maMon], [TenMon], [STC]) VALUES (N'toan1', N'toan', 2)
INSERT [dbo].[MonHoc] ([maMon], [TenMon], [STC]) VALUES (N'van1', N'van', 1)
GO
INSERT [dbo].[LopHP] ([maLopHP], [TenLopHP], [HK], [maMon], [maGV]) VALUES (N'm11       ', N'toan', N'1', N'toan1', N'gv1')
INSERT [dbo].[LopHP] ([maLopHP], [TenLopHP], [HK], [maMon], [maGV]) VALUES (N'm12       ', N'sinh', N'1', N'sinh1', N'gv2')
INSERT [dbo].[LopHP] ([maLopHP], [TenLopHP], [HK], [maMon], [maGV]) VALUES (N'm13       ', N'van', N'1', N'van1', N'gv3')
GO
INSERT [dbo].[DKMH] ([id_dk], [maLopHP], [maSV], [DiemThi], [PhanTramThi], [DiemThanhPhan]) VALUES (N'dk11      ', N'm11       ', N'sv1       ', 5, 0.6, 5.2)
INSERT [dbo].[DKMH] ([id_dk], [maLopHP], [maSV], [DiemThi], [PhanTramThi], [DiemThanhPhan]) VALUES (N'dk12      ', N'm12       ', N'sv2       ', 6, 0.6, 7)
INSERT [dbo].[DKMH] ([id_dk], [maLopHP], [maSV], [DiemThi], [PhanTramThi], [DiemThanhPhan]) VALUES (N'dk13      ', N'm13       ', N'sv3       ', 9, 0.6, 8.6)
GO
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (N'id01      ', N'dk11      ', 5)
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (N'id02      ', N'dk12      ', 6)
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (N'id03      ', N'dk13      ', 9)
GO
