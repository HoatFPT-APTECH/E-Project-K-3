USE [master]
GO
/****** Object:  Database [PROJECT_SEM_3]    Script Date: 5/25/2023 8:30:49 PM ******/
CREATE DATABASE [PROJECT_SEM_3]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PROJECT_SEM_3_Data', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\PROJECT_SEM_3.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'PROJECT_SEM_3_Log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\PROJECT_SEM_3.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [PROJECT_SEM_3] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PROJECT_SEM_3].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PROJECT_SEM_3] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PROJECT_SEM_3] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PROJECT_SEM_3] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PROJECT_SEM_3] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PROJECT_SEM_3] SET ARITHABORT OFF 
GO
ALTER DATABASE [PROJECT_SEM_3] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PROJECT_SEM_3] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PROJECT_SEM_3] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PROJECT_SEM_3] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PROJECT_SEM_3] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PROJECT_SEM_3] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PROJECT_SEM_3] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PROJECT_SEM_3] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PROJECT_SEM_3] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PROJECT_SEM_3] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PROJECT_SEM_3] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PROJECT_SEM_3] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PROJECT_SEM_3] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PROJECT_SEM_3] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PROJECT_SEM_3] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PROJECT_SEM_3] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PROJECT_SEM_3] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PROJECT_SEM_3] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PROJECT_SEM_3] SET  MULTI_USER 
GO
ALTER DATABASE [PROJECT_SEM_3] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PROJECT_SEM_3] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PROJECT_SEM_3] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PROJECT_SEM_3] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PROJECT_SEM_3] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PROJECT_SEM_3] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [PROJECT_SEM_3] SET QUERY_STORE = ON
GO
ALTER DATABASE [PROJECT_SEM_3] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [PROJECT_SEM_3]
GO
/****** Object:  Table [dbo].[account]    Script Date: 5/25/2023 8:30:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[account](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](255) NOT NULL,
	[password] [nvarchar](255) NOT NULL,
	[name] [nvarchar](150) NOT NULL,
	[age] [int] NULL,
	[gender] [varchar](1) NULL,
	[address] [nvarchar](300) NULL,
	[salt] [varchar](62) NULL,
	[status] [int] NULL,
	[descreption] [nvarchar](300) NULL,
	[roleId] [int] NULL,
	[createdDate] [datetime] NULL,
	[createdBy] [varchar](50) NULL,
	[updatedDate] [datetime] NULL,
	[updatedBy] [varchar](50) NULL,
	[dateOfbirth] [datetime] NULL,
	[avatar] [nvarchar](max) NULL,
	[email] [nvarchar](150) NULL,
	[phoneNumber] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[batch]    Script Date: 5/25/2023 8:30:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[batch](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
	[fromDate] [datetime] NULL,
	[toDate] [datetime] NULL,
	[batchCode] [varchar](50) NULL,
	[createdDate] [datetime] NULL,
	[createdBy] [varchar](50) NULL,
	[updatedDate] [datetime] NULL,
	[updatedBy] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[course]    Script Date: 5/25/2023 8:30:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[course](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[courseCode] [varchar](100) NULL,
	[name] [nvarchar](150) NULL,
	[tuitionFees] [decimal](15, 8) NULL,
	[courseType] [nvarchar](255) NULL,
	[descreption] [nvarchar](max) NULL,
	[createdDate] [datetime] NULL,
	[createdBy] [varchar](50) NULL,
	[updatedDate] [datetime] NULL,
	[updatedBy] [varchar](50) NULL,
	[image] [nvarchar](max) NULL,
	[status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[event]    Script Date: 5/25/2023 8:30:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[event](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](200) NOT NULL,
	[startDate] [datetime] NULL,
	[location] [nvarchar](200) NULL,
	[status] [int] NULL,
	[createdDate] [datetime] NULL,
	[createdBy] [varchar](50) NULL,
	[description] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL,
	[endTime] [datetime] NULL,
 CONSTRAINT [PK_event] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[exam]    Script Date: 5/25/2023 8:30:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[exam](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[examCode] [varchar](100) NULL,
	[startDate] [datetime] NULL,
	[endDate] [datetime] NULL,
	[courseId] [int] NULL,
	[descreption] [nvarchar](max) NULL,
	[createdDate] [datetime] NULL,
	[createdBy] [varchar](50) NULL,
	[updatedDate] [datetime] NULL,
	[updatedBy] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[faculty]    Script Date: 5/25/2023 8:30:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[faculty](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
	[facultyCode] [varchar](50) NULL,
	[descreption] [nvarchar](max) NULL,
	[createdDate] [datetime] NULL,
	[createdBy] [varchar](50) NULL,
	[updatedDate] [datetime] NULL,
	[updatedBy] [varchar](50) NULL,
	[status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[feedBack]    Script Date: 5/25/2023 8:30:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[feedBack](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nchar](150) NULL,
	[message] [nvarchar](max) NULL,
	[createBy] [int] NULL,
	[createDate] [datetime] NULL,
	[courseId] [int] NULL,
 CONSTRAINT [PK_feedBack] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reportScholar]    Script Date: 5/25/2023 8:30:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reportScholar](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
	[path] [varchar](200) NULL,
	[type] [varchar](50) NULL,
	[scholarId] [int] NULL,
	[createdDate] [datetime] NULL,
	[createdBy] [varchar](50) NULL,
	[updatedDate] [datetime] NULL,
	[updatedBy] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[role]    Script Date: 5/25/2023 8:30:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[role](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[descreption] [varchar](50) NULL,
	[createdDate] [datetime] NULL,
	[createdBy] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[scholar]    Script Date: 5/25/2023 8:30:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[scholar](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[accountId] [int] NULL,
	[facultyId] [int] NULL,
	[batchId] [int] NULL,
	[scholarCode] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[scholarCourse]    Script Date: 5/25/2023 8:30:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[scholarCourse](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[status] [int] NULL,
	[purchased] [decimal](15, 8) NULL,
	[tuitionFees] [decimal](15, 8) NULL,
	[assignmetPoint] [int] NULL,
	[testPoint] [int] NULL,
	[scholarId] [int] NULL,
	[courseId] [int] NULL,
	[createdDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[scholarExam]    Script Date: 5/25/2023 8:30:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[scholarExam](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[status] [int] NULL,
	[point] [int] NULL,
	[scholarId] [int] NULL,
	[examId] [int] NULL,
	[createdDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[account]  WITH CHECK ADD FOREIGN KEY([roleId])
REFERENCES [dbo].[role] ([id])
GO
ALTER TABLE [dbo].[exam]  WITH CHECK ADD FOREIGN KEY([courseId])
REFERENCES [dbo].[course] ([id])
GO
ALTER TABLE [dbo].[feedBack]  WITH CHECK ADD  CONSTRAINT [FK_feedBack_course] FOREIGN KEY([courseId])
REFERENCES [dbo].[course] ([id])
GO
ALTER TABLE [dbo].[feedBack] CHECK CONSTRAINT [FK_feedBack_course]
GO
ALTER TABLE [dbo].[feedBack]  WITH CHECK ADD  CONSTRAINT [FK_feedBack_scholar] FOREIGN KEY([createBy])
REFERENCES [dbo].[scholar] ([id])
GO
ALTER TABLE [dbo].[feedBack] CHECK CONSTRAINT [FK_feedBack_scholar]
GO
ALTER TABLE [dbo].[reportScholar]  WITH CHECK ADD FOREIGN KEY([scholarId])
REFERENCES [dbo].[scholar] ([id])
GO
ALTER TABLE [dbo].[scholar]  WITH CHECK ADD FOREIGN KEY([accountId])
REFERENCES [dbo].[account] ([id])
GO
ALTER TABLE [dbo].[scholar]  WITH CHECK ADD FOREIGN KEY([batchId])
REFERENCES [dbo].[batch] ([id])
GO
ALTER TABLE [dbo].[scholar]  WITH CHECK ADD FOREIGN KEY([facultyId])
REFERENCES [dbo].[faculty] ([id])
GO
ALTER TABLE [dbo].[scholarCourse]  WITH CHECK ADD FOREIGN KEY([courseId])
REFERENCES [dbo].[course] ([id])
GO
ALTER TABLE [dbo].[scholarCourse]  WITH CHECK ADD FOREIGN KEY([scholarId])
REFERENCES [dbo].[scholar] ([id])
GO
ALTER TABLE [dbo].[scholarExam]  WITH CHECK ADD FOREIGN KEY([examId])
REFERENCES [dbo].[exam] ([id])
GO
ALTER TABLE [dbo].[scholarExam]  WITH CHECK ADD FOREIGN KEY([scholarId])
REFERENCES [dbo].[scholar] ([id])
GO
USE [master]
GO
ALTER DATABASE [PROJECT_SEM_3] SET  READ_WRITE 
GO
