USE [master]
GO
/****** Object:  Database [MDDS_SAKEC]    Script Date: 04/23/2017 00:05:04 ******/
CREATE DATABASE [MDDS_SAKEC] ON  PRIMARY 
( NAME = N'MDDS_SAKEC', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\MDDS_SAKEC.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'MDDS_SAKEC_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\MDDS_SAKEC_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [MDDS_SAKEC] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MDDS_SAKEC].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MDDS_SAKEC] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [MDDS_SAKEC] SET ANSI_NULLS OFF
GO
ALTER DATABASE [MDDS_SAKEC] SET ANSI_PADDING OFF
GO
ALTER DATABASE [MDDS_SAKEC] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [MDDS_SAKEC] SET ARITHABORT OFF
GO
ALTER DATABASE [MDDS_SAKEC] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [MDDS_SAKEC] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [MDDS_SAKEC] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [MDDS_SAKEC] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [MDDS_SAKEC] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [MDDS_SAKEC] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [MDDS_SAKEC] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [MDDS_SAKEC] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [MDDS_SAKEC] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [MDDS_SAKEC] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [MDDS_SAKEC] SET  DISABLE_BROKER
GO
ALTER DATABASE [MDDS_SAKEC] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [MDDS_SAKEC] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [MDDS_SAKEC] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [MDDS_SAKEC] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [MDDS_SAKEC] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [MDDS_SAKEC] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [MDDS_SAKEC] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [MDDS_SAKEC] SET  READ_WRITE
GO
ALTER DATABASE [MDDS_SAKEC] SET RECOVERY FULL
GO
ALTER DATABASE [MDDS_SAKEC] SET  MULTI_USER
GO
ALTER DATABASE [MDDS_SAKEC] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [MDDS_SAKEC] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'MDDS_SAKEC', N'ON'
GO
USE [MDDS_SAKEC]
GO
/****** Object:  Table [dbo].[patient_login_record_master]    Script Date: 04/23/2017 00:05:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[patient_login_record_master](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[patient_id] [int] NULL,
	[patient_name] [varchar](max) NULL,
	[Date] [varchar](max) NULL,
	[Cholestral] [varchar](max) NULL,
	[Thal] [varchar](max) NULL,
	[Status] [varchar](max) NULL,
 CONSTRAINT [PK_patient_login_record_master] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[patient_login_record_master] ON
INSERT [dbo].[patient_login_record_master] ([id], [patient_id], [patient_name], [Date], [Cholestral], [Thal], [Status]) VALUES (1, 1, N'Shailesh', N'01-Mar-15 12:00:00 AM', N'322.0', N'3.0', N'present')
INSERT [dbo].[patient_login_record_master] ([id], [patient_id], [patient_name], [Date], [Cholestral], [Thal], [Status]) VALUES (2, 1, N'Shailesh', N'01-Mar-15 12:00:00 AM', N'322.0', N'3.0', N'present')
INSERT [dbo].[patient_login_record_master] ([id], [patient_id], [patient_name], [Date], [Cholestral], [Thal], [Status]) VALUES (3, 1, N'Shailesh', N'02-Mar-15 12:00:00 AM', N'300.0', N'3.0', N'present')
INSERT [dbo].[patient_login_record_master] ([id], [patient_id], [patient_name], [Date], [Cholestral], [Thal], [Status]) VALUES (4, 1, N'Shailesh', N'03-Mar-15 12:00:00 AM', N'330.0', N'6.0', N'present')
INSERT [dbo].[patient_login_record_master] ([id], [patient_id], [patient_name], [Date], [Cholestral], [Thal], [Status]) VALUES (5, 1, N'Shailesh', N'04-Mar-15 12:00:00 AM', N'322.0', N'3.0', N'present')
INSERT [dbo].[patient_login_record_master] ([id], [patient_id], [patient_name], [Date], [Cholestral], [Thal], [Status]) VALUES (6, 1, N'Shailesh', N'05-Mar-15 12:00:00 AM', N'310.0', N'3.0', N'present')
INSERT [dbo].[patient_login_record_master] ([id], [patient_id], [patient_name], [Date], [Cholestral], [Thal], [Status]) VALUES (7, 1, N'Shailesh', N'07-Mar-15 12:00:00 AM', N'263.0', N'7.0', N'present')
INSERT [dbo].[patient_login_record_master] ([id], [patient_id], [patient_name], [Date], [Cholestral], [Thal], [Status]) VALUES (8, 1, N'Shailesh', N'08-Mar-15 12:00:00 AM', N'200.0', N'3.0', N'absent')
INSERT [dbo].[patient_login_record_master] ([id], [patient_id], [patient_name], [Date], [Cholestral], [Thal], [Status]) VALUES (9, 1, N'Shailesh', N'24-Mar-17 12:00:00 AM', N'8.0', N'3.0', N'absent')
INSERT [dbo].[patient_login_record_master] ([id], [patient_id], [patient_name], [Date], [Cholestral], [Thal], [Status]) VALUES (10, 1, N'Shailesh', N'01-Mar-15 12:00:00 AM', N'322.0', N'3.0', N'present')
INSERT [dbo].[patient_login_record_master] ([id], [patient_id], [patient_name], [Date], [Cholestral], [Thal], [Status]) VALUES (11, 1, N'Shailesh', N'02-Mar-15 12:00:00 AM', N'300.0', N'3.0', N'present')
INSERT [dbo].[patient_login_record_master] ([id], [patient_id], [patient_name], [Date], [Cholestral], [Thal], [Status]) VALUES (12, 1, N'Shailesh', N'03-Mar-15 12:00:00 AM', N'330.0', N'6.0', N'present')
INSERT [dbo].[patient_login_record_master] ([id], [patient_id], [patient_name], [Date], [Cholestral], [Thal], [Status]) VALUES (13, 1, N'Shailesh', N'04-Mar-15 12:00:00 AM', N'322.0', N'3.0', N'present')
INSERT [dbo].[patient_login_record_master] ([id], [patient_id], [patient_name], [Date], [Cholestral], [Thal], [Status]) VALUES (14, 1, N'Shailesh', N'05-Mar-15 12:00:00 AM', N'310.0', N'3.0', N'present')
INSERT [dbo].[patient_login_record_master] ([id], [patient_id], [patient_name], [Date], [Cholestral], [Thal], [Status]) VALUES (15, 1, N'Shailesh', N'07-Mar-15 12:00:00 AM', N'263.0', N'7.0', N'present')
INSERT [dbo].[patient_login_record_master] ([id], [patient_id], [patient_name], [Date], [Cholestral], [Thal], [Status]) VALUES (16, 1, N'Shailesh', N'08-Mar-15 12:00:00 AM', N'200.0', N'3.0', N'absent')
INSERT [dbo].[patient_login_record_master] ([id], [patient_id], [patient_name], [Date], [Cholestral], [Thal], [Status]) VALUES (17, 1, N'Shailesh', N'24-Mar-17 12:00:00 AM', N'8.0', N'3.0', N'absent')
INSERT [dbo].[patient_login_record_master] ([id], [patient_id], [patient_name], [Date], [Cholestral], [Thal], [Status]) VALUES (18, 1, N'Shailesh', N'01-Mar-15 12:00:00 AM', N'322.0', N'3.0', N'present')
INSERT [dbo].[patient_login_record_master] ([id], [patient_id], [patient_name], [Date], [Cholestral], [Thal], [Status]) VALUES (19, 1, N'Shailesh', N'02-Mar-15 12:00:00 AM', N'300.0', N'3.0', N'present')
INSERT [dbo].[patient_login_record_master] ([id], [patient_id], [patient_name], [Date], [Cholestral], [Thal], [Status]) VALUES (20, 1, N'Shailesh', N'03-Mar-15 12:00:00 AM', N'330.0', N'6.0', N'present')
INSERT [dbo].[patient_login_record_master] ([id], [patient_id], [patient_name], [Date], [Cholestral], [Thal], [Status]) VALUES (21, 1, N'Shailesh', N'04-Mar-15 12:00:00 AM', N'322.0', N'3.0', N'present')
INSERT [dbo].[patient_login_record_master] ([id], [patient_id], [patient_name], [Date], [Cholestral], [Thal], [Status]) VALUES (22, 1, N'Shailesh', N'05-Mar-15 12:00:00 AM', N'310.0', N'3.0', N'present')
INSERT [dbo].[patient_login_record_master] ([id], [patient_id], [patient_name], [Date], [Cholestral], [Thal], [Status]) VALUES (23, 1, N'Shailesh', N'07-Mar-15 12:00:00 AM', N'263.0', N'7.0', N'present')
INSERT [dbo].[patient_login_record_master] ([id], [patient_id], [patient_name], [Date], [Cholestral], [Thal], [Status]) VALUES (24, 1, N'Shailesh', N'08-Mar-15 12:00:00 AM', N'200.0', N'3.0', N'absent')
INSERT [dbo].[patient_login_record_master] ([id], [patient_id], [patient_name], [Date], [Cholestral], [Thal], [Status]) VALUES (25, 1, N'Shailesh', N'24-Mar-17 12:00:00 AM', N'8.0', N'3.0', N'absent')
INSERT [dbo].[patient_login_record_master] ([id], [patient_id], [patient_name], [Date], [Cholestral], [Thal], [Status]) VALUES (26, 1, N'Shailesh', N'01-Mar-15 12:00:00 AM', N'322.0', N'3.0', N'present')
INSERT [dbo].[patient_login_record_master] ([id], [patient_id], [patient_name], [Date], [Cholestral], [Thal], [Status]) VALUES (27, 1, N'Shailesh', N'02-Mar-15 12:00:00 AM', N'300.0', N'3.0', N'present')
INSERT [dbo].[patient_login_record_master] ([id], [patient_id], [patient_name], [Date], [Cholestral], [Thal], [Status]) VALUES (28, 1, N'Shailesh', N'03-Mar-15 12:00:00 AM', N'330.0', N'6.0', N'present')
INSERT [dbo].[patient_login_record_master] ([id], [patient_id], [patient_name], [Date], [Cholestral], [Thal], [Status]) VALUES (29, 1, N'Shailesh', N'04-Mar-15 12:00:00 AM', N'322.0', N'3.0', N'present')
INSERT [dbo].[patient_login_record_master] ([id], [patient_id], [patient_name], [Date], [Cholestral], [Thal], [Status]) VALUES (30, 1, N'Shailesh', N'05-Mar-15 12:00:00 AM', N'310.0', N'3.0', N'present')
INSERT [dbo].[patient_login_record_master] ([id], [patient_id], [patient_name], [Date], [Cholestral], [Thal], [Status]) VALUES (31, 1, N'Shailesh', N'07-Mar-15 12:00:00 AM', N'263.0', N'7.0', N'present')
INSERT [dbo].[patient_login_record_master] ([id], [patient_id], [patient_name], [Date], [Cholestral], [Thal], [Status]) VALUES (32, 1, N'Shailesh', N'08-Mar-15 12:00:00 AM', N'200.0', N'3.0', N'absent')
INSERT [dbo].[patient_login_record_master] ([id], [patient_id], [patient_name], [Date], [Cholestral], [Thal], [Status]) VALUES (33, 1, N'Shailesh', N'24-Mar-17 12:00:00 AM', N'8.0', N'3.0', N'absent')
INSERT [dbo].[patient_login_record_master] ([id], [patient_id], [patient_name], [Date], [Cholestral], [Thal], [Status]) VALUES (34, 1, N'Shailesh', N'01-Mar-15 12:00:00 AM', N'322.0', N'3.0', N'present')
INSERT [dbo].[patient_login_record_master] ([id], [patient_id], [patient_name], [Date], [Cholestral], [Thal], [Status]) VALUES (35, 1, N'Shailesh', N'02-Mar-15 12:00:00 AM', N'300.0', N'3.0', N'present')
INSERT [dbo].[patient_login_record_master] ([id], [patient_id], [patient_name], [Date], [Cholestral], [Thal], [Status]) VALUES (36, 1, N'Shailesh', N'03-Mar-15 12:00:00 AM', N'330.0', N'6.0', N'present')
INSERT [dbo].[patient_login_record_master] ([id], [patient_id], [patient_name], [Date], [Cholestral], [Thal], [Status]) VALUES (37, 1, N'Shailesh', N'04-Mar-15 12:00:00 AM', N'322.0', N'3.0', N'present')
INSERT [dbo].[patient_login_record_master] ([id], [patient_id], [patient_name], [Date], [Cholestral], [Thal], [Status]) VALUES (38, 1, N'Shailesh', N'05-Mar-15 12:00:00 AM', N'310.0', N'3.0', N'present')
INSERT [dbo].[patient_login_record_master] ([id], [patient_id], [patient_name], [Date], [Cholestral], [Thal], [Status]) VALUES (39, 1, N'Shailesh', N'07-Mar-15 12:00:00 AM', N'263.0', N'7.0', N'present')
INSERT [dbo].[patient_login_record_master] ([id], [patient_id], [patient_name], [Date], [Cholestral], [Thal], [Status]) VALUES (40, 1, N'Shailesh', N'08-Mar-15 12:00:00 AM', N'200.0', N'3.0', N'absent')
INSERT [dbo].[patient_login_record_master] ([id], [patient_id], [patient_name], [Date], [Cholestral], [Thal], [Status]) VALUES (41, 1, N'Shailesh', N'24-Mar-17 12:00:00 AM', N'8.0', N'3.0', N'absent')
INSERT [dbo].[patient_login_record_master] ([id], [patient_id], [patient_name], [Date], [Cholestral], [Thal], [Status]) VALUES (42, 1, N'Shailesh', N'01-Mar-15 12:00:00 AM', N'322.0', N'3.0', N'present')
INSERT [dbo].[patient_login_record_master] ([id], [patient_id], [patient_name], [Date], [Cholestral], [Thal], [Status]) VALUES (43, 1, N'Shailesh', N'02-Mar-15 12:00:00 AM', N'300.0', N'3.0', N'present')
INSERT [dbo].[patient_login_record_master] ([id], [patient_id], [patient_name], [Date], [Cholestral], [Thal], [Status]) VALUES (44, 1, N'Shailesh', N'03-Mar-15 12:00:00 AM', N'330.0', N'6.0', N'present')
INSERT [dbo].[patient_login_record_master] ([id], [patient_id], [patient_name], [Date], [Cholestral], [Thal], [Status]) VALUES (45, 1, N'Shailesh', N'04-Mar-15 12:00:00 AM', N'322.0', N'3.0', N'present')
INSERT [dbo].[patient_login_record_master] ([id], [patient_id], [patient_name], [Date], [Cholestral], [Thal], [Status]) VALUES (46, 1, N'Shailesh', N'05-Mar-15 12:00:00 AM', N'310.0', N'3.0', N'present')
INSERT [dbo].[patient_login_record_master] ([id], [patient_id], [patient_name], [Date], [Cholestral], [Thal], [Status]) VALUES (47, 1, N'Shailesh', N'07-Mar-15 12:00:00 AM', N'263.0', N'7.0', N'present')
INSERT [dbo].[patient_login_record_master] ([id], [patient_id], [patient_name], [Date], [Cholestral], [Thal], [Status]) VALUES (48, 1, N'Shailesh', N'08-Mar-15 12:00:00 AM', N'200.0', N'3.0', N'absent')
INSERT [dbo].[patient_login_record_master] ([id], [patient_id], [patient_name], [Date], [Cholestral], [Thal], [Status]) VALUES (49, 1, N'Shailesh', N'24-Mar-17 12:00:00 AM', N'8.0', N'3.0', N'absent')
INSERT [dbo].[patient_login_record_master] ([id], [patient_id], [patient_name], [Date], [Cholestral], [Thal], [Status]) VALUES (50, 4, N'test', N'04-Dec-17 12:00:00 AM', N'201.0', N'6.0', N'absent')
INSERT [dbo].[patient_login_record_master] ([id], [patient_id], [patient_name], [Date], [Cholestral], [Thal], [Status]) VALUES (51, 4, N'test', N'04-Dec-17 12:00:00 AM', N'201.0', N'6.0', N'absent')
INSERT [dbo].[patient_login_record_master] ([id], [patient_id], [patient_name], [Date], [Cholestral], [Thal], [Status]) VALUES (52, 4, N'test', N'04-May-17 12:00:00 AM', N'214.0', N'3.0', N'absent')
INSERT [dbo].[patient_login_record_master] ([id], [patient_id], [patient_name], [Date], [Cholestral], [Thal], [Status]) VALUES (53, 4, N'test', N'04-May-17 12:00:00 AM', N'214.0', N'3.0', N'absent')
INSERT [dbo].[patient_login_record_master] ([id], [patient_id], [patient_name], [Date], [Cholestral], [Thal], [Status]) VALUES (54, 4, N'test', N'04-Jul-17 12:00:00 AM', N'270.0', N'7.0', N'present')
SET IDENTITY_INSERT [dbo].[patient_login_record_master] OFF
/****** Object:  Table [dbo].[Patient_Details]    Script Date: 04/23/2017 00:05:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[Patient_Details](
	[Patient_Id] [int] IDENTITY(1,1) NOT NULL,
	[Patient_Name] [varchar](200) NULL,
	[Patient_Address] [varchar](max) NULL,
	[Patient_MobileNo] [varchar](50) NULL
) ON [PRIMARY]
SET ANSI_PADDING ON
ALTER TABLE [dbo].[Patient_Details] ADD [Patient_Emailid] [varchar](max) NULL
ALTER TABLE [dbo].[Patient_Details] ADD  CONSTRAINT [PK_Patient_Details] PRIMARY KEY CLUSTERED 
(
	[Patient_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Patient_Details] ON
INSERT [dbo].[Patient_Details] ([Patient_Id], [Patient_Name], [Patient_Address], [Patient_MobileNo], [Patient_Emailid]) VALUES (1, N'Shailesh', N'B-8,Sai Darshan', N'9857478789', N'guidance@projectideas.co.in')
INSERT [dbo].[Patient_Details] ([Patient_Id], [Patient_Name], [Patient_Address], [Patient_MobileNo], [Patient_Emailid]) VALUES (2, N'manoj', N'asas', N'8888888888', NULL)
INSERT [dbo].[Patient_Details] ([Patient_Id], [Patient_Name], [Patient_Address], [Patient_MobileNo], [Patient_Emailid]) VALUES (3, N'chintan', N'aaa', N'9892369017', NULL)
INSERT [dbo].[Patient_Details] ([Patient_Id], [Patient_Name], [Patient_Address], [Patient_MobileNo], [Patient_Emailid]) VALUES (4, N'test', N'saavva', N'9892369017', N'test@gmail.com')
SET IDENTITY_INSERT [dbo].[Patient_Details] OFF
/****** Object:  Table [dbo].[HeartDiseaseStatus]    Script Date: 04/23/2017 00:05:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HeartDiseaseStatus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[patient_id] [int] NULL,
	[patient_name] [varchar](100) NULL,
	[Date] [varchar](50) NULL,
	[Thal] [varchar](100) NULL,
	[Cholestral] [varchar](50) NULL,
	[CholestralPercentage] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
	[accu] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HeartDiseaseCholestral]    Script Date: 04/23/2017 00:05:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HeartDiseaseCholestral](
	[HeartDiseaseCholestralID3_Id] [int] IDENTITY(1,1) NOT NULL,
	[patient_id] [int] NULL,
	[patient_name] [varchar](100) NULL,
	[Date] [varchar](50) NULL,
	[Cholestral] [varchar](50) NULL,
	[Thal] [varchar](100) NULL,
	[Status] [varchar](50) NULL,
	[accuracy_] [int] NULL,
 CONSTRAINT [PK_HeartDiseaseCholestral_ID3Status] PRIMARY KEY CLUSTERED 
(
	[HeartDiseaseCholestralID3_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[HeartDiseaseCholestral] ON
INSERT [dbo].[HeartDiseaseCholestral] ([HeartDiseaseCholestralID3_Id], [patient_id], [patient_name], [Date], [Cholestral], [Thal], [Status], [accuracy_]) VALUES (1, 4, N'test', N'04-May-17 12:00:00 AM', N'214.0', N'3.0', N'absent', NULL)
INSERT [dbo].[HeartDiseaseCholestral] ([HeartDiseaseCholestralID3_Id], [patient_id], [patient_name], [Date], [Cholestral], [Thal], [Status], [accuracy_]) VALUES (2, 4, N'test', N'04-Jul-17 12:00:00 AM', N'270.0', N'7.0', N'present', NULL)
SET IDENTITY_INSERT [dbo].[HeartDiseaseCholestral] OFF
/****** Object:  Table [dbo].[HeartDisease_Record]    Script Date: 04/23/2017 00:05:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HeartDisease_Record](
	[Disease_Record_Id] [int] IDENTITY(1,1) NOT NULL,
	[patient_id] [int] NOT NULL,
	[age] [varchar](50) NOT NULL,
	[sex] [varchar](50) NOT NULL,
	[chest] [varchar](50) NOT NULL,
	[resting_blood_pressure] [varchar](50) NOT NULL,
	[serum_cholestoral] [varchar](50) NOT NULL,
	[fasting_blood_sugar] [varchar](50) NOT NULL,
	[resting_electrocardiographic_results] [varchar](50) NOT NULL,
	[maximum_heart_rate_achieved] [varchar](50) NOT NULL,
	[exercise_induced_angina] [varchar](50) NOT NULL,
	[oldpeak] [varchar](50) NOT NULL,
	[slope] [varchar](50) NOT NULL,
	[number_of_major_vessels] [varchar](50) NOT NULL,
	[thal] [varchar](50) NOT NULL,
	[Date] [date] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[HeartDisease_Record] ON
INSERT [dbo].[HeartDisease_Record] ([Disease_Record_Id], [patient_id], [age], [sex], [chest], [resting_blood_pressure], [serum_cholestoral], [fasting_blood_sugar], [resting_electrocardiographic_results], [maximum_heart_rate_achieved], [exercise_induced_angina], [oldpeak], [slope], [number_of_major_vessels], [thal], [Date]) VALUES (1, 4, N'41.0', N'1.0', N'3.0', N'130.0', N'214.0', N'0.0', N'2.0', N'168.0', N'0.0', N'2', N'2.0', N'0.0', N'3.0', CAST(0xC43C0B00 AS Date))
INSERT [dbo].[HeartDisease_Record] ([Disease_Record_Id], [patient_id], [age], [sex], [chest], [resting_blood_pressure], [serum_cholestoral], [fasting_blood_sugar], [resting_electrocardiographic_results], [maximum_heart_rate_achieved], [exercise_induced_angina], [oldpeak], [slope], [number_of_major_vessels], [thal], [Date]) VALUES (2, 4, N'58.0', N'1.0', N'4.0', N'150.0', N'270.0', N'0.0', N'2.0', N'111.0', N'1.0', N'0.8', N'1.0', N'0.0', N'7.0', CAST(0x013D0B00 AS Date))
SET IDENTITY_INSERT [dbo].[HeartDisease_Record] OFF
/****** Object:  Table [dbo].[DiabetesDiseaseStatus]    Script Date: 04/23/2017 00:05:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DiabetesDiseaseStatus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[patient_id] [int] NULL,
	[patient_name] [varchar](100) NULL,
	[Date] [varchar](50) NULL,
	[PlasmaGlucose] [float] NULL,
	[PlasmaGlucosePercentage] [float] NULL,
	[Statsu] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DiabetesDiseasePlasmagc]    Script Date: 04/23/2017 00:05:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DiabetesDiseasePlasmagc](
	[DiabetesDiseasePlasmaID3_Id] [int] IDENTITY(1,1) NOT NULL,
	[patient_id] [int] NULL,
	[patient_name] [varchar](100) NULL,
	[Date] [varchar](50) NULL,
	[PlasmaGlucose] [int] NULL,
	[DiastolicBloodPressure] [int] NULL,
	[Status] [varchar](50) NULL,
 CONSTRAINT [PK_DiabetesDiseasePlasmagc_ID3Status] PRIMARY KEY CLUSTERED 
(
	[DiabetesDiseasePlasmaID3_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[DiabetesDiseasePlasmagc] ON
INSERT [dbo].[DiabetesDiseasePlasmagc] ([DiabetesDiseasePlasmaID3_Id], [patient_id], [patient_name], [Date], [PlasmaGlucose], [DiastolicBloodPressure], [Status]) VALUES (1, 4, N'test', N'04-May-17 12:00:00 AM', 103, 30, N'no')
SET IDENTITY_INSERT [dbo].[DiabetesDiseasePlasmagc] OFF
/****** Object:  Table [dbo].[DiabetesDisease_Record]    Script Date: 04/23/2017 00:05:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DiabetesDisease_Record](
	[DiabetsDisease_Id] [int] IDENTITY(1,1) NOT NULL,
	[patient_id] [int] NULL,
	[Date] [date] NULL,
	[Age] [varchar](50) NULL,
	[number_of_times_pregnant] [varchar](50) NULL,
	[plasma_glucose_concentration] [varchar](50) NULL,
	[diastolic_blood_pressure] [varchar](50) NULL,
	[triceps_skin_fold_thickness] [varchar](50) NULL,
	[hour_serum_insulin] [varchar](50) NULL,
	[body_mass_index] [varchar](50) NULL,
	[diabetes_pedigree_function] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[DiabetesDisease_Record] ON
INSERT [dbo].[DiabetesDisease_Record] ([DiabetsDisease_Id], [patient_id], [Date], [Age], [number_of_times_pregnant], [plasma_glucose_concentration], [diastolic_blood_pressure], [triceps_skin_fold_thickness], [hour_serum_insulin], [body_mass_index], [diabetes_pedigree_function]) VALUES (1, 1, CAST(0xC8390B00 AS Date), N'31', N'0', N'100', N'88', N'60', N'110', N'46.8', N'0.962')
INSERT [dbo].[DiabetesDisease_Record] ([DiabetsDisease_Id], [patient_id], [Date], [Age], [number_of_times_pregnant], [plasma_glucose_concentration], [diastolic_blood_pressure], [triceps_skin_fold_thickness], [hour_serum_insulin], [body_mass_index], [diabetes_pedigree_function]) VALUES (2, 3, CAST(0x9B3C0B00 AS Date), N'67', N'2', N'117', N'90', N'19', N'71', N'25', N'0.313')
INSERT [dbo].[DiabetesDisease_Record] ([DiabetsDisease_Id], [patient_id], [Date], [Age], [number_of_times_pregnant], [plasma_glucose_concentration], [diastolic_blood_pressure], [triceps_skin_fold_thickness], [hour_serum_insulin], [body_mass_index], [diabetes_pedigree_function]) VALUES (5, 4, CAST(0xC43C0B00 AS Date), N'33', N'1', N'103', N'30', N'38', N'83', N'43.3', N'0.183')
SET IDENTITY_INSERT [dbo].[DiabetesDisease_Record] OFF
/****** Object:  Table [dbo].[Admin_Login]    Script Date: 04/23/2017 00:05:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Admin_Login](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](100) NULL,
	[password] [varchar](100) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Admin_Login] ON
INSERT [dbo].[Admin_Login] ([Id], [username], [password]) VALUES (1, N'admin', N'admin')
INSERT [dbo].[Admin_Login] ([Id], [username], [password]) VALUES (2, N'abc', N'abc')
SET IDENTITY_INSERT [dbo].[Admin_Login] OFF
/****** Object:  Table [dbo].[accuracy_graph]    Script Date: 04/23/2017 00:05:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[accuracy_graph](
	[type_] [varchar](max) NULL,
	[accuracy] [int] NULL,
	[user_id] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[accuracy_graph] ([type_], [accuracy], [user_id]) VALUES (N'NAIVE', 82, 1)
INSERT [dbo].[accuracy_graph] ([type_], [accuracy], [user_id]) VALUES (N'WAC', 74, 1)
INSERT [dbo].[accuracy_graph] ([type_], [accuracy], [user_id]) VALUES (N'NAIVE', 93, 1)
INSERT [dbo].[accuracy_graph] ([type_], [accuracy], [user_id]) VALUES (N'NAIVE', 83, 1)
INSERT [dbo].[accuracy_graph] ([type_], [accuracy], [user_id]) VALUES (N'NAIVE', 84, 1)
INSERT [dbo].[accuracy_graph] ([type_], [accuracy], [user_id]) VALUES (N'NAIVE', 89, 1)
INSERT [dbo].[accuracy_graph] ([type_], [accuracy], [user_id]) VALUES (N'NAIVE', 91, 1)
INSERT [dbo].[accuracy_graph] ([type_], [accuracy], [user_id]) VALUES (N'NAIVE', 92, 1)
INSERT [dbo].[accuracy_graph] ([type_], [accuracy], [user_id]) VALUES (N'ID3', 54, 1)
INSERT [dbo].[accuracy_graph] ([type_], [accuracy], [user_id]) VALUES (N'NAIVE', 81, 1)
INSERT [dbo].[accuracy_graph] ([type_], [accuracy], [user_id]) VALUES (N'ID3', 62, 1)
INSERT [dbo].[accuracy_graph] ([type_], [accuracy], [user_id]) VALUES (N'ID3', 50, 2)
INSERT [dbo].[accuracy_graph] ([type_], [accuracy], [user_id]) VALUES (N'ID3', 77, 1)
INSERT [dbo].[accuracy_graph] ([type_], [accuracy], [user_id]) VALUES (N'NAIVE', 81, 1)
INSERT [dbo].[accuracy_graph] ([type_], [accuracy], [user_id]) VALUES (N'ID3', 47, 4)
INSERT [dbo].[accuracy_graph] ([type_], [accuracy], [user_id]) VALUES (N'ID3', 74, 4)
INSERT [dbo].[accuracy_graph] ([type_], [accuracy], [user_id]) VALUES (N'NAIVE', 85, 4)
INSERT [dbo].[accuracy_graph] ([type_], [accuracy], [user_id]) VALUES (N'ID3', 75, 4)
INSERT [dbo].[accuracy_graph] ([type_], [accuracy], [user_id]) VALUES (N'ID3', 49, 4)
INSERT [dbo].[accuracy_graph] ([type_], [accuracy], [user_id]) VALUES (N'ID3', 67, 4)
INSERT [dbo].[accuracy_graph] ([type_], [accuracy], [user_id]) VALUES (N'ID3', 78, 4)
INSERT [dbo].[accuracy_graph] ([type_], [accuracy], [user_id]) VALUES (N'NAIVE', 84, 4)
INSERT [dbo].[accuracy_graph] ([type_], [accuracy], [user_id]) VALUES (N'ID3', 66, 4)
INSERT [dbo].[accuracy_graph] ([type_], [accuracy], [user_id]) VALUES (N'NAIVE', 93, 4)
INSERT [dbo].[accuracy_graph] ([type_], [accuracy], [user_id]) VALUES (N'NAIVE', 87, 4)
INSERT [dbo].[accuracy_graph] ([type_], [accuracy], [user_id]) VALUES (N'NAIVE', 82, 1)
INSERT [dbo].[accuracy_graph] ([type_], [accuracy], [user_id]) VALUES (N'ID3', 75, 1)
INSERT [dbo].[accuracy_graph] ([type_], [accuracy], [user_id]) VALUES (N'ID3', 45, 4)
