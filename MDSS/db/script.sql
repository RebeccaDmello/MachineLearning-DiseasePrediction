USE [master]
GO
/****** Object:  Database [MDDS_SAKEC]    Script Date: 04/05/2017 16:10:06 ******/
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
/****** Object:  Table [dbo].[Patient_Details]    Script Date: 04/05/2017 16:10:07 ******/
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
	[Patient_MobileNo] [varchar](50) NULL,
 CONSTRAINT [PK_Patient_Details] PRIMARY KEY CLUSTERED 
(
	[Patient_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Patient_Details] ON
INSERT [dbo].[Patient_Details] ([Patient_Id], [Patient_Name], [Patient_Address], [Patient_MobileNo]) VALUES (1, N'Shailesh', N'B-8,Sai Darshan', N'9857478789')
INSERT [dbo].[Patient_Details] ([Patient_Id], [Patient_Name], [Patient_Address], [Patient_MobileNo]) VALUES (2, N'manoj', N'asas', N'8888888888')
SET IDENTITY_INSERT [dbo].[Patient_Details] OFF
/****** Object:  Table [dbo].[HeartDiseaseStatus]    Script Date: 04/05/2017 16:10:07 ******/
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
SET IDENTITY_INSERT [dbo].[HeartDiseaseStatus] ON
INSERT [dbo].[HeartDiseaseStatus] ([Id], [patient_id], [patient_name], [Date], [Thal], [Cholestral], [CholestralPercentage], [Status], [accu]) VALUES (1, 1, N'Shailesh', N'08-Mar-15 12:00:00 AM', N'3.0', N'200.0', N'66', N'Heart Disease Present', NULL)
SET IDENTITY_INSERT [dbo].[HeartDiseaseStatus] OFF
/****** Object:  Table [dbo].[HeartDiseaseCholestral]    Script Date: 04/05/2017 16:10:07 ******/
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
INSERT [dbo].[HeartDiseaseCholestral] ([HeartDiseaseCholestralID3_Id], [patient_id], [patient_name], [Date], [Cholestral], [Thal], [Status], [accuracy_]) VALUES (1, 1, N'Shailesh', N'01-Mar-15 12:00:00 AM', N'322.0', N'3.0', N'present', NULL)
INSERT [dbo].[HeartDiseaseCholestral] ([HeartDiseaseCholestralID3_Id], [patient_id], [patient_name], [Date], [Cholestral], [Thal], [Status], [accuracy_]) VALUES (2, 1, N'Shailesh', N'02-Mar-15 12:00:00 AM', N'300.0', N'3.0', N'present', NULL)
INSERT [dbo].[HeartDiseaseCholestral] ([HeartDiseaseCholestralID3_Id], [patient_id], [patient_name], [Date], [Cholestral], [Thal], [Status], [accuracy_]) VALUES (3, 1, N'Shailesh', N'03-Mar-15 12:00:00 AM', N'330.0', N'6.0', N'present', NULL)
INSERT [dbo].[HeartDiseaseCholestral] ([HeartDiseaseCholestralID3_Id], [patient_id], [patient_name], [Date], [Cholestral], [Thal], [Status], [accuracy_]) VALUES (4, 1, N'Shailesh', N'04-Mar-15 12:00:00 AM', N'322.0', N'3.0', N'present', NULL)
INSERT [dbo].[HeartDiseaseCholestral] ([HeartDiseaseCholestralID3_Id], [patient_id], [patient_name], [Date], [Cholestral], [Thal], [Status], [accuracy_]) VALUES (5, 1, N'Shailesh', N'05-Mar-15 12:00:00 AM', N'310.0', N'3.0', N'present', NULL)
INSERT [dbo].[HeartDiseaseCholestral] ([HeartDiseaseCholestralID3_Id], [patient_id], [patient_name], [Date], [Cholestral], [Thal], [Status], [accuracy_]) VALUES (6, 1, N'Shailesh', N'07-Mar-15 12:00:00 AM', N'263.0', N'7.0', N'present', NULL)
INSERT [dbo].[HeartDiseaseCholestral] ([HeartDiseaseCholestralID3_Id], [patient_id], [patient_name], [Date], [Cholestral], [Thal], [Status], [accuracy_]) VALUES (7, 1, N'Shailesh', N'08-Mar-15 12:00:00 AM', N'200.0', N'3.0', N'absent', NULL)
INSERT [dbo].[HeartDiseaseCholestral] ([HeartDiseaseCholestralID3_Id], [patient_id], [patient_name], [Date], [Cholestral], [Thal], [Status], [accuracy_]) VALUES (8, 1, N'Shailesh', N'24-Mar-17 12:00:00 AM', N'8.0', N'3.0', N'absent', NULL)
SET IDENTITY_INSERT [dbo].[HeartDiseaseCholestral] OFF
/****** Object:  Table [dbo].[HeartDisease_Record]    Script Date: 04/05/2017 16:10:07 ******/
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
INSERT [dbo].[HeartDisease_Record] ([Disease_Record_Id], [patient_id], [age], [sex], [chest], [resting_blood_pressure], [serum_cholestoral], [fasting_blood_sugar], [resting_electrocardiographic_results], [maximum_heart_rate_achieved], [exercise_induced_angina], [oldpeak], [slope], [number_of_major_vessels], [thal], [Date]) VALUES (1, 1, N'70.0', N'1.0', N'4.0', N'130.0', N'322.0', N'0.0', N'2.0', N'109.0', N'1.0', N'2.4', N'2.0', N'3.0', N'3.0', CAST(0xA9390B00 AS Date))
INSERT [dbo].[HeartDisease_Record] ([Disease_Record_Id], [patient_id], [age], [sex], [chest], [resting_blood_pressure], [serum_cholestoral], [fasting_blood_sugar], [resting_electrocardiographic_results], [maximum_heart_rate_achieved], [exercise_induced_angina], [oldpeak], [slope], [number_of_major_vessels], [thal], [Date]) VALUES (2, 1, N'70.0', N'1.0', N'4.0', N'130.0', N'300.0', N'0.0', N'2.0', N'110.0', N'1.0', N'2.4', N'2.0', N'3.0', N'3.0', CAST(0xAA390B00 AS Date))
INSERT [dbo].[HeartDisease_Record] ([Disease_Record_Id], [patient_id], [age], [sex], [chest], [resting_blood_pressure], [serum_cholestoral], [fasting_blood_sugar], [resting_electrocardiographic_results], [maximum_heart_rate_achieved], [exercise_induced_angina], [oldpeak], [slope], [number_of_major_vessels], [thal], [Date]) VALUES (3, 1, N'70.0', N'1.0', N'3.0', N'140.0', N'330.0', N'1.0', N'1.0', N'120.0', N'1.0', N'3.0', N'2.0', N'3.0', N'6.0', CAST(0xAB390B00 AS Date))
INSERT [dbo].[HeartDisease_Record] ([Disease_Record_Id], [patient_id], [age], [sex], [chest], [resting_blood_pressure], [serum_cholestoral], [fasting_blood_sugar], [resting_electrocardiographic_results], [maximum_heart_rate_achieved], [exercise_induced_angina], [oldpeak], [slope], [number_of_major_vessels], [thal], [Date]) VALUES (4, 1, N'70.0', N'1.0', N'4.0', N'130.0', N'322.0', N'0.0', N'2.0', N'110.0', N'1.0', N'2.5', N'2.0', N'2.0', N'3.0', CAST(0xAC390B00 AS Date))
INSERT [dbo].[HeartDisease_Record] ([Disease_Record_Id], [patient_id], [age], [sex], [chest], [resting_blood_pressure], [serum_cholestoral], [fasting_blood_sugar], [resting_electrocardiographic_results], [maximum_heart_rate_achieved], [exercise_induced_angina], [oldpeak], [slope], [number_of_major_vessels], [thal], [Date]) VALUES (5, 1, N'70.0', N'1.0', N'4.0', N'125.0', N'310.0', N'0.0', N'1.0', N'109.0', N'0.0', N'2.0', N'2.0', N'2.0', N'3.0', CAST(0xAD390B00 AS Date))
INSERT [dbo].[HeartDisease_Record] ([Disease_Record_Id], [patient_id], [age], [sex], [chest], [resting_blood_pressure], [serum_cholestoral], [fasting_blood_sugar], [resting_electrocardiographic_results], [maximum_heart_rate_achieved], [exercise_induced_angina], [oldpeak], [slope], [number_of_major_vessels], [thal], [Date]) VALUES (6, 1, N'70.0', N'1.0', N'4.0', N'128.0', N'263.0', N'0.0', N'0.0', N'105.0', N'1.0', N'0.2', N'2.0', N'1.0', N'7.0', CAST(0xAF390B00 AS Date))
INSERT [dbo].[HeartDisease_Record] ([Disease_Record_Id], [patient_id], [age], [sex], [chest], [resting_blood_pressure], [serum_cholestoral], [fasting_blood_sugar], [resting_electrocardiographic_results], [maximum_heart_rate_achieved], [exercise_induced_angina], [oldpeak], [slope], [number_of_major_vessels], [thal], [Date]) VALUES (7, 1, N'70.0', N'1.0', N'1.0', N'130.0', N'200.0', N'1.0', N'1.0', N'117.0', N'1.0', N'1.2', N'2.0', N'0.0', N'3.0', CAST(0xB0390B00 AS Date))
INSERT [dbo].[HeartDisease_Record] ([Disease_Record_Id], [patient_id], [age], [sex], [chest], [resting_blood_pressure], [serum_cholestoral], [fasting_blood_sugar], [resting_electrocardiographic_results], [maximum_heart_rate_achieved], [exercise_induced_angina], [oldpeak], [slope], [number_of_major_vessels], [thal], [Date]) VALUES (8, 2, N'50.0', N'1.0', N'3.0', N'140.0', N'180.0', N'1.0', N'1.0', N'115.0', N'1.0', N'2', N'1.0', N'0.0', N'3.0', CAST(0xD4390B00 AS Date))
INSERT [dbo].[HeartDisease_Record] ([Disease_Record_Id], [patient_id], [age], [sex], [chest], [resting_blood_pressure], [serum_cholestoral], [fasting_blood_sugar], [resting_electrocardiographic_results], [maximum_heart_rate_achieved], [exercise_induced_angina], [oldpeak], [slope], [number_of_major_vessels], [thal], [Date]) VALUES (9, 1, N'25.0', N'1.0', N'1.0', N'5.8.0', N'8.0', N'1.0', N'1.0', N'4.5.0', N'1.0', N'9.9', N'1.0', N'2.0', N'3.0', CAST(0x9B3C0B00 AS Date))
SET IDENTITY_INSERT [dbo].[HeartDisease_Record] OFF
/****** Object:  Table [dbo].[DiabetesDiseaseStatus]    Script Date: 04/05/2017 16:10:07 ******/
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
/****** Object:  Table [dbo].[DiabetesDiseasePlasmagc]    Script Date: 04/05/2017 16:10:07 ******/
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
/****** Object:  Table [dbo].[DiabetesDisease_Record]    Script Date: 04/05/2017 16:10:07 ******/
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
SET IDENTITY_INSERT [dbo].[DiabetesDisease_Record] OFF
/****** Object:  Table [dbo].[Admin_Login]    Script Date: 04/05/2017 16:10:07 ******/
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
/****** Object:  Table [dbo].[accuracy_graph]    Script Date: 04/05/2017 16:10:07 ******/
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
INSERT [dbo].[accuracy_graph] ([type_], [accuracy], [user_id]) VALUES (N'ID3', 74, 1)
INSERT [dbo].[accuracy_graph] ([type_], [accuracy], [user_id]) VALUES (N'NAIVE', 93, 1)
INSERT [dbo].[accuracy_graph] ([type_], [accuracy], [user_id]) VALUES (N'NAIVE', 83, 1)
