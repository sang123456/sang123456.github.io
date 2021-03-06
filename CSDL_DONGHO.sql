USE [master]
GO
/****** Object:  Database [CSDL_DONGHO]    Script Date: 7/11/2018 4:40:53 PM ******/
CREATE DATABASE [CSDL_DONGHO]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CSDL_DONGHO', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\CSDL_DONGHO.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CSDL_DONGHO_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\CSDL_DONGHO_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [CSDL_DONGHO] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CSDL_DONGHO].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CSDL_DONGHO] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CSDL_DONGHO] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CSDL_DONGHO] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CSDL_DONGHO] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CSDL_DONGHO] SET ARITHABORT OFF 
GO
ALTER DATABASE [CSDL_DONGHO] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [CSDL_DONGHO] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CSDL_DONGHO] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CSDL_DONGHO] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CSDL_DONGHO] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CSDL_DONGHO] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CSDL_DONGHO] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CSDL_DONGHO] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CSDL_DONGHO] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CSDL_DONGHO] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CSDL_DONGHO] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CSDL_DONGHO] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CSDL_DONGHO] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CSDL_DONGHO] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CSDL_DONGHO] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CSDL_DONGHO] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CSDL_DONGHO] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CSDL_DONGHO] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CSDL_DONGHO] SET  MULTI_USER 
GO
ALTER DATABASE [CSDL_DONGHO] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CSDL_DONGHO] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CSDL_DONGHO] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CSDL_DONGHO] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [CSDL_DONGHO] SET DELAYED_DURABILITY = DISABLED 
GO
USE [CSDL_DONGHO]
GO
/****** Object:  Table [dbo].[BAOHANH]    Script Date: 7/11/2018 4:40:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BAOHANH](
	[TGBH] [int] IDENTITY(1,1) NOT NULL,
	[HinhThucBH] [nvarchar](50) NOT NULL,
	[TrangThai] [bit] NOT NULL,
 CONSTRAINT [PK_BaoHanh] PRIMARY KEY CLUSTERED 
(
	[TGBH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CHITIETDONTHANG]    Script Date: 7/11/2018 4:40:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETDONTHANG](
	[MaDonHang] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[Soluong] [int] NULL,
	[Dongia] [float] NULL,
	[ThanhTien] [float] NULL,
 CONSTRAINT [PK_CTDatHang] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CHUCNANG]    Script Date: 7/11/2018 4:40:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHUCNANG](
	[MaCN] [int] IDENTITY(1,1) NOT NULL,
	[TenCN] [nvarchar](30) NOT NULL,
	[TrangThai] [bit] NOT NULL,
 CONSTRAINT [PK_ChucNang] PRIMARY KEY CLUSTERED 
(
	[MaCN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DONDATHANG]    Script Date: 7/11/2018 4:40:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DONDATHANG](
	[MaDonHang] [int] IDENTITY(1,1) NOT NULL,
	[CMND] [varchar](13) NULL,
	[Dathanhtoan] [bit] NULL,
	[Tinhtranggiaohang] [bit] NULL,
	[Ngaydat] [datetime] NULL,
	[Ngaygiao] [datetime] NULL,
	[DiaChiLienHe] [nvarchar](50) NOT NULL,
	[EmailLienHe] [varchar](max) NOT NULL,
	[SDTLienHe] [varchar](12) NOT NULL,
	[TongTien] [float] NOT NULL,
	[TrangThai] [bit] NOT NULL,
 CONSTRAINT [PK_DonDatHang] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DONGHO]    Script Date: 7/11/2018 4:40:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DONGHO](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](100) NOT NULL,
	[GiaSP] [float] NULL,
	[Mota] [nvarchar](max) NULL,
	[Ngaycapnhat] [datetime] NULL,
	[Soluongton] [int] NULL,
	[MaKM] [int] NULL,
	[MaTH] [int] NULL,
	[MaNSX] [int] NULL,
	[img] [varchar](max) NULL,
	[TGBH] [int] NULL,
	[TrangThai] [bit] NOT NULL,
 CONSTRAINT [PK_DongHo] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 7/11/2018 4:40:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[CMND] [varchar](13) NOT NULL,
	[TenKH] [nvarchar](50) NOT NULL,
	[GioiTinh] [bit] NOT NULL,
	[Ngaysinh] [datetime] NOT NULL,
	[TrangThai] [bit] NOT NULL,
	[Email] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Khachhang] PRIMARY KEY CLUSTERED 
(
	[CMND] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KHUYENMAI]    Script Date: 7/11/2018 4:40:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHUYENMAI](
	[MaKM] [int] IDENTITY(1,1) NOT NULL,
	[HinhThucKM] [nvarchar](50) NOT NULL,
	[TrangThai] [bit] NOT NULL,
 CONSTRAINT [PK_KhuyenMai] PRIMARY KEY CLUSTERED 
(
	[MaKM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NHASANXUAT]    Script Date: 7/11/2018 4:40:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NHASANXUAT](
	[MaNSX] [int] IDENTITY(1,1) NOT NULL,
	[TenNSX] [nvarchar](50) NOT NULL,
	[Diachi] [nvarchar](200) NULL,
	[DienThoai] [varchar](50) NULL,
	[TrangThai] [bit] NOT NULL,
 CONSTRAINT [PK_NhaSanXuat] PRIMARY KEY CLUSTERED 
(
	[MaNSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PHANQUYEN]    Script Date: 7/11/2018 4:40:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PHANQUYEN](
	[MaTK] [int] IDENTITY(1,1) NOT NULL,
	[TaiKhoan] [varchar](13) NOT NULL,
	[PassWord] [varchar](max) NOT NULL,
	[MaCN] [int] NULL,
	[TrangThai] [bit] NOT NULL,
 CONSTRAINT [PK_PhanQuyen] PRIMARY KEY CLUSTERED 
(
	[MaTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[THUONGHIEU]    Script Date: 7/11/2018 4:40:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[THUONGHIEU](
	[MaTH] [int] IDENTITY(1,1) NOT NULL,
	[TenTH] [nvarchar](50) NOT NULL,
	[imgContent] [varchar](max) NOT NULL,
	[imgHeader] [varchar](max) NOT NULL,
	[TrangThai] [bit] NOT NULL,
 CONSTRAINT [PK_ThuongHieu] PRIMARY KEY CLUSTERED 
(
	[MaTH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TinTuc]    Script Date: 7/11/2018 4:40:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinTuc](
	[MaTT] [int] IDENTITY(1,1) NOT NULL,
	[TenTT] [nvarchar](50) NOT NULL,
	[NoiDung] [nvarchar](max) NULL,
	[TrangThai] [bit] NOT NULL,
 CONSTRAINT [PK_TinTuc] PRIMARY KEY CLUSTERED 
(
	[MaTT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[BAOHANH] ON 

INSERT [dbo].[BAOHANH] ([TGBH], [HinhThucBH], [TrangThai]) VALUES (1, N'', 1)
INSERT [dbo].[BAOHANH] ([TGBH], [HinhThucBH], [TrangThai]) VALUES (2, N'1 Tháng', 1)
INSERT [dbo].[BAOHANH] ([TGBH], [HinhThucBH], [TrangThai]) VALUES (3, N'3 Tháng', 1)
INSERT [dbo].[BAOHANH] ([TGBH], [HinhThucBH], [TrangThai]) VALUES (4, N'6 Tháng', 1)
INSERT [dbo].[BAOHANH] ([TGBH], [HinhThucBH], [TrangThai]) VALUES (5, N'12 Tháng', 1)
INSERT [dbo].[BAOHANH] ([TGBH], [HinhThucBH], [TrangThai]) VALUES (6, N'18 Tháng', 1)
INSERT [dbo].[BAOHANH] ([TGBH], [HinhThucBH], [TrangThai]) VALUES (7, N'24 Tháng', 1)
SET IDENTITY_INSERT [dbo].[BAOHANH] OFF
SET IDENTITY_INSERT [dbo].[CHUCNANG] ON 

INSERT [dbo].[CHUCNANG] ([MaCN], [TenCN], [TrangThai]) VALUES (1, N'admin', 1)
INSERT [dbo].[CHUCNANG] ([MaCN], [TenCN], [TrangThai]) VALUES (2, N'guest', 1)
SET IDENTITY_INSERT [dbo].[CHUCNANG] OFF
SET IDENTITY_INSERT [dbo].[DONGHO] ON 

INSERT [dbo].[DONGHO] ([MaSP], [TenSP], [GiaSP], [Mota], [Ngaycapnhat], [Soluongton], [MaKM], [MaTH], [MaNSX], [img], [TGBH], [TrangThai]) VALUES (1, N'G-SHOCK GA700SE', 3381000, N'Kim giờ và kim phút đa chiều trông giống như được chạm khắc từ một miếng kim loại để mang đến thiết kế mạnh mẽ và táo bạo. Kiểu dáng mới của những chiếc đồng hồ này không chỉ cải thiện khả năng đọc mà còn mang lại cảm giác cứng cáp. 
Nút bấm phía trước ở vị trí 6 giờ tăng thêm phong cách năng động, sành điệu. Ba màu chủ đạo của mẫu này đã được tuyển chọn cẩn thận nhằm phản ánh khái niệm thương hiệu. Màu đen - đỏ, đen và đỏ thể hiện sự cứng cáp mà các mẫu này được thiết kế để thể hiện. 
Toàn bộ tính hữu dụng của định dạng kim-số, chiếu sáng bằng đèn LED có độ sáng cao, chức năng chuyển kim và nhiều chức năng khác tạo nên những chiếc đồng hồ tiện dụng nhất. 
Mặt đồng hồ 3D kết hợp với thiết kế cứng cáp đặc trưng giúp các mẫu GA-700 mới toát lên vẻ năng động và mạnh mẽ. ', CAST(N'2018-03-26 11:48:26.447' AS DateTime), 1, 2, 1, 1, N'g-shock ga700se-3tr381k.png', 5, 1)
INSERT [dbo].[DONGHO] ([MaSP], [TenSP], [GiaSP], [Mota], [Ngaycapnhat], [Soluongton], [MaKM], [MaTH], [MaNSX], [img], [TGBH], [TrangThai]) VALUES (2, N'G-SHOCK GBA-4004C', 5881000, N'G-SHOCK, chiếc đồng hồ nổi tiếng với nhiều thị hiếu và văn hóa khác nhau, tự hào công bố một bộ sưu tập đồng hồ mang chủ đề âm nhạc G’MIX mới.
Mỗi chiếc đồng hồ đều được trang bị thiết bị Bluetooth® SMART, giúp bạn thiết lập kết nối với điện thoại thông minh để kiểm soát các tính năng khác nhau của điện thoại từ đồng hồ của bạn. Bạn có thể sử dụng công tắc xoay lớn ở vị trí 3 giờ để chuyển giữa các bài hát, điều khiển âm lượng nhạc hoặc điều chỉnh các thuộc tính âm thanh bằng một chức năng cân bằng âm thanh. Với chức năng tìm kiếm tựa đề bài hát, chỉ cần chạm một nút, bạn có thể tra cứu tựa đề của bài hát đang phát ở vị trí của bạn và hiển thị trên đồng hồ. Thậm chí bạn có thể sử dụng đồng hồ để tạo ra các hiệu ứng âm thanh khác nhau trên điện thoại.
Mặt số ở vị trí 9 giờ, cho biết tình trạng kết nối hiện tại giữa đồng hồ và điện thoại, được thiết kế mô phỏng bàn xoay, càng củng cố chủ đề âm nhạc cho các mẫu này.
Mọi tính năng, chức năng và thiết kế của những mẫu G’MIX mới này đều hướng tới âm nhạc và sự thưởng thức âm nhạc của bạn. ', CAST(N'2018-03-26 11:48:26.450' AS DateTime), 3, 2, 1, 1, N'g-shock gba-400-4c -5tr888l.png', 6, 1)
INSERT [dbo].[DONGHO] ([MaSP], [TenSP], [GiaSP], [Mota], [Ngaycapnhat], [Soluongton], [MaKM], [MaTH], [MaNSX], [img], [TGBH], [TrangThai]) VALUES (3, N'G-SHOCK GD-X6900-7', 4636000, N'Mô hình mới Camouflage Series (loạt ngụy trang) thông qua mô hình ngụy trang cổ điển theo thời trang giản dị từ G-SHOCK theo đuổi sự dẻo dai và tiến hóa xuất hiện. ', CAST(N'2018-03-26 11:48:26.450' AS DateTime), 1, 2, 1, 1, N'g-shock gd-x6900mc-7 - 4tr636k.png', 3, 1)
INSERT [dbo].[DONGHO] ([MaSP], [TenSP], [GiaSP], [Mota], [Ngaycapnhat], [Soluongton], [MaKM], [MaTH], [MaNSX], [img], [TGBH], [TrangThai]) VALUES (5, N'CK-K3M214B1', 6350000, N'Calvin Klein Minimal 40mm K3M214B1 là một chiếc đồng hồ Gents đặc biệt và có chức năng. Vật liệu của trường hợp là thép không gỉ, có nghĩa là chất lượng cao của mặt hàng trong khi màu quay số là Đen. 
Liên quan đến khả năng chống nước, đồng hồ có độ chịu đựng lên tới 30 mét. Nó có nghĩa là nó có thể được đeo trong các tình huống mà nó có thể bị bắn tung nhưng không đắm mình, vì vậy chúng ta có thể đeo trong khi rửa tay và chịu mưa. Chúng tôi vận chuyển nó với một hộp ban đầu và 
đảm bảo từ nhà sản xuất. ', CAST(N'2018-03-26 11:48:26.450' AS DateTime), 9, 3, 2, 2, N'CK-K3M214B1.jpg', 7, 1)
INSERT [dbo].[DONGHO] ([MaSP], [TenSP], [GiaSP], [Mota], [Ngaycapnhat], [Soluongton], [MaKM], [MaTH], [MaNSX], [img], [TGBH], [TrangThai]) VALUES (6, N'CK-K2G2G1ZN', 3500000, N'Đồng hồ đẹp mắt của thành phố Calvin Klein này có vỏ bằng thép không gỉ và được cung cấp bởi một phong trào thạch anh. Nó được trang bị một vòng bạc bằng kim loại bạc và có một điểm quay màu xanh lam. Đồng hồ đi kèm với hộp Trình bày của Calvin Klein. ', CAST(N'2018-03-26 11:48:26.450' AS DateTime), 1, 3, 2, 2, N'CK-K2G2G1ZN.jpg', 7, 1)
INSERT [dbo].[DONGHO] ([MaSP], [TenSP], [GiaSP], [Mota], [Ngaycapnhat], [Soluongton], [MaKM], [MaTH], [MaNSX], [img], [TGBH], [TrangThai]) VALUES (7, N'CK-K3M2261', 3999000, N'Đồng hồ đẹp mắt của thành phố Calvin Klein này có vỏ bằng thép không gỉ và được cung cấp bởi một phong trào thạch anh. Nó được trang bị một vòng bạc bằng kim loại bạc và có một điểm quay màu xanh lam. Đồng hồ đi kèm với hộp Trình bày của Calvin Klein. ', CAST(N'2018-03-26 11:48:26.450' AS DateTime), 11, 3, 2, 2, N'CK-K3M2261.jpg', 2, 1)
INSERT [dbo].[DONGHO] ([MaSP], [TenSP], [GiaSP], [Mota], [Ngaycapnhat], [Soluongton], [MaKM], [MaTH], [MaNSX], [img], [TGBH], [TrangThai]) VALUES (8, N'CK-K2N281C1', 15438000, N'Calvin Klein, Tầm quan trọng, Đồng hồ nam, Thép không gỉ, Dây đeo bằng da, Thạch anh Thụy Sĩ (Pin-Powered), K2N281C1 ', CAST(N'2018-03-26 11:48:26.453' AS DateTime), 13, 3, 2, 2, N'CK-K2N281C1.jpg', 7, 1)
INSERT [dbo].[DONGHO] ([MaSP], [TenSP], [GiaSP], [Mota], [Ngaycapnhat], [Soluongton], [MaKM], [MaTH], [MaNSX], [img], [TGBH], [TrangThai]) VALUES (9, N'Channel-H2012  ', 133515000, N'Đồng hồ J12 được chế tạo chủ yếu từ gốm sứ hoàn thiện bóng cao, chống trầy xước, giữ cho chiếc đồng hồ trông đẹp và mới trong một thời gian dài.  ', CAST(N'2018-03-26 11:48:26.453' AS DateTime), 9, 2, 3, 3, N'h2012 Mens Automatic Ceramic GMT Sapphire - 133tr594k.jpg', 7, 1)
INSERT [dbo].[DONGHO] ([MaSP], [TenSP], [GiaSP], [Mota], [Ngaycapnhat], [Soluongton], [MaKM], [MaTH], [MaNSX], [img], [TGBH], [TrangThai]) VALUES (10, N'Channel-H2978  ', 117425000, N'Mép thép 
Tất cả gốm sứ màu xám đen.
Đai vòng hoa màu đen với dấu hiệu giờ tiếng Ả Rập được áp dụng.
Đã vẽ trắng phút & giây theo dõi các chỉ mục.
Nhỏ giây màu xám quay số ở vị trí 6 giờ.
Cửa sổ ngày nằm ở vị trí 6 giờ.
Chanel tự động chuyển động với dự trữ điện 42 giờ. ', CAST(N'2018-03-26 11:48:26.453' AS DateTime), 1, 2, 3, 3, N'h2978 quatz unisex ceramic sapphire- 117tr642k.jpg', 7, 1)
INSERT [dbo].[DONGHO] ([MaSP], [TenSP], [GiaSP], [Mota], [Ngaycapnhat], [Soluongton], [MaKM], [MaTH], [MaNSX], [img], [TGBH], [TrangThai]) VALUES (11, N'Channel-H3567 ', 580000000, N'Hộp 18 cara vàng vàng với vòng tay satin màu đen. Vòng cố định kim cương cố định. Đen được đánh dấu bằng vàng camellias quay số với bàn tay màu vàng-tone. Loại quay số: Tương tự. Tự động di chuyển với khoảng 42 giờ dự trữ năng lượng. Kéo / đẩy vương miện. Kích thước vỏ: 37,5 mm. Vỏ hình dạng. Chịu nước ở độ cao 30 mét / 100 feet. Chức năng: giờ, phút. Thông tin thêm: bộ vương miện với một chiếc cabyon onyx, vỏ kim cương được thiết kế với 60 viên kim cương lấp lánh (~ 1 cara), khóa 80 viên kim cương cắt xén (~ 0.49 cara). Phong cách xem cao cấp. Xem nhãn hiệu: Swiss Made. Chanel Mademoiselle Prive Camelia Đồng hồ nữ tự động  ', CAST(N'2018-03-26 11:48:26.457' AS DateTime), -2, 2, 3, 3, N'H3567 Mademoiselle Prive Camelia-580tr.jpg', 7, 1)
INSERT [dbo].[DONGHO] ([MaSP], [TenSP], [GiaSP], [Mota], [Ngaycapnhat], [Soluongton], [MaKM], [MaTH], [MaNSX], [img], [TGBH], [TrangThai]) VALUES (12, N'DW-Classic Back Cornwall ', 4500000, N'Daniel Wellington Đen cổ điển Cornwall 40mm bạc từ zakwatch.ch, Lucerne, Thụy Sĩ. Giá tốt nhất, thanh toán theo hóa đơn, giao hàng miễn phí và quyền trở lại tại Thụy Sĩ và tại Principality of Liechtenstein. Đặt hàng ngay! ', CAST(N'2018-03-26 11:48:26.457' AS DateTime), 14, 4, 4, 4, N'classic back cornwall-4tr5.png', 4, 1)
INSERT [dbo].[DONGHO] ([MaSP], [TenSP], [GiaSP], [Mota], [Ngaycapnhat], [Soluongton], [MaKM], [MaTH], [MaNSX], [img], [TGBH], [TrangThai]) VALUES (13, N'DW-Classic Cornwall ', 4500000, N'Đồng hồ DW Classic Petite Cornwall mặt kính Trắng/Đen kết hợp với dây Nato và vòng vàng trên dây thể hiện sự phối hợp sang trọng. Phong cách trẻ trung và cao quý thể hiện qua chiếc đồng hồ đen dây Nato. ', CAST(N'2018-03-26 11:48:26.457' AS DateTime), 9, 3, 4, 4, N'classic cornwall-4tr500k.png', 5, 1)
INSERT [dbo].[DONGHO] ([MaSP], [TenSP], [GiaSP], [Mota], [Ngaycapnhat], [Soluongton], [MaKM], [MaTH], [MaNSX], [img], [TGBH], [TrangThai]) VALUES (14, N'DW-Dapper Cornwall', 4600000, N' Dapper Cornwall nổi bật với mặt đồng hồ hình quả trứng và dây đeo NATO đen tuyền. Nổi bật hơn nhờ các chi tiết như kim màu xanh thẫm, chữ số La Mã và màn hình hiển thị ngày tháng, chiếc đồng hồ này là phụ kiện tuyệt vời khi kết hợp với bất kỳ trang phục nào.', CAST(N'2018-03-26 11:48:26.457' AS DateTime), 5, 2, 4, 4, N'dapper cornwall-4tr6.png', 3, 1)
INSERT [dbo].[DONGHO] ([MaSP], [TenSP], [GiaSP], [Mota], [Ngaycapnhat], [Soluongton], [MaKM], [MaTH], [MaNSX], [img], [TGBH], [TrangThai]) VALUES (15, N'G-Chrono Mens Ceramic Bracelet watch', 36287000, N'Hộp bằng thép không rỉ mạ ion đen với một vòng đeo bằng sứ màu đen. Gọng kính màu đen bằng gốm hình chữ G. Quay số màu đen với bàn tay màu đen sáng và điểm số tiếng Ả Rập giờ. Dấu hiệu phút quanh rìa ngoài. Loại quay số: Tương tự. Tay phát sáng. Chronograph - hai mặt số phụ hiển thị: 60 giây và 30 phút. Phong trào thạch anh. Tinh thể sapphire chống xước. Kéo / đẩy vương miện. Trường hợp rắn trở lại. Đường kính hộp: 38 mm. Độ dày vỏ: 11,5 mm Vỏ hình dạng. Chiều rộng băng: 20 mm. Chiều dài ban nhạc: 7 inch. Nắm gấp gấp. Chịu nước ở độ cao 30 mét / 100 feet. Chức năng: chronograf, giờ, phút, giây. Phong cách ăn mặc xem. Gucci G-Chrono Chronograph Black Dial Gương cổ của người da đen', CAST(N'2018-03-26 11:48:26.460' AS DateTime), 7, 3, 5, 5, N'G-Chrono Mens Ceramic Bracelet watch - 36tr287k.jpg', 3, 1)
INSERT [dbo].[DONGHO] ([MaSP], [TenSP], [GiaSP], [Mota], [Ngaycapnhat], [Soluongton], [MaKM], [MaTH], [MaNSX], [img], [TGBH], [TrangThai]) VALUES (16, N'G-chrono Mens Swiss Ceramic watch', 37000000, N'đồng hồ G Chrono là mẫu mực của nghề thủ công Thụy Sĩ kết hợp với thời trang ngoài trời của Ý. Nắp Bezel "G" dễ nhận ra của bộ sưu tập này sẽ giúp nó trở thành một biểu tượng mang tính biểu tượng. Kiểu không gian này có vô số các lựa chọn như thép mạ bóng, PVD màu và thậm chí gốm. Đối với sự nhiệt tình giàu sang, các khung lắp sang trọng có sẵn với kim cương, topaz và các lớp phủ khác. Các chữ ký thương hiệu khác bao gồm danh tính Gucci ở đồng hồ 8o hoặc đồng hồ 12o cũng như trên vương miện; và dải xanh và đỏ tại đồng hồ 4o. Tùy chọn dây đeo có nhiều vật liệu đa dạng như thép đánh bóng, PVD màu, da, cao su hoặc gốm. Các vật liệu trường hợp từ kim loại đến màu PVD.', CAST(N'2018-03-26 11:48:26.460' AS DateTime), 7, 4, 5, 5, N'G-chrono Mens Swiss Ceramic watch - 37tr.jpg', 3, 1)
INSERT [dbo].[DONGHO] ([MaSP], [TenSP], [GiaSP], [Mota], [Ngaycapnhat], [Soluongton], [MaKM], [MaTH], [MaNSX], [img], [TGBH], [TrangThai]) VALUES (17, N'Gucci G-Timeless Watch', 22331000, N'Một phần của bộ sưu tập G-Timeless, đồng hồ cổ điển này được thiết kế với một cảm giác truyền thống, đặt cạnh nhau với mã lấy cảm hứng từ thẩm mỹ mới của Gucci. Mẫu nhà được hiển thị trên mặt số, bao gồm cả ong, ngôi sao và trái tim.', CAST(N'2018-03-26 11:48:26.460' AS DateTime), 7, 2, 5, 5, N'Gucci G-Timeless Watch-22tr331k.jpg', 3, 1)
INSERT [dbo].[DONGHO] ([MaSP], [TenSP], [GiaSP], [Mota], [Ngaycapnhat], [Soluongton], [MaKM], [MaTH], [MaNSX], [img], [TGBH], [TrangThai]) VALUES (18, N'longines 4A412', 34882000, N' Hoàn toàn tự động, sử dụng đầy đủ di sản và kỹ thuật mà Longines đã hoàn thiện trong vòng 180 năm qua Bộ sưu tập Master Longines này là một sự ấn tượng và đậm nét vì nó được làm tốt. Với một chiếc đồng hồ bằng bạc arabic với hai mặt đồng hồ chronograph và cửa sổ ngày được đặt trong tinh thể sapphire chống xước có một số lượng lớn các chức năng được trình bày trong ví dụ tuyệt vời của nghề thủ công truyền thống được mua cho đến nay sử dụng các vật liệu hiện đại. Được khen ngợi bằng vỏ thép không gỉ 40mm và dây da cá sấu nâu với các nút điều khiển chronograph ở hai bên vương miện. Đồng hồ này là một ví dụ tuyệt vời để giới thiệu những sản phẩm thủ công mà Longines đã trở nên nổi tiếng trên thế giới. Tinh vi, chức năng,', CAST(N'2018-03-26 11:48:26.460' AS DateTime), 7, 2, 6, 6, N'longines-34tr882k.jpg', 5, 1)
INSERT [dbo].[DONGHO] ([MaSP], [TenSP], [GiaSP], [Mota], [Ngaycapnhat], [Soluongton], [MaKM], [MaTH], [MaNSX], [img], [TGBH], [TrangThai]) VALUES (19, N'longines 4B8A5', 42690000, N'Đồng hồ của bộ sưu tập Longines Sport có một sự hấp dẫn thể thao đặc biệt với các miếng viền mở rộng có sẵn trong nhiều màu như đen, đỏ, xanh và bạc. Hộp hoàn hảo của họ được làm bằng thép không gỉ để thanh lịch lâu dài. 
Các phần mở rộng được phát âm từ trường hợp là vương miện và các ốc vít bổ sung trong mỗi chiếc đồng hồ của bộ sưu tập này. Vương miện của họ được vạch ra để truyền đạt một yếu tố hấp dẫn gồ ghề cho bộ đồng phục, cũng như để đảm bảo một kẹp an toàn trong khi điều chỉnh thời gian.
 Được bảo vệ bởi vỏ bọc bằng thủy tinh sapphire, các mô hình nhất định tự hào có nhiều lớp phủ chống phản xạ cho một cái nhìn không bị hạn chế về thời gian. Các vòng quay tròn thay đổi theo từng giai điệu từ trắng sang đen, bao gồm màu xanh và ngọc trai độc đáo. Các khoảng thời gian theo giờ được đánh dấu bằng các chữ số Ả Rập mới và
 các chỉ mục đơn giản, trong khi các phiên bản cụ thể được bọc bằng những viên kim cương rực rỡ. Longines tô điểm cho những chiếc đồng hồ này với kim cương cũng như kích thước quyến rũ. Hầu hết các đồng hồ đều có đôi lót kép hai lớp tinh tế, trong khi những chiếc khác đeo dây đai cao su bền. ', CAST(N'2018-03-26 11:48:26.460' AS DateTime), 3, 5, 6, 6, N'longines-42tr690k.jpg', 6, 1)
INSERT [dbo].[DONGHO] ([MaSP], [TenSP], [GiaSP], [Mota], [Ngaycapnhat], [Soluongton], [MaKM], [MaTH], [MaNSX], [img], [TGBH], [TrangThai]) VALUES (20, N'longines 4C3Y1', 54660000, N' Vẻ trắng sáng tuyệt vời của Finish gốc hoàn chỉnh với Chữ sáng Màu Vàng sáng và Bàn tay Vàng Phù hợp. Men đen được chèn vào các Dấu 12, 3 và 9. Quay số ký hiệu Longines Flaship và Thu Swiss Sỹ. Longines Logo Ở trên Trung tâm và Nhỏ giây Dưới Trung tâm.', CAST(N'2018-03-26 11:48:26.460' AS DateTime), 7, 5, 6, 6, N'longines-54tr666k.jpg', 7, 1)
INSERT [dbo].[DONGHO] ([MaSP], [TenSP], [GiaSP], [Mota], [Ngaycapnhat], [Soluongton], [MaKM], [MaTH], [MaNSX], [img], [TGBH], [TrangThai]) VALUES (21, N'MoVaDo BLOD SWISS ', 12248000, N'Đồng hồ Masino của nam, 40 mm màu đen PVD-hoàn thành vỏ bằng thép không gỉ với lugs thể thao điêu khắc, màu đen bảo tàng quay số với màu bạc toned chấm và bàn tay, màu đen PVD-hoàn thành thép không gỉ vòng tay với clasp triển khai.', CAST(N'2018-03-26 11:48:26.463' AS DateTime), 5, 4, 7, 7, N'movado bold swiss chronograph- 12tr248k.jpg', 5, 1)
INSERT [dbo].[DONGHO] ([MaSP], [TenSP], [GiaSP], [Mota], [Ngaycapnhat], [Soluongton], [MaKM], [MaTH], [MaNSX], [img], [TGBH], [TrangThai]) VALUES (22, N'Movado Edge ', 22285000, N'- Đồng hồ thời gian trước này có trong tình trạng tốt; đã được phục vụ bởi một jeweler chứng nhận. 
Chức năng đã được thử nghiệm và hoàn hảo Mẫu máy này có vỏ bọc bằng tinh thể, vết bẩn trên vỏ hộp và vỏ bọc', CAST(N'2018-03-26 11:48:26.463' AS DateTime), 9, 4, 7, 7, N'movado edge -22tr295k.jpg', 4, 1)
INSERT [dbo].[DONGHO] ([MaSP], [TenSP], [GiaSP], [Mota], [Ngaycapnhat], [Soluongton], [MaKM], [MaTH], [MaNSX], [img], [TGBH], [TrangThai]) VALUES (23, N'Movado Unisex Swiss Digital Blod', 11200000, N'Bộ sưu tập thời trang Movado® Bold ™ Touch tinh vi này có màn hình cảm ứng màu đen với màn hình hiển thị số lần hai màu xanh lam bao gồm dấu chấm tượng trưng. Một dây đeo silic đen và vỏ thép không gỉ 45mm hoàn thiện giao diện. Phong trào kỹ thuật số được bảo vệ bởi một tinh thể K1, và đồng hồ này có khả năng chịu nước đến 30 mét.', CAST(N'2018-03-26 11:48:26.463' AS DateTime), 8, 4, 7, 7, N'movado unisex swiss digital blod-11tr200k.jpg', 6, 1)
INSERT [dbo].[DONGHO] ([MaSP], [TenSP], [GiaSP], [Mota], [Ngaycapnhat], [Soluongton], [MaKM], [MaTH], [MaNSX], [img], [TGBH], [TrangThai]) VALUES (24, N'SWATCH SPEED UP UNISEX WATCH', 4035000, N'Đồng hồ Grrrr từ Swatch.
Dây silicone xám
Vỏ nhựa màu xám tròn, 42mm, vạch đen ở vạch
Tay đua màu xám chronograph với chữ số màu đen, ba tay, ba subdials và cửa sổ ngày
Phong trào Thạch anh Thụy Sĩ', CAST(N'2018-03-26 11:48:26.463' AS DateTime), 10, 5, 8, 8, N'SWATCH SPEED UP UNISEX WATCH-4tr076k.jpg', 4, 1)
INSERT [dbo].[DONGHO] ([MaSP], [TenSP], [GiaSP], [Mota], [Ngaycapnhat], [Soluongton], [MaKM], [MaTH], [MaNSX], [img], [TGBH], [TrangThai]) VALUES (26, N'Swatch', 2580000, N'<p>Đồng hồ Scoprimi từ Swatch. D&acirc;y đeo silic đen với kh&acirc;u trắng Vỏ nhựa m&agrave;u đen tr&ograve;n, 41mm Quay số m&agrave;u đen với c&aacute;c số si&ecirc;u s&aacute;ng trắng, ba tay, cửa sổ ng&agrave;y / ng&agrave;y v&agrave; biểu trưng Phong tr&agrave;o Thạch anh Thụy Sĩ Khả năng chịu nước đến 30 m&eacute;t</p>', CAST(N'2018-04-24 18:51:37.560' AS DateTime), 16, 3, 8, 8, N'Swatch Unisex Swiss Scoprimi Black Silicone Watch-2tr508k.jpg', 3, 1)
SET IDENTITY_INSERT [dbo].[DONGHO] OFF
INSERT [dbo].[KHACHHANG] ([CMND], [TenKH], [GioiTinh], [Ngaysinh], [TrangThai], [Email]) VALUES (N'025612035', N'nguyen minh luan', 0, CAST(N'1997-12-14 00:00:00.000' AS DateTime), 1, N'luan.nm1997@gmail.com')
SET IDENTITY_INSERT [dbo].[KHUYENMAI] ON 

INSERT [dbo].[KHUYENMAI] ([MaKM], [HinhThucKM], [TrangThai]) VALUES (1, N'', 1)
INSERT [dbo].[KHUYENMAI] ([MaKM], [HinhThucKM], [TrangThai]) VALUES (2, N'Thay Pin trọn đời', 1)
INSERT [dbo].[KHUYENMAI] ([MaKM], [HinhThucKM], [TrangThai]) VALUES (3, N'Giảm giá 5%', 1)
INSERT [dbo].[KHUYENMAI] ([MaKM], [HinhThucKM], [TrangThai]) VALUES (4, N'Giảm giá 10%', 1)
INSERT [dbo].[KHUYENMAI] ([MaKM], [HinhThucKM], [TrangThai]) VALUES (5, N'Voucher 200k', 1)
INSERT [dbo].[KHUYENMAI] ([MaKM], [HinhThucKM], [TrangThai]) VALUES (6, N'Voucher 200k', 1)
SET IDENTITY_INSERT [dbo].[KHUYENMAI] OFF
SET IDENTITY_INSERT [dbo].[NHASANXUAT] ON 

INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX], [Diachi], [DienThoai], [TrangThai]) VALUES (1, N'Bello - GSHOCK', N'46 Lê Thái Tổ, Hoàn Kiếm, Hà Nội', N'04 6686 9898', 1)
INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX], [Diachi], [DienThoai], [TrangThai]) VALUES (2, N'Top Ten - Calivin Klein', N'91 Thạch Thị Thanh, Quận 1, TP.Hồ Chí Minh', N'0926 789 789', 1)
INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX], [Diachi], [DienThoai], [TrangThai]) VALUES (3, N'Xwatch - Channel', N'472 Đường Láng, Đống Đa, Hà Nội', N'0939.868.388', 1)
INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX], [Diachi], [DienThoai], [TrangThai]) VALUES (4, N'VNV WATCH - DW', N'116 Nguyễn Trọng Tuyển, P15, Phú Nhuận, TP. Hồ Chí Minh', N'0909094486', 1)
INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX], [Diachi], [DienThoai], [TrangThai]) VALUES (5, N'BOUTIQUE - GUCCI', N'72A Nguyễn Trãi, Thanh Xuân, Hà Nội', N'18008109', 1)
INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX], [Diachi], [DienThoai], [TrangThai]) VALUES (6, N'DUY ANH - Longines', N'200A PHỐ HUẾ, QUẬN HAI BÀ TRƯNG, HÀ NỘI', N'(024) 3.991.8668', 1)
INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX], [Diachi], [DienThoai], [TrangThai]) VALUES (7, N' XNK HÀNG HIỆU HOA KỲ - MOVADO', N'331 Nguyễn Đình Chiểu, Phường 5, Quận 3, TP. HCM ', N'02838 347 447', 1)
INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX], [Diachi], [DienThoai], [TrangThai]) VALUES (8, N'Hiếu Tín - SWATCH', N'595 Lạc Long Quân, F.10, Q. Tân Bình, TP. HCM', N'(028)39756896', 1)
INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX], [Diachi], [DienThoai], [TrangThai]) VALUES (9, N'giangsang', N'23/7 binh thanh', N'01693439295', 0)
SET IDENTITY_INSERT [dbo].[NHASANXUAT] OFF
SET IDENTITY_INSERT [dbo].[PHANQUYEN] ON 

INSERT [dbo].[PHANQUYEN] ([MaTK], [TaiKhoan], [PassWord], [MaCN], [TrangThai]) VALUES (5, N'admin', N'c4ca4238a0b923820dcc509a6f75849b', 1, 1)
INSERT [dbo].[PHANQUYEN] ([MaTK], [TaiKhoan], [PassWord], [MaCN], [TrangThai]) VALUES (17, N'025612035', N'202cb962ac59075b964b07152d234b70', 2, 1)
SET IDENTITY_INSERT [dbo].[PHANQUYEN] OFF
SET IDENTITY_INSERT [dbo].[THUONGHIEU] ON 

INSERT [dbo].[THUONGHIEU] ([MaTH], [TenTH], [imgContent], [imgHeader], [TrangThai]) VALUES (1, N'CASIO G-SHOCK', N'https://www.deployant.com/wp-content/uploads/2017/05/casio-gshock-ga700-oblique-right.jpg', N'gshock.jpg', 1)
INSERT [dbo].[THUONGHIEU] ([MaTH], [TenTH], [imgContent], [imgHeader], [TrangThai]) VALUES (2, N'CALVIN KLEIN', N'https://cdn2.benzinga.com/files/imagecache/1024x768xUP/images/story/2012/calvin-klein-1839665_1920_0.jpg', N'ck.jpg', 1)
INSERT [dbo].[THUONGHIEU] ([MaTH], [TenTH], [imgContent], [imgHeader], [TrangThai]) VALUES (3, N'CHANNEL', N'http://salemin.vn/Data/ResizeImage/images/v-636134198234880000/donghochanelceramicmoi_4_salemin_3_x500x500x4.jpg', N'chanel.jpg', 1)
INSERT [dbo].[THUONGHIEU] ([MaTH], [TenTH], [imgContent], [imgHeader], [TrangThai]) VALUES (4, N'DW', N'http://3.bp.blogspot.com/-HW3RiiRyZPU/VexP06Q4OaI/AAAAAAAAEiA/PZv2n36FAug/s1600/DW%2Bedit.jpg', N'DW.jpg', 1)
INSERT [dbo].[THUONGHIEU] ([MaTH], [TenTH], [imgContent], [imgHeader], [TrangThai]) VALUES (5, N'GUCCI', N'http://www.chargewatch.net/wp-content/uploads/2016/04/19.jpg', N'gucci.jpg', 1)
INSERT [dbo].[THUONGHIEU] ([MaTH], [TenTH], [imgContent], [imgHeader], [TrangThai]) VALUES (6, N'LONGINES', N'https://www.longines.com.au/uploads/film/video-longines-avigation-a7-watch-1600x900.jpg', N'longi.jpg', 1)
INSERT [dbo].[THUONGHIEU] ([MaTH], [TenTH], [imgContent], [imgHeader], [TrangThai]) VALUES (7, N'MOVADO', N'https://cdn.vox-cdn.com/thumbor/K2m_UucLlazBRpxt-pE2DLUDfLU=/69x0:1136x600/1600x900/cdn.vox-cdn.com/uploads/chorus_image/image/53881217/2017_Movado_Connect_News_IP_1300x600__1_.0.jpg', N'movado.jpg', 1)
INSERT [dbo].[THUONGHIEU] ([MaTH], [TenTH], [imgContent], [imgHeader], [TrangThai]) VALUES (8, N'SWATCH', N'http://www.squiggly.com/swatch-news/wp-content/uploads/2010/07/fullblooded_black_1280x1024.jpg', N'swatch.png', 1)
INSERT [dbo].[THUONGHIEU] ([MaTH], [TenTH], [imgContent], [imgHeader], [TrangThai]) VALUES (11, N'123', N'1.png', N'CK-K3M214B1.jpg', 0)
SET IDENTITY_INSERT [dbo].[THUONGHIEU] OFF
ALTER TABLE [dbo].[CHITIETDONTHANG]  WITH CHECK ADD  CONSTRAINT [FK_DongHo] FOREIGN KEY([MaSP])
REFERENCES [dbo].[DONGHO] ([MaSP])
GO
ALTER TABLE [dbo].[CHITIETDONTHANG] CHECK CONSTRAINT [FK_DongHo]
GO
ALTER TABLE [dbo].[CHITIETDONTHANG]  WITH CHECK ADD  CONSTRAINT [FK_DonHang] FOREIGN KEY([MaDonHang])
REFERENCES [dbo].[DONDATHANG] ([MaDonHang])
GO
ALTER TABLE [dbo].[CHITIETDONTHANG] CHECK CONSTRAINT [FK_DonHang]
GO
ALTER TABLE [dbo].[DONGHO]  WITH CHECK ADD  CONSTRAINT [FK_KhuyenMai] FOREIGN KEY([MaKM])
REFERENCES [dbo].[KHUYENMAI] ([MaKM])
GO
ALTER TABLE [dbo].[DONGHO] CHECK CONSTRAINT [FK_KhuyenMai]
GO
ALTER TABLE [dbo].[DONGHO]  WITH CHECK ADD  CONSTRAINT [FK_Nhasanxaut] FOREIGN KEY([MaNSX])
REFERENCES [dbo].[NHASANXUAT] ([MaNSX])
GO
ALTER TABLE [dbo].[DONGHO] CHECK CONSTRAINT [FK_Nhasanxaut]
GO
ALTER TABLE [dbo].[DONGHO]  WITH CHECK ADD  CONSTRAINT [FK_TGBH] FOREIGN KEY([TGBH])
REFERENCES [dbo].[BAOHANH] ([TGBH])
GO
ALTER TABLE [dbo].[DONGHO] CHECK CONSTRAINT [FK_TGBH]
GO
ALTER TABLE [dbo].[DONGHO]  WITH CHECK ADD  CONSTRAINT [FK_ThuongHieu] FOREIGN KEY([MaTH])
REFERENCES [dbo].[THUONGHIEU] ([MaTH])
GO
ALTER TABLE [dbo].[DONGHO] CHECK CONSTRAINT [FK_ThuongHieu]
GO
ALTER TABLE [dbo].[PHANQUYEN]  WITH CHECK ADD  CONSTRAINT [FK_ChucNang] FOREIGN KEY([MaCN])
REFERENCES [dbo].[CHUCNANG] ([MaCN])
GO
ALTER TABLE [dbo].[PHANQUYEN] CHECK CONSTRAINT [FK_ChucNang]
GO
ALTER TABLE [dbo].[CHITIETDONTHANG]  WITH CHECK ADD CHECK  (([Dongia]>=(0)))
GO
ALTER TABLE [dbo].[CHITIETDONTHANG]  WITH CHECK ADD CHECK  (([Soluong]>(0)))
GO
ALTER TABLE [dbo].[DONGHO]  WITH CHECK ADD CHECK  (([GiaSP]>=(0)))
GO
USE [master]
GO
ALTER DATABASE [CSDL_DONGHO] SET  READ_WRITE 
GO
