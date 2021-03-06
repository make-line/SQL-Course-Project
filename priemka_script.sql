USE [master]
GO
/****** Object:  Database [priemka]    Script Date: 13.05.2020 13:30:34 ******/
CREATE DATABASE [priemka]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'priemka', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\priemka.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'priemka_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\priemka_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [priemka] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [priemka].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [priemka] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [priemka] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [priemka] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [priemka] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [priemka] SET ARITHABORT OFF 
GO
ALTER DATABASE [priemka] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [priemka] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [priemka] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [priemka] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [priemka] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [priemka] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [priemka] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [priemka] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [priemka] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [priemka] SET  DISABLE_BROKER 
GO
ALTER DATABASE [priemka] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [priemka] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [priemka] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [priemka] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [priemka] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [priemka] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [priemka] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [priemka] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [priemka] SET  MULTI_USER 
GO
ALTER DATABASE [priemka] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [priemka] SET DB_CHAINING OFF 
GO
ALTER DATABASE [priemka] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [priemka] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [priemka] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [priemka] SET QUERY_STORE = OFF
GO
USE [priemka]
GO
/****** Object:  Table [dbo].[Documents]    Script Date: 13.05.2020 13:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Documents](
	[number_entrant] [nchar](10) NOT NULL,
	[number_document] [nchar](10) NOT NULL,
	[number_regictration] [nchar](10) NULL,
 CONSTRAINT [PK_Documents] PRIMARY KEY CLUSTERED 
(
	[number_entrant] ASC,
	[number_document] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Entrances]    Script Date: 13.05.2020 13:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Entrances](
	[number_entrant] [nchar](10) NOT NULL,
	[number_subject] [nchar](10) NOT NULL,
	[mark] [nchar](10) NULL,
 CONSTRAINT [PK_Entrances] PRIMARY KEY CLUSTERED 
(
	[number_entrant] ASC,
	[number_subject] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Entrants]    Script Date: 13.05.2020 13:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Entrants](
	[number_entrant] [nchar](10) NOT NULL,
	[surname] [nchar](10) NULL,
	[name] [nchar](10) NULL,
	[second_name] [nchar](10) NULL,
	[passport] [nchar](10) NULL,
	[phone] [nchar](10) NULL,
	[certificate_number] [nchar](10) NULL,
	[city] [nchar](10) NULL,
	[mail] [nchar](10) NULL,
 CONSTRAINT [PK_Entrants] PRIMARY KEY CLUSTERED 
(
	[number_entrant] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[List_documets]    Script Date: 13.05.2020 13:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[List_documets](
	[number_document] [nchar](10) NOT NULL,
	[name_document] [nchar](10) NULL,
 CONSTRAINT [PK_List_documets] PRIMARY KEY CLUSTERED 
(
	[number_document] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Priotities]    Script Date: 13.05.2020 13:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Priotities](
	[number_entrant] [nchar](10) NOT NULL,
	[number_specialty] [nchar](10) NOT NULL,
	[orignal_sertificate] [nchar](10) NULL,
	[number_priority] [nchar](10) NULL,
 CONSTRAINT [PK_Priotities] PRIMARY KEY CLUSTERED 
(
	[number_entrant] ASC,
	[number_specialty] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Specialties]    Script Date: 13.05.2020 13:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Specialties](
	[number_specialty] [nchar](10) NOT NULL,
	[name_specialty] [nchar](10) NULL,
	[edu_year] [nchar](10) NULL,
	[budgetary_place] [nchar](10) NULL,
	[commercial_place] [nchar](10) NULL,
 CONSTRAINT [PK_Specialties] PRIMARY KEY CLUSTERED 
(
	[number_specialty] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SpecSubjects]    Script Date: 13.05.2020 13:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SpecSubjects](
	[number_specialty] [nchar](10) NOT NULL,
	[number_subject] [nchar](10) NOT NULL,
 CONSTRAINT [PK_SpecSubjects] PRIMARY KEY CLUSTERED 
(
	[number_specialty] ASC,
	[number_subject] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subjects]    Script Date: 13.05.2020 13:30:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subjects](
	[number_subject] [nchar](10) NOT NULL,
	[name_subject] [nchar](10) NULL,
 CONSTRAINT [PK_Subjects] PRIMARY KEY CLUSTERED 
(
	[number_subject] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Documents] ([number_entrant], [number_document], [number_regictration]) VALUES (N'01        ', N'1         ', N'11        ')
INSERT [dbo].[Documents] ([number_entrant], [number_document], [number_regictration]) VALUES (N'01        ', N'2         ', N'12        ')
INSERT [dbo].[Documents] ([number_entrant], [number_document], [number_regictration]) VALUES (N'01        ', N'3         ', N'13        ')
INSERT [dbo].[Documents] ([number_entrant], [number_document], [number_regictration]) VALUES (N'02        ', N'1         ', N'14        ')
INSERT [dbo].[Documents] ([number_entrant], [number_document], [number_regictration]) VALUES (N'02        ', N'2         ', N'15        ')
INSERT [dbo].[Documents] ([number_entrant], [number_document], [number_regictration]) VALUES (N'02        ', N'3         ', N'16        ')
INSERT [dbo].[Documents] ([number_entrant], [number_document], [number_regictration]) VALUES (N'03        ', N'1         ', N'17        ')
INSERT [dbo].[Documents] ([number_entrant], [number_document], [number_regictration]) VALUES (N'03        ', N'2         ', N'18        ')
INSERT [dbo].[Documents] ([number_entrant], [number_document], [number_regictration]) VALUES (N'03        ', N'3         ', N'19        ')
INSERT [dbo].[Documents] ([number_entrant], [number_document], [number_regictration]) VALUES (N'04        ', N'1         ', N'20        ')
INSERT [dbo].[Documents] ([number_entrant], [number_document], [number_regictration]) VALUES (N'04        ', N'2         ', N'21        ')
INSERT [dbo].[Documents] ([number_entrant], [number_document], [number_regictration]) VALUES (N'04        ', N'3         ', N'22        ')
INSERT [dbo].[Documents] ([number_entrant], [number_document], [number_regictration]) VALUES (N'05        ', N'1         ', N'23        ')
INSERT [dbo].[Documents] ([number_entrant], [number_document], [number_regictration]) VALUES (N'05        ', N'2         ', N'24        ')
INSERT [dbo].[Documents] ([number_entrant], [number_document], [number_regictration]) VALUES (N'05        ', N'3         ', N'25        ')
INSERT [dbo].[Entrances] ([number_entrant], [number_subject], [mark]) VALUES (N'01        ', N'100       ', N'5         ')
INSERT [dbo].[Entrances] ([number_entrant], [number_subject], [mark]) VALUES (N'01        ', N'101       ', N'4         ')
INSERT [dbo].[Entrances] ([number_entrant], [number_subject], [mark]) VALUES (N'01        ', N'102       ', N'5         ')
INSERT [dbo].[Entrances] ([number_entrant], [number_subject], [mark]) VALUES (N'01        ', N'103       ', N'5         ')
INSERT [dbo].[Entrances] ([number_entrant], [number_subject], [mark]) VALUES (N'02        ', N'100       ', N'3         ')
INSERT [dbo].[Entrances] ([number_entrant], [number_subject], [mark]) VALUES (N'02        ', N'101       ', N'5         ')
INSERT [dbo].[Entrances] ([number_entrant], [number_subject], [mark]) VALUES (N'02        ', N'103       ', N'5         ')
INSERT [dbo].[Entrances] ([number_entrant], [number_subject], [mark]) VALUES (N'03        ', N'100       ', N'5         ')
INSERT [dbo].[Entrances] ([number_entrant], [number_subject], [mark]) VALUES (N'03        ', N'101       ', N'5         ')
INSERT [dbo].[Entrances] ([number_entrant], [number_subject], [mark]) VALUES (N'03        ', N'102       ', N'5         ')
INSERT [dbo].[Entrances] ([number_entrant], [number_subject], [mark]) VALUES (N'04        ', N'100       ', N'4         ')
INSERT [dbo].[Entrances] ([number_entrant], [number_subject], [mark]) VALUES (N'04        ', N'101       ', N'4         ')
INSERT [dbo].[Entrances] ([number_entrant], [number_subject], [mark]) VALUES (N'04        ', N'103       ', N'5         ')
INSERT [dbo].[Entrances] ([number_entrant], [number_subject], [mark]) VALUES (N'05        ', N'100       ', N'3         ')
INSERT [dbo].[Entrances] ([number_entrant], [number_subject], [mark]) VALUES (N'05        ', N'101       ', N'4         ')
INSERT [dbo].[Entrances] ([number_entrant], [number_subject], [mark]) VALUES (N'05        ', N'102       ', N'3         ')
INSERT [dbo].[Entrances] ([number_entrant], [number_subject], [mark]) VALUES (N'05        ', N'103       ', N'4         ')
INSERT [dbo].[Entrants] ([number_entrant], [surname], [name], [second_name], [passport], [phone], [certificate_number], [city], [mail]) VALUES (N'01        ', N'Пономарёв ', N'Ефим      ', N'Михайлович', N'525354    ', N'9123456789', N'000001    ', N'Москва    ', N'al@bk.ru  ')
INSERT [dbo].[Entrants] ([number_entrant], [surname], [name], [second_name], [passport], [phone], [certificate_number], [city], [mail]) VALUES (N'02        ', N'Смирнов   ', N'Богдан    ', N'Платонович', N'626364    ', N'9234516992', N'000010    ', N'Питер     ', N'ba@bk.ru  ')
INSERT [dbo].[Entrants] ([number_entrant], [surname], [name], [second_name], [passport], [phone], [certificate_number], [city], [mail]) VALUES (N'03        ', N'Карпов    ', N'Прохор    ', N'Львович   ', N'899929    ', N'9183537548', N'000011    ', N'Белгород  ', N'jk@bk.ru  ')
INSERT [dbo].[Entrants] ([number_entrant], [surname], [name], [second_name], [passport], [phone], [certificate_number], [city], [mail]) VALUES (N'04        ', N'Симонов   ', N'Евсей     ', N'Сергеевич ', N'473744    ', N'9125727363', N'000100    ', N'Москва    ', N'jy@bk.ru  ')
INSERT [dbo].[Entrants] ([number_entrant], [surname], [name], [second_name], [passport], [phone], [certificate_number], [city], [mail]) VALUES (N'05        ', N'Дубченко  ', N'Устин     ', N'Артёмович ', N'237859    ', N'9675346234', N'000101    ', N'Казань    ', N'jp@bk.ru  ')
INSERT [dbo].[List_documets] ([number_document], [name_document]) VALUES (N'1         ', N'пасспорт  ')
INSERT [dbo].[List_documets] ([number_document], [name_document]) VALUES (N'2         ', N'аттестат  ')
INSERT [dbo].[List_documets] ([number_document], [name_document]) VALUES (N'3         ', N'справка   ')
INSERT [dbo].[Priotities] ([number_entrant], [number_specialty], [orignal_sertificate], [number_priority]) VALUES (N'01        ', N'1         ', N'1         ', N'1         ')
INSERT [dbo].[Priotities] ([number_entrant], [number_specialty], [orignal_sertificate], [number_priority]) VALUES (N'01        ', N'2         ', N'0         ', N'2         ')
INSERT [dbo].[Priotities] ([number_entrant], [number_specialty], [orignal_sertificate], [number_priority]) VALUES (N'02        ', N'2         ', N'1         ', N'1         ')
INSERT [dbo].[Priotities] ([number_entrant], [number_specialty], [orignal_sertificate], [number_priority]) VALUES (N'03        ', N'1         ', N'1         ', N'1         ')
INSERT [dbo].[Priotities] ([number_entrant], [number_specialty], [orignal_sertificate], [number_priority]) VALUES (N'04        ', N'2         ', N'0         ', N'1         ')
INSERT [dbo].[Priotities] ([number_entrant], [number_specialty], [orignal_sertificate], [number_priority]) VALUES (N'05        ', N'1         ', N'0         ', N'2         ')
INSERT [dbo].[Priotities] ([number_entrant], [number_specialty], [orignal_sertificate], [number_priority]) VALUES (N'05        ', N'2         ', N'1         ', N'1         ')
INSERT [dbo].[Specialties] ([number_specialty], [name_specialty], [edu_year], [budgetary_place], [commercial_place]) VALUES (N'1         ', N'ПКС       ', N'2020      ', N'2         ', N'2         ')
INSERT [dbo].[Specialties] ([number_specialty], [name_specialty], [edu_year], [budgetary_place], [commercial_place]) VALUES (N'2         ', N'ИБ        ', N'2020      ', N'1         ', N'1         ')
INSERT [dbo].[SpecSubjects] ([number_specialty], [number_subject]) VALUES (N'1         ', N'100       ')
INSERT [dbo].[SpecSubjects] ([number_specialty], [number_subject]) VALUES (N'1         ', N'101       ')
INSERT [dbo].[SpecSubjects] ([number_specialty], [number_subject]) VALUES (N'1         ', N'102       ')
INSERT [dbo].[SpecSubjects] ([number_specialty], [number_subject]) VALUES (N'2         ', N'100       ')
INSERT [dbo].[SpecSubjects] ([number_specialty], [number_subject]) VALUES (N'2         ', N'101       ')
INSERT [dbo].[SpecSubjects] ([number_specialty], [number_subject]) VALUES (N'2         ', N'103       ')
INSERT [dbo].[Subjects] ([number_subject], [name_subject]) VALUES (N'100       ', N'математика')
INSERT [dbo].[Subjects] ([number_subject], [name_subject]) VALUES (N'101       ', N'русс язык ')
INSERT [dbo].[Subjects] ([number_subject], [name_subject]) VALUES (N'102       ', N'информат  ')
INSERT [dbo].[Subjects] ([number_subject], [name_subject]) VALUES (N'103       ', N'физика    ')
ALTER TABLE [dbo].[Documents]  WITH CHECK ADD  CONSTRAINT [FK_Documents_Entrants] FOREIGN KEY([number_entrant])
REFERENCES [dbo].[Entrants] ([number_entrant])
GO
ALTER TABLE [dbo].[Documents] CHECK CONSTRAINT [FK_Documents_Entrants]
GO
ALTER TABLE [dbo].[Documents]  WITH CHECK ADD  CONSTRAINT [FK_Documents_List_documets] FOREIGN KEY([number_document])
REFERENCES [dbo].[List_documets] ([number_document])
GO
ALTER TABLE [dbo].[Documents] CHECK CONSTRAINT [FK_Documents_List_documets]
GO
ALTER TABLE [dbo].[Entrances]  WITH CHECK ADD  CONSTRAINT [FK_Entrances_Entrants] FOREIGN KEY([number_entrant])
REFERENCES [dbo].[Entrants] ([number_entrant])
GO
ALTER TABLE [dbo].[Entrances] CHECK CONSTRAINT [FK_Entrances_Entrants]
GO
ALTER TABLE [dbo].[Entrances]  WITH CHECK ADD  CONSTRAINT [FK_Entrances_Subjects] FOREIGN KEY([number_subject])
REFERENCES [dbo].[Subjects] ([number_subject])
GO
ALTER TABLE [dbo].[Entrances] CHECK CONSTRAINT [FK_Entrances_Subjects]
GO
ALTER TABLE [dbo].[Priotities]  WITH CHECK ADD  CONSTRAINT [FK_Priotities_Entrants] FOREIGN KEY([number_entrant])
REFERENCES [dbo].[Entrants] ([number_entrant])
GO
ALTER TABLE [dbo].[Priotities] CHECK CONSTRAINT [FK_Priotities_Entrants]
GO
ALTER TABLE [dbo].[Priotities]  WITH CHECK ADD  CONSTRAINT [FK_Priotities_Specialties] FOREIGN KEY([number_specialty])
REFERENCES [dbo].[Specialties] ([number_specialty])
GO
ALTER TABLE [dbo].[Priotities] CHECK CONSTRAINT [FK_Priotities_Specialties]
GO
ALTER TABLE [dbo].[SpecSubjects]  WITH CHECK ADD  CONSTRAINT [FK_SpecSubjects_Specialties] FOREIGN KEY([number_specialty])
REFERENCES [dbo].[Specialties] ([number_specialty])
GO
ALTER TABLE [dbo].[SpecSubjects] CHECK CONSTRAINT [FK_SpecSubjects_Specialties]
GO
ALTER TABLE [dbo].[SpecSubjects]  WITH CHECK ADD  CONSTRAINT [FK_SpecSubjects_Subjects] FOREIGN KEY([number_subject])
REFERENCES [dbo].[Subjects] ([number_subject])
GO
ALTER TABLE [dbo].[SpecSubjects] CHECK CONSTRAINT [FK_SpecSubjects_Subjects]
GO
USE [master]
GO
ALTER DATABASE [priemka] SET  READ_WRITE 
GO
