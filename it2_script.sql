USE [master]
GO
/****** Object:  Database [Human Resource Service]    Script Date: 10/2/2022 9:43:08 PM ******/
CREATE DATABASE [Human Resource Service]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Human Resource Service', FILENAME = N'D:\Linh tinh\MSSQL15.MSSQLSERVER\MSSQL\DATA\Human Resource Service.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Human Resource Service_log', FILENAME = N'D:\Linh tinh\MSSQL15.MSSQLSERVER\MSSQL\DATA\Human Resource Service_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Human Resource Service] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Human Resource Service].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Human Resource Service] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Human Resource Service] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Human Resource Service] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Human Resource Service] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Human Resource Service] SET ARITHABORT OFF 
GO
ALTER DATABASE [Human Resource Service] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Human Resource Service] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Human Resource Service] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Human Resource Service] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Human Resource Service] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Human Resource Service] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Human Resource Service] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Human Resource Service] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Human Resource Service] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Human Resource Service] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Human Resource Service] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Human Resource Service] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Human Resource Service] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Human Resource Service] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Human Resource Service] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Human Resource Service] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Human Resource Service] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Human Resource Service] SET RECOVERY FULL 
GO
ALTER DATABASE [Human Resource Service] SET  MULTI_USER 
GO
ALTER DATABASE [Human Resource Service] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Human Resource Service] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Human Resource Service] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Human Resource Service] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Human Resource Service] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Human Resource Service] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Human Resource Service', N'ON'
GO
ALTER DATABASE [Human Resource Service] SET QUERY_STORE = OFF
GO
USE [Human Resource Service]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 10/2/2022 9:43:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Eid] [int] NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[roleid] [int] NOT NULL,
	[email] [nvarchar](50) NULL,
	[isActive] [bit] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Certificate]    Script Date: 10/2/2022 9:43:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Certificate](
	[CertificateID] [int] IDENTITY(1,1) NOT NULL,
	[CName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Certificate] PRIMARY KEY CLUSTERED 
(
	[CertificateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contract]    Script Date: 10/2/2022 9:43:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contract](
	[Cid] [int] IDENTITY(1,1) NOT NULL,
	[Eid] [int] NOT NULL,
	[name] [nvarchar](50) NULL,
	[StartingDate] [nvarchar](50) NULL,
	[Status] [nvarchar](50) NULL,
 CONSTRAINT [PK_Contrast_1] PRIMARY KEY CLUSTERED 
(
	[Cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 10/2/2022 9:43:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[Did] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[is_active] [bit] NOT NULL,
 CONSTRAINT [PK_Department_1] PRIMARY KEY CLUSTERED 
(
	[Did] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 10/2/2022 9:43:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Eid] [int] IDENTITY(1,1) NOT NULL,
	[Did] [int] NOT NULL,
	[name] [nvarchar](50) NULL,
	[mentor] [int] NULL,
	[CertificateID] [int] NULL,
	[manager] [nvarchar](50) NULL,
	[workingTime] [nvarchar](50) NULL,
	[approver] [nvarchar](50) NULL,
	[workingPlace] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[emergencyContact] [numeric](10, 0) NULL,
	[phone] [numeric](10, 0) NULL,
	[picture] [nvarchar](150) NULL,
	[certificateLink] [nvarchar](50) NULL,
	[researchArea] [nvarchar](50) NULL,
	[nationality] [nvarchar](50) NULL,
	[idNumber] [bigint] NULL,
	[passport] [bigint] NULL,
	[gender] [bit] NULL,
	[birthplace] [nvarchar](50) NULL,
	[visaNumber] [bigint] NULL,
	[workLicenseNumber] [bigint] NULL,
	[visaExpirationDate] [nvarchar](50) NULL,
	[workLicenseExpirationDate] [nvarchar](50) NULL,
	[position] [nvarchar](50) NULL,
	[isActive] [bit] NULL,
 CONSTRAINT [PK_Employee_1] PRIMARY KEY CLUSTERED 
(
	[Eid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[History]    Script Date: 10/2/2022 9:43:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[History](
	[nameOfFunction] [nvarchar](50) NULL,
	[Aid] [int] NOT NULL,
	[Hid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_History_1] PRIMARY KEY CLUSTERED 
(
	[Hid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Note]    Script Date: 10/2/2022 9:43:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Note](
	[Aid] [int] NOT NULL,
	[Nid] [int] IDENTITY(1,1) NOT NULL,
	[text] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Note_1] PRIMARY KEY CLUSTERED 
(
	[Nid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rating]    Script Date: 10/2/2022 9:43:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rating](
	[Rid] [int] IDENTITY(1,1) NOT NULL,
	[Eid] [int] NOT NULL,
	[name] [nvarchar](50) NULL,
	[status] [nvarchar](50) NULL,
 CONSTRAINT [PK_Rating_1] PRIMARY KEY CLUSTERED 
(
	[Rid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 10/2/2022 9:43:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[roleid] [int] NOT NULL,
	[rolename] [nchar](50) NOT NULL,
 CONSTRAINT [PK_role] PRIMARY KEY CLUSTERED 
(
	[roleid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Salary]    Script Date: 10/2/2022 9:43:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Salary](
	[Cid] [int] NOT NULL,
	[salary] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TimeKeeping]    Script Date: 10/2/2022 9:43:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeKeeping](
	[Tid] [int] IDENTITY(1,1) NOT NULL,
	[Eid] [int] NOT NULL,
	[name] [nvarchar](50) NULL,
	[loginTime] [nvarchar](50) NULL,
	[logoutTime] [nvarchar](50) NULL,
	[workingTime] [nvarchar](50) NULL,
 CONSTRAINT [PK_TimeKeeping_1] PRIMARY KEY CLUSTERED 
(
	[Tid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([id], [Eid], [username], [password], [roleid], [email], [isActive]) VALUES (1, 2, N'vanha', N'123', 1, N'loveeee@gmail.com', 0)
INSERT [dbo].[Account] ([id], [Eid], [username], [password], [roleid], [email], [isActive]) VALUES (2, 3, N'duyhung', N'123', 1, N'highlow@gmail.com', 0)
INSERT [dbo].[Account] ([id], [Eid], [username], [password], [roleid], [email], [isActive]) VALUES (3, 1, N'tranduc', N'Duc123456', 1, N'tdanhaltt18@gmail.com', 1)
INSERT [dbo].[Account] ([id], [Eid], [username], [password], [roleid], [email], [isActive]) VALUES (4, 4, N'thanhlong', N'12345', 1, N'mr2222@gmail.com', 0)
INSERT [dbo].[Account] ([id], [Eid], [username], [password], [roleid], [email], [isActive]) VALUES (5, 5, N'ducthang', N'123456', 1, N'loveeee@gmail.com', 1)
INSERT [dbo].[Account] ([id], [Eid], [username], [password], [roleid], [email], [isActive]) VALUES (6, 6, N'vanquyet', N'123', 2, N'highlow@gmail.com', 0)
INSERT [dbo].[Account] ([id], [Eid], [username], [password], [roleid], [email], [isActive]) VALUES (7, 7, N'lam123', N'123', 2, N'mrmine@gmail.com', 1)
INSERT [dbo].[Account] ([id], [Eid], [username], [password], [roleid], [email], [isActive]) VALUES (8, 8, N'dung456', N'2345', 2, N'ngoc9802@gmail.com', 1)
INSERT [dbo].[Account] ([id], [Eid], [username], [password], [roleid], [email], [isActive]) VALUES (9, 9, N'hoangdep', N'4567', 2, N'lampt@gmail.com', 1)
INSERT [dbo].[Account] ([id], [Eid], [username], [password], [roleid], [email], [isActive]) VALUES (10, 10, N'vantung4', N'1234', 3, NULL, NULL)
INSERT [dbo].[Account] ([id], [Eid], [username], [password], [roleid], [email], [isActive]) VALUES (11, 11, N'hoangtung11', N'1234', 3, NULL, NULL)
INSERT [dbo].[Account] ([id], [Eid], [username], [password], [roleid], [email], [isActive]) VALUES (12, 12, N'chanvoi', N'4567', 3, NULL, NULL)
INSERT [dbo].[Account] ([id], [Eid], [username], [password], [roleid], [email], [isActive]) VALUES (13, 13, N'duylong23', N'123456', 3, NULL, NULL)
INSERT [dbo].[Account] ([id], [Eid], [username], [password], [roleid], [email], [isActive]) VALUES (15, 14, N'vanthang34', N'66666', 3, NULL, NULL)
INSERT [dbo].[Account] ([id], [Eid], [username], [password], [roleid], [email], [isActive]) VALUES (37, NULL, N'longnt', N'123456', 1, N'philonghiryu@gmail.com', 1)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Certificate] ON 

INSERT [dbo].[Certificate] ([CertificateID], [CName]) VALUES (1, N'Graduate')
INSERT [dbo].[Certificate] ([CertificateID], [CName]) VALUES (2, N'Bachelor')
INSERT [dbo].[Certificate] ([CertificateID], [CName]) VALUES (3, N'Master')
INSERT [dbo].[Certificate] ([CertificateID], [CName]) VALUES (4, N'Doctor')
INSERT [dbo].[Certificate] ([CertificateID], [CName]) VALUES (5, N'Other')
SET IDENTITY_INSERT [dbo].[Certificate] OFF
GO
SET IDENTITY_INSERT [dbo].[Contract] ON 

INSERT [dbo].[Contract] ([Cid], [Eid], [name], [StartingDate], [Status]) VALUES (1, 1, N'Fulltime Contract ', N'01/01/2022', N'')
INSERT [dbo].[Contract] ([Cid], [Eid], [name], [StartingDate], [Status]) VALUES (2, 2, N'Fulltime Contract ', N'01/01/2022', NULL)
INSERT [dbo].[Contract] ([Cid], [Eid], [name], [StartingDate], [Status]) VALUES (3, 3, N'Fulltime Contract ', N'01/01/2022', NULL)
INSERT [dbo].[Contract] ([Cid], [Eid], [name], [StartingDate], [Status]) VALUES (5, 5, N'Fulltime Contract ', N'01/01/2022', NULL)
INSERT [dbo].[Contract] ([Cid], [Eid], [name], [StartingDate], [Status]) VALUES (7, 6, N'Fulltime Contract ', N'01/01/2022', NULL)
INSERT [dbo].[Contract] ([Cid], [Eid], [name], [StartingDate], [Status]) VALUES (8, 7, N'Fulltime Contract ', N'01/03/2022', NULL)
INSERT [dbo].[Contract] ([Cid], [Eid], [name], [StartingDate], [Status]) VALUES (9, 8, N'Fulltime Contract ', N'01/03/2022', NULL)
INSERT [dbo].[Contract] ([Cid], [Eid], [name], [StartingDate], [Status]) VALUES (10, 9, N'Fulltime Contract ', N'01/03/2022', NULL)
INSERT [dbo].[Contract] ([Cid], [Eid], [name], [StartingDate], [Status]) VALUES (11, 10, N'Fulltime Contract ', N'01/03/2022', NULL)
INSERT [dbo].[Contract] ([Cid], [Eid], [name], [StartingDate], [Status]) VALUES (12, 11, N'Parttime Contract', N'01/05/2022', NULL)
INSERT [dbo].[Contract] ([Cid], [Eid], [name], [StartingDate], [Status]) VALUES (13, 12, N'Parttime Contract', N'01/05/2022', NULL)
INSERT [dbo].[Contract] ([Cid], [Eid], [name], [StartingDate], [Status]) VALUES (14, 13, N'Parttime Contract', N'01/05/2022', NULL)
INSERT [dbo].[Contract] ([Cid], [Eid], [name], [StartingDate], [Status]) VALUES (15, 14, N'Parttime Contract', N'01/05/2022', NULL)
INSERT [dbo].[Contract] ([Cid], [Eid], [name], [StartingDate], [Status]) VALUES (16, 15, N'Parttime Contract', N'01/05/2022', NULL)
SET IDENTITY_INSERT [dbo].[Contract] OFF
GO
INSERT [dbo].[Department] ([Did], [name], [is_active]) VALUES (1, N'Marketing', 1)
INSERT [dbo].[Department] ([Did], [name], [is_active]) VALUES (2, N'Accounting', 1)
INSERT [dbo].[Department] ([Did], [name], [is_active]) VALUES (3, N'IT', 1)
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([Eid], [Did], [name], [mentor], [CertificateID], [manager], [workingTime], [approver], [workingPlace], [email], [emergencyContact], [phone], [picture], [certificateLink], [researchArea], [nationality], [idNumber], [passport], [gender], [birthplace], [visaNumber], [workLicenseNumber], [visaExpirationDate], [workLicenseExpirationDate], [position], [isActive]) VALUES (1, 3, N'Duc anh ', 4, 3, N'duc', N'40h/week', N'ngan trinh mong to', N'Hà Noi', N'tdanhaltt18@gmail.com', CAST(377778899 AS Numeric(10, 0)), CAST(766000089 AS Numeric(10, 0)), N'https://img.freepik.com/free-photo/portrait-white-man-isolated_53876-40306.jpg?w=2000', N'master', N'master', N'Viet Nam', 1, 5028441, 0, N'Hà Noi', 18821309, 95902, N'2030-02-02', N'2025-01-25', N'Manager', 1)
INSERT [dbo].[Employee] ([Eid], [Did], [name], [mentor], [CertificateID], [manager], [workingTime], [approver], [workingPlace], [email], [emergencyContact], [phone], [picture], [certificateLink], [researchArea], [nationality], [idNumber], [passport], [gender], [birthplace], [visaNumber], [workLicenseNumber], [visaExpirationDate], [workLicenseExpirationDate], [position], [isActive]) VALUES (2, 1, N'Minh', 2, 2, N'phong', N'40h/week', N'nhung', N'HCM', N'loveeee@gmail.com', CAST(567678910 AS Numeric(10, 0)), CAST(366669090 AS Numeric(10, 0)), N'https://media.gettyimages.com/photos/handsome-young-adult-businessman-with-stubble-picture-id1250238624?s=612x612', N'masters', N'Việt Nam', N'Việt Nam', 2, 481563, 1, N'Nghệ An', 2988018, 23476, N'2030-01-18', N'2025-04-01', N'Manager', 0)
INSERT [dbo].[Employee] ([Eid], [Did], [name], [mentor], [CertificateID], [manager], [workingTime], [approver], [workingPlace], [email], [emergencyContact], [phone], [picture], [certificateLink], [researchArea], [nationality], [idNumber], [passport], [gender], [birthplace], [visaNumber], [workLicenseNumber], [visaExpirationDate], [workLicenseExpirationDate], [position], [isActive]) VALUES (3, 2, N'Gia Huy', 3, 4, N'dang', N'40h/week', N'nhi', N'HCM', N'highlow@gmail.com', CAST(598789815 AS Numeric(10, 0)), CAST(899995647 AS Numeric(10, 0)), N'https://media.gettyimages.com/photos/mature-businessman-smiling-over-white-background-picture-id685132245?s=612x612', N'masters', N'Việt Nam', N'Việt Nam', 3, 7514404, 1, N'Hạ Long', 2870021, 54212, N'2030-08-01', N'2025-07-28', N'Manager', 0)
INSERT [dbo].[Employee] ([Eid], [Did], [name], [mentor], [CertificateID], [manager], [workingTime], [approver], [workingPlace], [email], [emergencyContact], [phone], [picture], [certificateLink], [researchArea], [nationality], [idNumber], [passport], [gender], [birthplace], [visaNumber], [workLicenseNumber], [visaExpirationDate], [workLicenseExpirationDate], [position], [isActive]) VALUES (4, 3, N'Minh Huy', 5, 5, N'duc ', N'40h/week', N'anhminh', N'Hà Nội', N'mr2222@gmail.com', CAST(377778899 AS Numeric(10, 0)), CAST(766000089 AS Numeric(10, 0)), N'https://img.freepik.com/free-photo/portrait-cheerful-caucasian-man_53876-13440.jpg?w=2000', N'masters', N'Việt Nam', N'Việt Nam', 1, 5028441, 1, N'Hà Nội', 18821309, 95902, N'2030-02-02', N'2025-01-25', N'Manager', 0)
INSERT [dbo].[Employee] ([Eid], [Did], [name], [mentor], [CertificateID], [manager], [workingTime], [approver], [workingPlace], [email], [emergencyContact], [phone], [picture], [certificateLink], [researchArea], [nationality], [idNumber], [passport], [gender], [birthplace], [visaNumber], [workLicenseNumber], [visaExpirationDate], [workLicenseExpirationDate], [position], [isActive]) VALUES (5, 2, N'Hoang Anh', 1, 1, N'phong', N'40h/week', N'nhung', N'HCM', N'loveeee@gmail.com', CAST(567678910 AS Numeric(10, 0)), CAST(366669090 AS Numeric(10, 0)), N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRPAPtwrcg5VQIDXxmsCJw55ur0owMZihE93ZYCtw&s', N'masters', N'Việt Nam', N'Việt Nam', 2, 481563, 1, N'Nghệ An', 2988018, 23476, N'2030-01-18', N'2025-04-01', N'Manager', 1)
INSERT [dbo].[Employee] ([Eid], [Did], [name], [mentor], [CertificateID], [manager], [workingTime], [approver], [workingPlace], [email], [emergencyContact], [phone], [picture], [certificateLink], [researchArea], [nationality], [idNumber], [passport], [gender], [birthplace], [visaNumber], [workLicenseNumber], [visaExpirationDate], [workLicenseExpirationDate], [position], [isActive]) VALUES (6, 1, N'Duc Tu', 4, 3, N'dang', N'40h/week', N'nhi', N'HCM', N'highlow@gmail.com', CAST(598789815 AS Numeric(10, 0)), CAST(899995647 AS Numeric(10, 0)), N' https://www.anbinhtravel.com/uploaded/portrait/celebrity-portrait-photography.jpg', N'masters', N'Việt Nam', N'Việt Nam', 3, 7514404, 1, N'Hạ Long', 2870021, 54212, N'2030-08-01', N'2025-07-28', N'Manager', 0)
INSERT [dbo].[Employee] ([Eid], [Did], [name], [mentor], [CertificateID], [manager], [workingTime], [approver], [workingPlace], [email], [emergencyContact], [phone], [picture], [certificateLink], [researchArea], [nationality], [idNumber], [passport], [gender], [birthplace], [visaNumber], [workLicenseNumber], [visaExpirationDate], [workLicenseExpirationDate], [position], [isActive]) VALUES (7, 3, N'Huy Hoang', 7, 4, N'phuong', N'40h/week', N'khue', N'Hà Nội', N'mrmine@gmail.com', CAST(513501490 AS Numeric(10, 0)), CAST(784081000 AS Numeric(10, 0)), N'https://images.unsplash.com/photo-1557296387-5358ad7997bb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cmF3JTIwcG9ydHJhaXR8ZW58MHx8MHx8&w=1000&q=80', N'masters', N'Việt Nam', N'Việt Nam', 4, 5446681, 0, N'HCM', 4372434, 54540, N'2030-11-04', N'2025-01-11', N'Manager', 1)
INSERT [dbo].[Employee] ([Eid], [Did], [name], [mentor], [CertificateID], [manager], [workingTime], [approver], [workingPlace], [email], [emergencyContact], [phone], [picture], [certificateLink], [researchArea], [nationality], [idNumber], [passport], [gender], [birthplace], [visaNumber], [workLicenseNumber], [visaExpirationDate], [workLicenseExpirationDate], [position], [isActive]) VALUES (8, 3, N'Thanh Long', 4, 2, N'loc', N'40h/week', N'cuong', N'Hà Nội', N'ngoc9802@gmail.com', CAST(216246215 AS Numeric(10, 0)), CAST(489165654 AS Numeric(10, 0)), N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAJmgs4DA9TFZKfH3AVDjC3e919CIT3ZxfAw&usqp=CAU', N'masters', N'Việt Nam', N'Việt Nam', 5, 4390585, 0, N'HCM', 2945974, 59797, N'2030-09-24', N'2025-07-31', N'Manager', 1)
INSERT [dbo].[Employee] ([Eid], [Did], [name], [mentor], [CertificateID], [manager], [workingTime], [approver], [workingPlace], [email], [emergencyContact], [phone], [picture], [certificateLink], [researchArea], [nationality], [idNumber], [passport], [gender], [birthplace], [visaNumber], [workLicenseNumber], [visaExpirationDate], [workLicenseExpirationDate], [position], [isActive]) VALUES (9, 1, N'Van Ha', 8, 1, N'quang', N'40h/week', N'nhat', N'HCM', N'lampt@gmail.com', CAST(432058457 AS Numeric(10, 0)), CAST(437262674 AS Numeric(10, 0)), N'https://cdn.cnn.com/cnnnext/dam/assets/190430171751-mona-lisa-super-169.jpg', N'masters', N'Việt Nam', N'Việt Nam', 6, 4538942, 0, N'Đà Nẵng', 4397458, 16342, N'2030-12-01', N'2025-03-05', N'Manager', 1)
INSERT [dbo].[Employee] ([Eid], [Did], [name], [mentor], [CertificateID], [manager], [workingTime], [approver], [workingPlace], [email], [emergencyContact], [phone], [picture], [certificateLink], [researchArea], [nationality], [idNumber], [passport], [gender], [birthplace], [visaNumber], [workLicenseNumber], [visaExpirationDate], [workLicenseExpirationDate], [position], [isActive]) VALUES (10, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([Eid], [Did], [name], [mentor], [CertificateID], [manager], [workingTime], [approver], [workingPlace], [email], [emergencyContact], [phone], [picture], [certificateLink], [researchArea], [nationality], [idNumber], [passport], [gender], [birthplace], [visaNumber], [workLicenseNumber], [visaExpirationDate], [workLicenseExpirationDate], [position], [isActive]) VALUES (11, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([Eid], [Did], [name], [mentor], [CertificateID], [manager], [workingTime], [approver], [workingPlace], [email], [emergencyContact], [phone], [picture], [certificateLink], [researchArea], [nationality], [idNumber], [passport], [gender], [birthplace], [visaNumber], [workLicenseNumber], [visaExpirationDate], [workLicenseExpirationDate], [position], [isActive]) VALUES (12, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([Eid], [Did], [name], [mentor], [CertificateID], [manager], [workingTime], [approver], [workingPlace], [email], [emergencyContact], [phone], [picture], [certificateLink], [researchArea], [nationality], [idNumber], [passport], [gender], [birthplace], [visaNumber], [workLicenseNumber], [visaExpirationDate], [workLicenseExpirationDate], [position], [isActive]) VALUES (13, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([Eid], [Did], [name], [mentor], [CertificateID], [manager], [workingTime], [approver], [workingPlace], [email], [emergencyContact], [phone], [picture], [certificateLink], [researchArea], [nationality], [idNumber], [passport], [gender], [birthplace], [visaNumber], [workLicenseNumber], [visaExpirationDate], [workLicenseExpirationDate], [position], [isActive]) VALUES (14, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([Eid], [Did], [name], [mentor], [CertificateID], [manager], [workingTime], [approver], [workingPlace], [email], [emergencyContact], [phone], [picture], [certificateLink], [researchArea], [nationality], [idNumber], [passport], [gender], [birthplace], [visaNumber], [workLicenseNumber], [visaExpirationDate], [workLicenseExpirationDate], [position], [isActive]) VALUES (15, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([Eid], [Did], [name], [mentor], [CertificateID], [manager], [workingTime], [approver], [workingPlace], [email], [emergencyContact], [phone], [picture], [certificateLink], [researchArea], [nationality], [idNumber], [passport], [gender], [birthplace], [visaNumber], [workLicenseNumber], [visaExpirationDate], [workLicenseExpirationDate], [position], [isActive]) VALUES (18, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([Eid], [Did], [name], [mentor], [CertificateID], [manager], [workingTime], [approver], [workingPlace], [email], [emergencyContact], [phone], [picture], [certificateLink], [researchArea], [nationality], [idNumber], [passport], [gender], [birthplace], [visaNumber], [workLicenseNumber], [visaExpirationDate], [workLicenseExpirationDate], [position], [isActive]) VALUES (19, 2, N'Tran Duc Anh', 3, 1, N'Ngan Trinh', N'40h/week', N'duc anh', N'Ha Noi', N'anhdthe141741@fpt.edu.vn', CAST(1 AS Numeric(10, 0)), CAST(965316967 AS Numeric(10, 0)), N'', N'no', N'ha noi', N'Viet Nam', 5, 2, 1, N'Ha Noi', 3, 4, N'13-05-2000', N'13-05-2100', N'boss', 0)
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
INSERT [dbo].[Role] ([roleid], [rolename]) VALUES (1, N'User                                              ')
INSERT [dbo].[Role] ([roleid], [rolename]) VALUES (2, N'Admin                                             ')
INSERT [dbo].[Role] ([roleid], [rolename]) VALUES (3, N'Employee                                          ')
GO
INSERT [dbo].[Salary] ([Cid], [salary]) VALUES (1, 12000000)
INSERT [dbo].[Salary] ([Cid], [salary]) VALUES (2, 12000000)
INSERT [dbo].[Salary] ([Cid], [salary]) VALUES (3, 12000000)
INSERT [dbo].[Salary] ([Cid], [salary]) VALUES (5, 14000000)
INSERT [dbo].[Salary] ([Cid], [salary]) VALUES (7, 14000000)
INSERT [dbo].[Salary] ([Cid], [salary]) VALUES (8, 14000000)
INSERT [dbo].[Salary] ([Cid], [salary]) VALUES (9, 14000000)
INSERT [dbo].[Salary] ([Cid], [salary]) VALUES (10, 11000000)
INSERT [dbo].[Salary] ([Cid], [salary]) VALUES (11, 11000000)
INSERT [dbo].[Salary] ([Cid], [salary]) VALUES (12, 5400000)
INSERT [dbo].[Salary] ([Cid], [salary]) VALUES (13, 5400000)
INSERT [dbo].[Salary] ([Cid], [salary]) VALUES (14, 6700000)
INSERT [dbo].[Salary] ([Cid], [salary]) VALUES (15, 6700000)
INSERT [dbo].[Salary] ([Cid], [salary]) VALUES (16, 6700000)
GO
ALTER TABLE [dbo].[Account] ADD  CONSTRAINT [DF_Account_isActive]  DEFAULT ((0)) FOR [isActive]
GO
ALTER TABLE [dbo].[Department] ADD  CONSTRAINT [DF_Department_isActive]  DEFAULT ((1)) FOR [is_active]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Employee] FOREIGN KEY([Eid])
REFERENCES [dbo].[Employee] ([Eid])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Employee]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Role] FOREIGN KEY([roleid])
REFERENCES [dbo].[Role] ([roleid])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Role]
GO
ALTER TABLE [dbo].[Contract]  WITH CHECK ADD  CONSTRAINT [FK_Contrast_Employee] FOREIGN KEY([Eid])
REFERENCES [dbo].[Employee] ([Eid])
GO
ALTER TABLE [dbo].[Contract] CHECK CONSTRAINT [FK_Contrast_Employee]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Certificate] FOREIGN KEY([CertificateID])
REFERENCES [dbo].[Certificate] ([CertificateID])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Certificate]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Department] FOREIGN KEY([Did])
REFERENCES [dbo].[Department] ([Did])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Department]
GO
ALTER TABLE [dbo].[History]  WITH CHECK ADD  CONSTRAINT [FK_History_Account] FOREIGN KEY([Aid])
REFERENCES [dbo].[Account] ([id])
GO
ALTER TABLE [dbo].[History] CHECK CONSTRAINT [FK_History_Account]
GO
ALTER TABLE [dbo].[Note]  WITH CHECK ADD  CONSTRAINT [FK_Note_Account] FOREIGN KEY([Aid])
REFERENCES [dbo].[Account] ([id])
GO
ALTER TABLE [dbo].[Note] CHECK CONSTRAINT [FK_Note_Account]
GO
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD  CONSTRAINT [FK_Rating_Employee] FOREIGN KEY([Eid])
REFERENCES [dbo].[Employee] ([Eid])
GO
ALTER TABLE [dbo].[Rating] CHECK CONSTRAINT [FK_Rating_Employee]
GO
ALTER TABLE [dbo].[Salary]  WITH CHECK ADD  CONSTRAINT [FK_Salary_Contrast] FOREIGN KEY([Cid])
REFERENCES [dbo].[Contract] ([Cid])
GO
ALTER TABLE [dbo].[Salary] CHECK CONSTRAINT [FK_Salary_Contrast]
GO
ALTER TABLE [dbo].[TimeKeeping]  WITH CHECK ADD  CONSTRAINT [FK_TimeKeeping_Employee] FOREIGN KEY([Eid])
REFERENCES [dbo].[Employee] ([Eid])
GO
ALTER TABLE [dbo].[TimeKeeping] CHECK CONSTRAINT [FK_TimeKeeping_Employee]
GO
USE [master]
GO
ALTER DATABASE [Human Resource Service] SET  READ_WRITE 
GO
