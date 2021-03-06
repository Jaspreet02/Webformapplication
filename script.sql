USE [master]
GO
/****** Object:  Database [RealEstate]    Script Date: 01-09-2020 20:51:00 ******/
CREATE DATABASE [RealEstate]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'RealEstate', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\RealEstate.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'RealEstate_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\RealEstate_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [RealEstate] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [RealEstate].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [RealEstate] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [RealEstate] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [RealEstate] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [RealEstate] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [RealEstate] SET ARITHABORT OFF 
GO
ALTER DATABASE [RealEstate] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [RealEstate] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [RealEstate] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [RealEstate] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [RealEstate] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [RealEstate] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [RealEstate] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [RealEstate] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [RealEstate] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [RealEstate] SET  ENABLE_BROKER 
GO
ALTER DATABASE [RealEstate] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [RealEstate] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [RealEstate] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [RealEstate] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [RealEstate] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [RealEstate] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [RealEstate] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [RealEstate] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [RealEstate] SET  MULTI_USER 
GO
ALTER DATABASE [RealEstate] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [RealEstate] SET DB_CHAINING OFF 
GO
ALTER DATABASE [RealEstate] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [RealEstate] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [RealEstate] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'RealEstate', N'ON'
GO
ALTER DATABASE [RealEstate] SET QUERY_STORE = OFF
GO
USE [RealEstate]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 01-09-2020 20:51:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 01-09-2020 20:51:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[AddressId] [int] IDENTITY(1,1) NOT NULL,
	[Status] [bit] NOT NULL,
	[CreatedAt] [datetimeoffset](7) NOT NULL,
	[ModifiedAt] [datetimeoffset](7) NOT NULL,
	[HouseNumber] [int] NOT NULL,
	[Street] [nvarchar](max) NULL,
	[UnitNumber] [int] NOT NULL,
	[PostalCode] [nvarchar](max) NULL,
	[CityId] [int] NOT NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[AddressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 01-09-2020 20:51:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 01-09-2020 20:51:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 01-09-2020 20:51:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 01-09-2020 20:51:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 01-09-2020 20:51:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 01-09-2020 20:51:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
	[Gender] [nvarchar](1) NOT NULL,
	[CreatedAt] [datetimeoffset](7) NOT NULL,
	[ModifiedAt] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 01-09-2020 20:51:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 01-09-2020 20:51:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[CityId] [int] IDENTITY(1,1) NOT NULL,
	[Status] [bit] NOT NULL,
	[CreatedAt] [datetimeoffset](7) NOT NULL,
	[ModifiedAt] [datetimeoffset](7) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[StateId] [int] NOT NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Image]    Script Date: 01-09-2020 20:51:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Image](
	[ImageId] [int] IDENTITY(1,1) NOT NULL,
	[Status] [bit] NOT NULL,
	[CreatedAt] [datetimeoffset](7) NOT NULL,
	[ModifiedAt] [datetimeoffset](7) NOT NULL,
	[Path] [nvarchar](max) NULL,
	[PropertyId] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Image] PRIMARY KEY CLUSTERED 
(
	[ImageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Property]    Script Date: 01-09-2020 20:51:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Property](
	[PropertyId] [int] IDENTITY(1,1) NOT NULL,
	[Status] [bit] NOT NULL,
	[CreatedAt] [datetimeoffset](7) NOT NULL,
	[ModifiedAt] [datetimeoffset](7) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[AddressId] [int] NOT NULL,
	[TypeId] [int] NOT NULL,
	[UserId] [nvarchar](450) NULL,
	[Prize] [decimal](18, 2) NOT NULL,
	[Room] [int] NOT NULL,
 CONSTRAINT [PK_Property] PRIMARY KEY CLUSTERED 
(
	[PropertyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[State]    Script Date: 01-09-2020 20:51:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[State](
	[StateId] [int] IDENTITY(1,1) NOT NULL,
	[Status] [bit] NOT NULL,
	[CreatedAt] [datetimeoffset](7) NOT NULL,
	[ModifiedAt] [datetimeoffset](7) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[code] [nvarchar](2) NOT NULL,
 CONSTRAINT [PK_State] PRIMARY KEY CLUSTERED 
(
	[StateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Type]    Script Date: 01-09-2020 20:51:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Type](
	[TypeId] [int] IDENTITY(1,1) NOT NULL,
	[Status] [bit] NOT NULL,
	[CreatedAt] [datetimeoffset](7) NOT NULL,
	[ModifiedAt] [datetimeoffset](7) NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Type] PRIMARY KEY CLUSTERED 
(
	[TypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200501154943_20200501', N'3.1.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200501162216_20200502', N'3.1.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200501215336_20200503', N'3.1.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200519203323_2020-05-19', N'3.1.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200610190548_2020-06-10', N'3.1.3')
GO
SET IDENTITY_INSERT [dbo].[Address] ON 

INSERT [dbo].[Address] ([AddressId], [Status], [CreatedAt], [ModifiedAt], [HouseNumber], [Street], [UnitNumber], [PostalCode], [CityId]) VALUES (3, 1, CAST(N'2020-02-03T00:00:00.0000000-05:00' AS DateTimeOffset), CAST(N'2020-03-04T00:00:00.0000000-05:00' AS DateTimeOffset), 8, N'Bengel Road', 0, N'L6P2X4', 1)
INSERT [dbo].[Address] ([AddressId], [Status], [CreatedAt], [ModifiedAt], [HouseNumber], [Street], [UnitNumber], [PostalCode], [CityId]) VALUES (4, 1, CAST(N'2020-02-03T00:00:00.0000000-05:00' AS DateTimeOffset), CAST(N'2020-02-03T00:00:00.0000000-05:00' AS DateTimeOffset), 10, N'Dudley Road', 0, N'L5V2E5', 1)
INSERT [dbo].[Address] ([AddressId], [Status], [CreatedAt], [ModifiedAt], [HouseNumber], [Street], [UnitNumber], [PostalCode], [CityId]) VALUES (5, 1, CAST(N'2020-02-03T00:00:00.0000000-05:00' AS DateTimeOffset), CAST(N'2020-02-03T00:00:00.0000000-05:00' AS DateTimeOffset), 48, N'Chipwood Cres', 0, N'L5V2E5', 2)
INSERT [dbo].[Address] ([AddressId], [Status], [CreatedAt], [ModifiedAt], [HouseNumber], [Street], [UnitNumber], [PostalCode], [CityId]) VALUES (8, 1, CAST(N'2020-02-03T00:00:00.0000000-05:00' AS DateTimeOffset), CAST(N'2020-02-03T00:00:00.0000000-05:00' AS DateTimeOffset), 48, N'Chipwood Cres', 0, N'L5V2E5', 2)
INSERT [dbo].[Address] ([AddressId], [Status], [CreatedAt], [ModifiedAt], [HouseNumber], [Street], [UnitNumber], [PostalCode], [CityId]) VALUES (9, 1, CAST(N'2020-02-03T00:00:00.0000000-05:00' AS DateTimeOffset), CAST(N'2020-02-03T00:00:00.0000000-05:00' AS DateTimeOffset), 48, N'Chipwood Cres', 0, N'L5V2E5', 3)
INSERT [dbo].[Address] ([AddressId], [Status], [CreatedAt], [ModifiedAt], [HouseNumber], [Street], [UnitNumber], [PostalCode], [CityId]) VALUES (10, 1, CAST(N'2020-02-03T00:00:00.0000000-05:00' AS DateTimeOffset), CAST(N'2020-02-03T00:00:00.0000000-05:00' AS DateTimeOffset), 48, N'Chipwood Cres', 0, N'L5V2E5', 3)
SET IDENTITY_INSERT [dbo].[Address] OFF
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'6a7b6c50-5cfd-4034-aa26-86ce82a59993', N'Tenant', N'TENANT', N'15a678c3-dff1-4d11-aaef-d0549b7798e7')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'810ce6a9-f84d-4aa0-809f-2e64f1890cd2', N'Admin', N'ADMIN', N'f91e3706-7ed6-42cb-a2fe-3df2b76d9053')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'c37e4bcf-6814-4808-8485-7cd6b65f7d18', N'Landlord', N'LANDLORD', N'5a9429c5-2c15-4529-8f88-8c1a69f8eba4')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ce42d94f-afd1-4865-ace9-5a6aea30e88d', N'810ce6a9-f84d-4aa0-809f-2e64f1890cd2')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [Gender], [CreatedAt], [ModifiedAt]) VALUES (N'ce42d94f-afd1-4865-ace9-5a6aea30e88d', N'samarpratap@gmail.com', N'SAMARPRATAP@GMAIL.COM', N'samarpratap@gmail.com', N'SAMARPRATAP@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEB4qkspQVvIwR6JJZWEHhif4wj45FYfhvr3YpidHeu4DJOjRklHC6ek2aoHQteN3Ew==', N'VDFMATEXCJHLIYN6ABFSZFR7TATOW7GN', N'13c7340a-60de-4538-9f62-192ee6d57800', N'1234567890', 1, 0, NULL, 1, 0, N'Samarpratap', N'Singh', N'M', CAST(N'2020-05-02T14:04:48.7322766-04:00' AS DateTimeOffset), CAST(N'2020-05-02T14:04:48.7326185-04:00' AS DateTimeOffset))
GO
SET IDENTITY_INSERT [dbo].[City] ON 

INSERT [dbo].[City] ([CityId], [Status], [CreatedAt], [ModifiedAt], [Name], [StateId]) VALUES (1, 1, CAST(N'2020-04-04T00:00:00.0000000-04:00' AS DateTimeOffset), CAST(N'2020-04-04T00:00:00.0000000-04:00' AS DateTimeOffset), N'Calgary', 1)
INSERT [dbo].[City] ([CityId], [Status], [CreatedAt], [ModifiedAt], [Name], [StateId]) VALUES (2, 1, CAST(N'2020-04-04T00:00:00.0000000-04:00' AS DateTimeOffset), CAST(N'2020-04-04T00:00:00.0000000-04:00' AS DateTimeOffset), N'Edmonton', 1)
INSERT [dbo].[City] ([CityId], [Status], [CreatedAt], [ModifiedAt], [Name], [StateId]) VALUES (3, 1, CAST(N'2020-04-04T00:00:00.0000000-04:00' AS DateTimeOffset), CAST(N'2020-04-04T00:00:00.0000000-04:00' AS DateTimeOffset), N'Red Deer', 1)
INSERT [dbo].[City] ([CityId], [Status], [CreatedAt], [ModifiedAt], [Name], [StateId]) VALUES (4, 1, CAST(N'2020-04-04T00:00:00.0000000-04:00' AS DateTimeOffset), CAST(N'2020-04-04T00:00:00.0000000-04:00' AS DateTimeOffset), N'Lethbridge', 1)
INSERT [dbo].[City] ([CityId], [Status], [CreatedAt], [ModifiedAt], [Name], [StateId]) VALUES (5, 1, CAST(N'2020-04-04T00:00:00.0000000-04:00' AS DateTimeOffset), CAST(N'2020-04-04T00:00:00.0000000-04:00' AS DateTimeOffset), N'St. Albert', 1)
INSERT [dbo].[City] ([CityId], [Status], [CreatedAt], [ModifiedAt], [Name], [StateId]) VALUES (6, 1, CAST(N'2020-04-04T00:00:00.0000000-04:00' AS DateTimeOffset), CAST(N'2020-04-04T00:00:00.0000000-04:00' AS DateTimeOffset), N'Vancouver', 2)
INSERT [dbo].[City] ([CityId], [Status], [CreatedAt], [ModifiedAt], [Name], [StateId]) VALUES (7, 1, CAST(N'2020-04-04T00:00:00.0000000-04:00' AS DateTimeOffset), CAST(N'2020-04-04T00:00:00.0000000-04:00' AS DateTimeOffset), N'Victoria', 2)
INSERT [dbo].[City] ([CityId], [Status], [CreatedAt], [ModifiedAt], [Name], [StateId]) VALUES (8, 1, CAST(N'2020-04-04T00:00:00.0000000-04:00' AS DateTimeOffset), CAST(N'2020-04-04T00:00:00.0000000-04:00' AS DateTimeOffset), N'Whistler', 2)
INSERT [dbo].[City] ([CityId], [Status], [CreatedAt], [ModifiedAt], [Name], [StateId]) VALUES (9, 1, CAST(N'2020-04-04T00:00:00.0000000-04:00' AS DateTimeOffset), CAST(N'2020-04-04T00:00:00.0000000-04:00' AS DateTimeOffset), N'Tofino', 2)
INSERT [dbo].[City] ([CityId], [Status], [CreatedAt], [ModifiedAt], [Name], [StateId]) VALUES (10, 1, CAST(N'2020-04-04T00:00:00.0000000-04:00' AS DateTimeOffset), CAST(N'2020-04-04T00:00:00.0000000-04:00' AS DateTimeOffset), N'Penticton', 2)
INSERT [dbo].[City] ([CityId], [Status], [CreatedAt], [ModifiedAt], [Name], [StateId]) VALUES (11, 1, CAST(N'2020-04-04T00:00:00.0000000-04:00' AS DateTimeOffset), CAST(N'2020-04-04T00:00:00.0000000-04:00' AS DateTimeOffset), N'Kelowna', 2)
INSERT [dbo].[City] ([CityId], [Status], [CreatedAt], [ModifiedAt], [Name], [StateId]) VALUES (12, 1, CAST(N'2020-04-04T00:00:00.0000000-04:00' AS DateTimeOffset), CAST(N'2020-04-04T00:00:00.0000000-04:00' AS DateTimeOffset), N'Nanaimo', 2)
INSERT [dbo].[City] ([CityId], [Status], [CreatedAt], [ModifiedAt], [Name], [StateId]) VALUES (13, 1, CAST(N'2020-04-04T00:00:00.0000000-04:00' AS DateTimeOffset), CAST(N'2020-04-04T00:00:00.0000000-04:00' AS DateTimeOffset), N'Prince Rupert', 2)
INSERT [dbo].[City] ([CityId], [Status], [CreatedAt], [ModifiedAt], [Name], [StateId]) VALUES (14, 1, CAST(N'2020-04-04T00:00:00.0000000-04:00' AS DateTimeOffset), CAST(N'2020-04-04T00:00:00.0000000-04:00' AS DateTimeOffset), N'Williams Lake', 2)
INSERT [dbo].[City] ([CityId], [Status], [CreatedAt], [ModifiedAt], [Name], [StateId]) VALUES (15, 1, CAST(N'2020-04-04T00:00:00.0000000-04:00' AS DateTimeOffset), CAST(N'2020-04-04T00:00:00.0000000-04:00' AS DateTimeOffset), N'Kamloops', 2)
INSERT [dbo].[City] ([CityId], [Status], [CreatedAt], [ModifiedAt], [Name], [StateId]) VALUES (16, 1, CAST(N'2020-04-04T00:00:00.0000000-04:00' AS DateTimeOffset), CAST(N'2020-04-04T00:00:00.0000000-04:00' AS DateTimeOffset), N'Halifax', 6)
INSERT [dbo].[City] ([CityId], [Status], [CreatedAt], [ModifiedAt], [Name], [StateId]) VALUES (17, 1, CAST(N'2020-04-04T00:00:00.0000000-04:00' AS DateTimeOffset), CAST(N'2020-04-04T00:00:00.0000000-04:00' AS DateTimeOffset), N'Cape Breton', 6)
INSERT [dbo].[City] ([CityId], [Status], [CreatedAt], [ModifiedAt], [Name], [StateId]) VALUES (18, 1, CAST(N'2020-04-04T00:00:00.0000000-04:00' AS DateTimeOffset), CAST(N'2020-04-04T00:00:00.0000000-04:00' AS DateTimeOffset), N'Truro', 6)
INSERT [dbo].[City] ([CityId], [Status], [CreatedAt], [ModifiedAt], [Name], [StateId]) VALUES (19, 1, CAST(N'2020-04-04T00:00:00.0000000-04:00' AS DateTimeOffset), CAST(N'2020-04-04T00:00:00.0000000-04:00' AS DateTimeOffset), N'Amherst', 6)
INSERT [dbo].[City] ([CityId], [Status], [CreatedAt], [ModifiedAt], [Name], [StateId]) VALUES (20, 1, CAST(N'2020-04-04T00:00:00.0000000-04:00' AS DateTimeOffset), CAST(N'2020-04-04T00:00:00.0000000-04:00' AS DateTimeOffset), N'New Glasgow', 6)
INSERT [dbo].[City] ([CityId], [Status], [CreatedAt], [ModifiedAt], [Name], [StateId]) VALUES (21, 1, CAST(N'2020-04-04T00:00:00.0000000-04:00' AS DateTimeOffset), CAST(N'2020-04-04T00:00:00.0000000-04:00' AS DateTimeOffset), N'Bridgewater', 6)
INSERT [dbo].[City] ([CityId], [Status], [CreatedAt], [ModifiedAt], [Name], [StateId]) VALUES (22, 1, CAST(N'2020-04-04T00:00:00.0000000-04:00' AS DateTimeOffset), CAST(N'2020-04-04T00:00:00.0000000-04:00' AS DateTimeOffset), N'Yarmouth', 6)
INSERT [dbo].[City] ([CityId], [Status], [CreatedAt], [ModifiedAt], [Name], [StateId]) VALUES (23, 1, CAST(N'2020-04-04T00:00:00.0000000-04:00' AS DateTimeOffset), CAST(N'2020-04-04T00:00:00.0000000-04:00' AS DateTimeOffset), N'Kentville', 6)
SET IDENTITY_INSERT [dbo].[City] OFF
GO
SET IDENTITY_INSERT [dbo].[Image] ON 

INSERT [dbo].[Image] ([ImageId], [Status], [CreatedAt], [ModifiedAt], [Path], [PropertyId], [Name]) VALUES (2, 1, CAST(N'2020-05-19T00:00:00.0000000-04:00' AS DateTimeOffset), CAST(N'2020-05-19T00:00:00.0000000-04:00' AS DateTimeOffset), N'ce42d94f-afd1-4865-ace9-5a6aea30e88d/', 3, N'01')
INSERT [dbo].[Image] ([ImageId], [Status], [CreatedAt], [ModifiedAt], [Path], [PropertyId], [Name]) VALUES (5, 1, CAST(N'2020-05-19T00:00:00.0000000-04:00' AS DateTimeOffset), CAST(N'2020-05-19T00:00:00.0000000-04:00' AS DateTimeOffset), N'ce42d94f-afd1-4865-ace9-5a6aea30e88d/', 6, N'01')
INSERT [dbo].[Image] ([ImageId], [Status], [CreatedAt], [ModifiedAt], [Path], [PropertyId], [Name]) VALUES (6, 1, CAST(N'2020-05-19T00:00:00.0000000-04:00' AS DateTimeOffset), CAST(N'2020-05-19T00:00:00.0000000-04:00' AS DateTimeOffset), N'ce42d94f-afd1-4865-ace9-5a6aea30e88d/', 7, N'01')
INSERT [dbo].[Image] ([ImageId], [Status], [CreatedAt], [ModifiedAt], [Path], [PropertyId], [Name]) VALUES (7, 1, CAST(N'2020-05-19T00:00:00.0000000-04:00' AS DateTimeOffset), CAST(N'2020-05-19T00:00:00.0000000-04:00' AS DateTimeOffset), N'ce42d94f-afd1-4865-ace9-5a6aea30e88d/', 8, N'01')
INSERT [dbo].[Image] ([ImageId], [Status], [CreatedAt], [ModifiedAt], [Path], [PropertyId], [Name]) VALUES (8, 1, CAST(N'2020-05-19T00:00:00.0000000-04:00' AS DateTimeOffset), CAST(N'2020-05-19T00:00:00.0000000-04:00' AS DateTimeOffset), N'ce42d94f-afd1-4865-ace9-5a6aea30e88d/', 9, N'01')
INSERT [dbo].[Image] ([ImageId], [Status], [CreatedAt], [ModifiedAt], [Path], [PropertyId], [Name]) VALUES (9, 1, CAST(N'2020-05-19T00:00:00.0000000-04:00' AS DateTimeOffset), CAST(N'2020-05-19T00:00:00.0000000-04:00' AS DateTimeOffset), N'ce42d94f-afd1-4865-ace9-5a6aea30e88d/', 10, N'01')
INSERT [dbo].[Image] ([ImageId], [Status], [CreatedAt], [ModifiedAt], [Path], [PropertyId], [Name]) VALUES (10, 1, CAST(N'2020-05-19T00:00:00.0000000-04:00' AS DateTimeOffset), CAST(N'2020-05-19T00:00:00.0000000-04:00' AS DateTimeOffset), N'ce42d94f-afd1-4865-ace9-5a6aea30e88d/', 11, N'01')
INSERT [dbo].[Image] ([ImageId], [Status], [CreatedAt], [ModifiedAt], [Path], [PropertyId], [Name]) VALUES (11, 1, CAST(N'2020-05-19T00:00:00.0000000-04:00' AS DateTimeOffset), CAST(N'2020-05-19T00:00:00.0000000-04:00' AS DateTimeOffset), N'ce42d94f-afd1-4865-ace9-5a6aea30e88d/', 12, N'01')
INSERT [dbo].[Image] ([ImageId], [Status], [CreatedAt], [ModifiedAt], [Path], [PropertyId], [Name]) VALUES (13, 1, CAST(N'2020-05-19T00:00:00.0000000-04:00' AS DateTimeOffset), CAST(N'2020-05-19T00:00:00.0000000-04:00' AS DateTimeOffset), N'ce42d94f-afd1-4865-ace9-5a6aea30e88d/', 14, N'01')
INSERT [dbo].[Image] ([ImageId], [Status], [CreatedAt], [ModifiedAt], [Path], [PropertyId], [Name]) VALUES (14, 1, CAST(N'2020-05-19T00:00:00.0000000-04:00' AS DateTimeOffset), CAST(N'2020-05-19T00:00:00.0000000-04:00' AS DateTimeOffset), N'ce42d94f-afd1-4865-ace9-5a6aea30e88d/', 15, N'01')
INSERT [dbo].[Image] ([ImageId], [Status], [CreatedAt], [ModifiedAt], [Path], [PropertyId], [Name]) VALUES (15, 1, CAST(N'2020-05-19T00:00:00.0000000-04:00' AS DateTimeOffset), CAST(N'2020-05-19T00:00:00.0000000-04:00' AS DateTimeOffset), N'ce42d94f-afd1-4865-ace9-5a6aea30e88d/', 16, N'01')
INSERT [dbo].[Image] ([ImageId], [Status], [CreatedAt], [ModifiedAt], [Path], [PropertyId], [Name]) VALUES (16, 1, CAST(N'2020-05-19T00:00:00.0000000-04:00' AS DateTimeOffset), CAST(N'2020-05-19T00:00:00.0000000-04:00' AS DateTimeOffset), N'ce42d94f-afd1-4865-ace9-5a6aea30e88d/', 17, N'01')
INSERT [dbo].[Image] ([ImageId], [Status], [CreatedAt], [ModifiedAt], [Path], [PropertyId], [Name]) VALUES (17, 1, CAST(N'2020-05-19T00:00:00.0000000-04:00' AS DateTimeOffset), CAST(N'2020-05-19T00:00:00.0000000-04:00' AS DateTimeOffset), N'ce42d94f-afd1-4865-ace9-5a6aea30e88d/', 18, N'01')
INSERT [dbo].[Image] ([ImageId], [Status], [CreatedAt], [ModifiedAt], [Path], [PropertyId], [Name]) VALUES (18, 1, CAST(N'2020-05-19T00:00:00.0000000-04:00' AS DateTimeOffset), CAST(N'2020-05-19T00:00:00.0000000-04:00' AS DateTimeOffset), N'ce42d94f-afd1-4865-ace9-5a6aea30e88d/', 19, N'01')
SET IDENTITY_INSERT [dbo].[Image] OFF
GO
SET IDENTITY_INSERT [dbo].[Property] ON 

INSERT [dbo].[Property] ([PropertyId], [Status], [CreatedAt], [ModifiedAt], [Description], [AddressId], [TypeId], [UserId], [Prize], [Room]) VALUES (3, 1, CAST(N'2020-03-04T00:00:00.0000000-05:00' AS DateTimeOffset), CAST(N'2020-03-03T00:00:00.0000000-05:00' AS DateTimeOffset), N'2 Car Parking', 4, 2, N'ce42d94f-afd1-4865-ace9-5a6aea30e88d', CAST(240.00 AS Decimal(18, 2)), 4)
INSERT [dbo].[Property] ([PropertyId], [Status], [CreatedAt], [ModifiedAt], [Description], [AddressId], [TypeId], [UserId], [Prize], [Room]) VALUES (6, 1, CAST(N'2020-03-04T00:00:00.0000000-05:00' AS DateTimeOffset), CAST(N'2020-03-03T00:00:00.0000000-05:00' AS DateTimeOffset), N'Only For Family', 8, 1, N'ce42d94f-afd1-4865-ace9-5a6aea30e88d', CAST(1920.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[Property] ([PropertyId], [Status], [CreatedAt], [ModifiedAt], [Description], [AddressId], [TypeId], [UserId], [Prize], [Room]) VALUES (7, 1, CAST(N'2020-03-04T00:00:00.0000000-05:00' AS DateTimeOffset), CAST(N'2020-03-03T00:00:00.0000000-05:00' AS DateTimeOffset), N'Only For Family', 9, 1, N'ce42d94f-afd1-4865-ace9-5a6aea30e88d', CAST(2835.00 AS Decimal(18, 2)), 3)
INSERT [dbo].[Property] ([PropertyId], [Status], [CreatedAt], [ModifiedAt], [Description], [AddressId], [TypeId], [UserId], [Prize], [Room]) VALUES (8, 1, CAST(N'2020-03-04T00:00:00.0000000-05:00' AS DateTimeOffset), CAST(N'2020-03-03T00:00:00.0000000-05:00' AS DateTimeOffset), N'Only For Family', 10, 1, N'ce42d94f-afd1-4865-ace9-5a6aea30e88d', CAST(4000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Property] ([PropertyId], [Status], [CreatedAt], [ModifiedAt], [Description], [AddressId], [TypeId], [UserId], [Prize], [Room]) VALUES (9, 1, CAST(N'2020-03-04T00:00:00.0000000-05:00' AS DateTimeOffset), CAST(N'2020-03-03T00:00:00.0000000-05:00' AS DateTimeOffset), N'Fully furnished', 9, 1, N'ce42d94f-afd1-4865-ace9-5a6aea30e88d', CAST(3645.00 AS Decimal(18, 2)), 3)
INSERT [dbo].[Property] ([PropertyId], [Status], [CreatedAt], [ModifiedAt], [Description], [AddressId], [TypeId], [UserId], [Prize], [Room]) VALUES (10, 1, CAST(N'2020-03-04T00:00:00.0000000-05:00' AS DateTimeOffset), CAST(N'2020-03-03T00:00:00.0000000-05:00' AS DateTimeOffset), N'2 Car Parking', 8, 1, N'ce42d94f-afd1-4865-ace9-5a6aea30e88d', CAST(3200.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[Property] ([PropertyId], [Status], [CreatedAt], [ModifiedAt], [Description], [AddressId], [TypeId], [UserId], [Prize], [Room]) VALUES (11, 1, CAST(N'2020-03-04T00:00:00.0000000-05:00' AS DateTimeOffset), CAST(N'2020-03-03T00:00:00.0000000-05:00' AS DateTimeOffset), N'Only For Family', 5, 1, N'ce42d94f-afd1-4865-ace9-5a6aea30e88d', CAST(1375.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[Property] ([PropertyId], [Status], [CreatedAt], [ModifiedAt], [Description], [AddressId], [TypeId], [UserId], [Prize], [Room]) VALUES (12, 1, CAST(N'2020-03-04T00:00:00.0000000-05:00' AS DateTimeOffset), CAST(N'2020-03-03T00:00:00.0000000-05:00' AS DateTimeOffset), N'Only For Family', 4, 1, N'ce42d94f-afd1-4865-ace9-5a6aea30e88d', CAST(960.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Property] ([PropertyId], [Status], [CreatedAt], [ModifiedAt], [Description], [AddressId], [TypeId], [UserId], [Prize], [Room]) VALUES (14, 1, CAST(N'2020-03-04T00:00:00.0000000-05:00' AS DateTimeOffset), CAST(N'2020-03-03T00:00:00.0000000-05:00' AS DateTimeOffset), N'Only For Family', 4, 1, N'ce42d94f-afd1-4865-ace9-5a6aea30e88d', CAST(1120.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Property] ([PropertyId], [Status], [CreatedAt], [ModifiedAt], [Description], [AddressId], [TypeId], [UserId], [Prize], [Room]) VALUES (15, 1, CAST(N'2020-03-04T00:00:00.0000000-05:00' AS DateTimeOffset), CAST(N'2020-03-03T00:00:00.0000000-05:00' AS DateTimeOffset), N'Fully furnished', 5, 1, N'ce42d94f-afd1-4865-ace9-5a6aea30e88d', CAST(1875.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[Property] ([PropertyId], [Status], [CreatedAt], [ModifiedAt], [Description], [AddressId], [TypeId], [UserId], [Prize], [Room]) VALUES (16, 1, CAST(N'2020-03-04T00:00:00.0000000-05:00' AS DateTimeOffset), CAST(N'2020-03-03T00:00:00.0000000-05:00' AS DateTimeOffset), N'2 Car Parking', 9, 1, N'ce42d94f-afd1-4865-ace9-5a6aea30e88d', CAST(6480.00 AS Decimal(18, 2)), 3)
INSERT [dbo].[Property] ([PropertyId], [Status], [CreatedAt], [ModifiedAt], [Description], [AddressId], [TypeId], [UserId], [Prize], [Room]) VALUES (17, 1, CAST(N'2020-03-04T00:00:00.0000000-05:00' AS DateTimeOffset), CAST(N'2020-03-03T00:00:00.0000000-05:00' AS DateTimeOffset), N'Only For Family', 8, 1, N'ce42d94f-afd1-4865-ace9-5a6aea30e88d', CAST(5440.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[Property] ([PropertyId], [Status], [CreatedAt], [ModifiedAt], [Description], [AddressId], [TypeId], [UserId], [Prize], [Room]) VALUES (18, 1, CAST(N'2020-03-04T00:00:00.0000000-05:00' AS DateTimeOffset), CAST(N'2020-03-03T00:00:00.0000000-05:00' AS DateTimeOffset), N'Only For Family', 9, 1, N'ce42d94f-afd1-4865-ace9-5a6aea30e88d', CAST(7290.00 AS Decimal(18, 2)), 3)
INSERT [dbo].[Property] ([PropertyId], [Status], [CreatedAt], [ModifiedAt], [Description], [AddressId], [TypeId], [UserId], [Prize], [Room]) VALUES (19, 1, CAST(N'2020-03-04T00:00:00.0000000-05:00' AS DateTimeOffset), CAST(N'2020-03-03T00:00:00.0000000-05:00' AS DateTimeOffset), N'Only For Family', 8, 1, N'ce42d94f-afd1-4865-ace9-5a6aea30e88d', CAST(6080.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[Property] ([PropertyId], [Status], [CreatedAt], [ModifiedAt], [Description], [AddressId], [TypeId], [UserId], [Prize], [Room]) VALUES (20, 1, CAST(N'2020-03-04T00:00:00.0000000-05:00' AS DateTimeOffset), CAST(N'2020-03-03T00:00:00.0000000-05:00' AS DateTimeOffset), N'Only For Family', 9, 1, N'ce42d94f-afd1-4865-ace9-5a6aea30e88d', CAST(8100.00 AS Decimal(18, 2)), 3)
INSERT [dbo].[Property] ([PropertyId], [Status], [CreatedAt], [ModifiedAt], [Description], [AddressId], [TypeId], [UserId], [Prize], [Room]) VALUES (21, 1, CAST(N'2020-03-04T00:00:00.0000000-05:00' AS DateTimeOffset), CAST(N'2020-03-03T00:00:00.0000000-05:00' AS DateTimeOffset), N'Fully furnished', 3, 1, N'ce42d94f-afd1-4865-ace9-5a6aea30e88d', CAST(945.00 AS Decimal(18, 2)), 3)
INSERT [dbo].[Property] ([PropertyId], [Status], [CreatedAt], [ModifiedAt], [Description], [AddressId], [TypeId], [UserId], [Prize], [Room]) VALUES (22, 1, CAST(N'2020-03-04T00:00:00.0000000-05:00' AS DateTimeOffset), CAST(N'2020-03-03T00:00:00.0000000-05:00' AS DateTimeOffset), N'2 Car Parking', 4, 1, N'ce42d94f-afd1-4865-ace9-5a6aea30e88d', CAST(1760.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Property] ([PropertyId], [Status], [CreatedAt], [ModifiedAt], [Description], [AddressId], [TypeId], [UserId], [Prize], [Room]) VALUES (23, 1, CAST(N'2020-03-04T00:00:00.0000000-05:00' AS DateTimeOffset), CAST(N'2020-03-03T00:00:00.0000000-05:00' AS DateTimeOffset), N'Only For Family', 8, 1, N'ce42d94f-afd1-4865-ace9-5a6aea30e88d', CAST(7360.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[Property] ([PropertyId], [Status], [CreatedAt], [ModifiedAt], [Description], [AddressId], [TypeId], [UserId], [Prize], [Room]) VALUES (24, 1, CAST(N'2020-03-04T00:00:00.0000000-05:00' AS DateTimeOffset), CAST(N'2020-03-03T00:00:00.0000000-05:00' AS DateTimeOffset), N'Only For Family', 8, 1, N'ce42d94f-afd1-4865-ace9-5a6aea30e88d', CAST(7680.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[Property] ([PropertyId], [Status], [CreatedAt], [ModifiedAt], [Description], [AddressId], [TypeId], [UserId], [Prize], [Room]) VALUES (25, 1, CAST(N'2020-03-04T00:00:00.0000000-05:00' AS DateTimeOffset), CAST(N'2020-03-03T00:00:00.0000000-05:00' AS DateTimeOffset), N'Only For Family', 8, 1, N'ce42d94f-afd1-4865-ace9-5a6aea30e88d', CAST(8000.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[Property] ([PropertyId], [Status], [CreatedAt], [ModifiedAt], [Description], [AddressId], [TypeId], [UserId], [Prize], [Room]) VALUES (26, 1, CAST(N'2020-03-04T00:00:00.0000000-05:00' AS DateTimeOffset), CAST(N'2020-03-03T00:00:00.0000000-05:00' AS DateTimeOffset), N'Only For Family', 8, 1, N'ce42d94f-afd1-4865-ace9-5a6aea30e88d', CAST(8320.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[Property] ([PropertyId], [Status], [CreatedAt], [ModifiedAt], [Description], [AddressId], [TypeId], [UserId], [Prize], [Room]) VALUES (27, 1, CAST(N'2020-03-04T00:00:00.0000000-05:00' AS DateTimeOffset), CAST(N'2020-03-03T00:00:00.0000000-05:00' AS DateTimeOffset), N'Fully furnished', 8, 1, N'ce42d94f-afd1-4865-ace9-5a6aea30e88d', CAST(8640.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[Property] ([PropertyId], [Status], [CreatedAt], [ModifiedAt], [Description], [AddressId], [TypeId], [UserId], [Prize], [Room]) VALUES (28, 1, CAST(N'2020-03-04T00:00:00.0000000-05:00' AS DateTimeOffset), CAST(N'2020-03-03T00:00:00.0000000-05:00' AS DateTimeOffset), N'2 Car Parking', 8, 1, N'ce42d94f-afd1-4865-ace9-5a6aea30e88d', CAST(8960.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[Property] ([PropertyId], [Status], [CreatedAt], [ModifiedAt], [Description], [AddressId], [TypeId], [UserId], [Prize], [Room]) VALUES (29, 1, CAST(N'2020-03-04T00:00:00.0000000-05:00' AS DateTimeOffset), CAST(N'2020-03-03T00:00:00.0000000-05:00' AS DateTimeOffset), N'Only For Family', 8, 1, N'ce42d94f-afd1-4865-ace9-5a6aea30e88d', CAST(9280.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[Property] ([PropertyId], [Status], [CreatedAt], [ModifiedAt], [Description], [AddressId], [TypeId], [UserId], [Prize], [Room]) VALUES (30, 1, CAST(N'2020-03-04T00:00:00.0000000-05:00' AS DateTimeOffset), CAST(N'2020-03-03T00:00:00.0000000-05:00' AS DateTimeOffset), N'Only For Family', 8, 1, N'ce42d94f-afd1-4865-ace9-5a6aea30e88d', CAST(9600.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[Property] ([PropertyId], [Status], [CreatedAt], [ModifiedAt], [Description], [AddressId], [TypeId], [UserId], [Prize], [Room]) VALUES (31, 1, CAST(N'2020-03-04T00:00:00.0000000-05:00' AS DateTimeOffset), CAST(N'2020-03-03T00:00:00.0000000-05:00' AS DateTimeOffset), N'Only For Family', 8, 1, N'ce42d94f-afd1-4865-ace9-5a6aea30e88d', CAST(9920.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[Property] ([PropertyId], [Status], [CreatedAt], [ModifiedAt], [Description], [AddressId], [TypeId], [UserId], [Prize], [Room]) VALUES (32, 1, CAST(N'2020-03-04T00:00:00.0000000-05:00' AS DateTimeOffset), CAST(N'2020-03-03T00:00:00.0000000-05:00' AS DateTimeOffset), N'Only For Family', 8, 1, N'ce42d94f-afd1-4865-ace9-5a6aea30e88d', CAST(10240.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[Property] ([PropertyId], [Status], [CreatedAt], [ModifiedAt], [Description], [AddressId], [TypeId], [UserId], [Prize], [Room]) VALUES (33, 1, CAST(N'2020-03-04T00:00:00.0000000-05:00' AS DateTimeOffset), CAST(N'2020-03-03T00:00:00.0000000-05:00' AS DateTimeOffset), N'Fully furnished', 8, 1, N'ce42d94f-afd1-4865-ace9-5a6aea30e88d', CAST(10560.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[Property] ([PropertyId], [Status], [CreatedAt], [ModifiedAt], [Description], [AddressId], [TypeId], [UserId], [Prize], [Room]) VALUES (34, 1, CAST(N'2020-03-04T00:00:00.0000000-05:00' AS DateTimeOffset), CAST(N'2020-03-03T00:00:00.0000000-05:00' AS DateTimeOffset), N'2 Car Parking', 8, 1, N'ce42d94f-afd1-4865-ace9-5a6aea30e88d', CAST(10880.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[Property] ([PropertyId], [Status], [CreatedAt], [ModifiedAt], [Description], [AddressId], [TypeId], [UserId], [Prize], [Room]) VALUES (35, 1, CAST(N'2020-03-04T00:00:00.0000000-05:00' AS DateTimeOffset), CAST(N'2020-03-03T00:00:00.0000000-05:00' AS DateTimeOffset), N'Only For Family', 8, 1, N'ce42d94f-afd1-4865-ace9-5a6aea30e88d', CAST(11200.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[Property] ([PropertyId], [Status], [CreatedAt], [ModifiedAt], [Description], [AddressId], [TypeId], [UserId], [Prize], [Room]) VALUES (36, 1, CAST(N'2020-03-04T00:00:00.0000000-05:00' AS DateTimeOffset), CAST(N'2020-03-03T00:00:00.0000000-05:00' AS DateTimeOffset), N'Only For Family', 8, 1, N'ce42d94f-afd1-4865-ace9-5a6aea30e88d', CAST(11520.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[Property] ([PropertyId], [Status], [CreatedAt], [ModifiedAt], [Description], [AddressId], [TypeId], [UserId], [Prize], [Room]) VALUES (37, 1, CAST(N'2020-03-04T00:00:00.0000000-05:00' AS DateTimeOffset), CAST(N'2020-03-03T00:00:00.0000000-05:00' AS DateTimeOffset), N'Only For Family', 8, 1, N'ce42d94f-afd1-4865-ace9-5a6aea30e88d', CAST(11840.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[Property] ([PropertyId], [Status], [CreatedAt], [ModifiedAt], [Description], [AddressId], [TypeId], [UserId], [Prize], [Room]) VALUES (38, 1, CAST(N'2020-03-04T00:00:00.0000000-05:00' AS DateTimeOffset), CAST(N'2020-03-03T00:00:00.0000000-05:00' AS DateTimeOffset), N'Only For Family', 8, 1, N'ce42d94f-afd1-4865-ace9-5a6aea30e88d', CAST(12160.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[Property] ([PropertyId], [Status], [CreatedAt], [ModifiedAt], [Description], [AddressId], [TypeId], [UserId], [Prize], [Room]) VALUES (39, 1, CAST(N'2020-03-04T00:00:00.0000000-05:00' AS DateTimeOffset), CAST(N'2020-03-03T00:00:00.0000000-05:00' AS DateTimeOffset), N'Fully furnished', 8, 1, N'ce42d94f-afd1-4865-ace9-5a6aea30e88d', CAST(12480.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[Property] ([PropertyId], [Status], [CreatedAt], [ModifiedAt], [Description], [AddressId], [TypeId], [UserId], [Prize], [Room]) VALUES (40, 1, CAST(N'2020-03-04T00:00:00.0000000-05:00' AS DateTimeOffset), CAST(N'2020-03-03T00:00:00.0000000-05:00' AS DateTimeOffset), N'2 Car Parking', 8, 1, N'ce42d94f-afd1-4865-ace9-5a6aea30e88d', CAST(12800.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[Property] ([PropertyId], [Status], [CreatedAt], [ModifiedAt], [Description], [AddressId], [TypeId], [UserId], [Prize], [Room]) VALUES (41, 1, CAST(N'2020-03-04T00:00:00.0000000-05:00' AS DateTimeOffset), CAST(N'2020-03-03T00:00:00.0000000-05:00' AS DateTimeOffset), N'Only For Family', 8, 1, N'ce42d94f-afd1-4865-ace9-5a6aea30e88d', CAST(13120.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[Property] ([PropertyId], [Status], [CreatedAt], [ModifiedAt], [Description], [AddressId], [TypeId], [UserId], [Prize], [Room]) VALUES (42, 1, CAST(N'2020-03-04T00:00:00.0000000-05:00' AS DateTimeOffset), CAST(N'2020-03-03T00:00:00.0000000-05:00' AS DateTimeOffset), N'Only For Family', 8, 1, N'ce42d94f-afd1-4865-ace9-5a6aea30e88d', CAST(13440.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[Property] ([PropertyId], [Status], [CreatedAt], [ModifiedAt], [Description], [AddressId], [TypeId], [UserId], [Prize], [Room]) VALUES (43, 1, CAST(N'2020-03-04T00:00:00.0000000-05:00' AS DateTimeOffset), CAST(N'2020-03-03T00:00:00.0000000-05:00' AS DateTimeOffset), N'Only For Family', 8, 1, N'ce42d94f-afd1-4865-ace9-5a6aea30e88d', CAST(13760.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[Property] ([PropertyId], [Status], [CreatedAt], [ModifiedAt], [Description], [AddressId], [TypeId], [UserId], [Prize], [Room]) VALUES (44, 1, CAST(N'2020-03-04T00:00:00.0000000-05:00' AS DateTimeOffset), CAST(N'2020-03-03T00:00:00.0000000-05:00' AS DateTimeOffset), N'Only For Family', 8, 1, N'ce42d94f-afd1-4865-ace9-5a6aea30e88d', CAST(14080.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[Property] ([PropertyId], [Status], [CreatedAt], [ModifiedAt], [Description], [AddressId], [TypeId], [UserId], [Prize], [Room]) VALUES (45, 1, CAST(N'2020-03-04T00:00:00.0000000-05:00' AS DateTimeOffset), CAST(N'2020-03-03T00:00:00.0000000-05:00' AS DateTimeOffset), N'Fully furnished', 8, 1, N'ce42d94f-afd1-4865-ace9-5a6aea30e88d', CAST(14400.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[Property] ([PropertyId], [Status], [CreatedAt], [ModifiedAt], [Description], [AddressId], [TypeId], [UserId], [Prize], [Room]) VALUES (46, 1, CAST(N'2020-03-04T00:00:00.0000000-05:00' AS DateTimeOffset), CAST(N'2020-03-03T00:00:00.0000000-05:00' AS DateTimeOffset), N'2 Car Parking', 8, 1, N'ce42d94f-afd1-4865-ace9-5a6aea30e88d', CAST(14720.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[Property] ([PropertyId], [Status], [CreatedAt], [ModifiedAt], [Description], [AddressId], [TypeId], [UserId], [Prize], [Room]) VALUES (47, 1, CAST(N'2020-03-04T00:00:00.0000000-05:00' AS DateTimeOffset), CAST(N'2020-03-03T00:00:00.0000000-05:00' AS DateTimeOffset), N'Only For Family', 8, 1, N'ce42d94f-afd1-4865-ace9-5a6aea30e88d', CAST(15040.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[Property] ([PropertyId], [Status], [CreatedAt], [ModifiedAt], [Description], [AddressId], [TypeId], [UserId], [Prize], [Room]) VALUES (48, 1, CAST(N'2020-03-04T00:00:00.0000000-05:00' AS DateTimeOffset), CAST(N'2020-03-03T00:00:00.0000000-05:00' AS DateTimeOffset), N'Only For Family', 8, 1, N'ce42d94f-afd1-4865-ace9-5a6aea30e88d', CAST(15360.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[Property] ([PropertyId], [Status], [CreatedAt], [ModifiedAt], [Description], [AddressId], [TypeId], [UserId], [Prize], [Room]) VALUES (49, 1, CAST(N'2020-03-04T00:00:00.0000000-05:00' AS DateTimeOffset), CAST(N'2020-03-03T00:00:00.0000000-05:00' AS DateTimeOffset), N'Only For Family', 8, 1, N'ce42d94f-afd1-4865-ace9-5a6aea30e88d', CAST(15680.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[Property] ([PropertyId], [Status], [CreatedAt], [ModifiedAt], [Description], [AddressId], [TypeId], [UserId], [Prize], [Room]) VALUES (50, 1, CAST(N'2020-03-04T00:00:00.0000000-05:00' AS DateTimeOffset), CAST(N'2020-03-03T00:00:00.0000000-05:00' AS DateTimeOffset), N'Only For Family', 8, 1, N'ce42d94f-afd1-4865-ace9-5a6aea30e88d', CAST(16000.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[Property] ([PropertyId], [Status], [CreatedAt], [ModifiedAt], [Description], [AddressId], [TypeId], [UserId], [Prize], [Room]) VALUES (57, 1, CAST(N'2020-08-30T18:26:09.0519339-04:00' AS DateTimeOffset), CAST(N'2020-08-30T18:26:09.0519339-04:00' AS DateTimeOffset), N'Not late then 9 PM', 3, 4, N'ce42d94f-afd1-4865-ace9-5a6aea30e88d', CAST(1000.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[Property] ([PropertyId], [Status], [CreatedAt], [ModifiedAt], [Description], [AddressId], [TypeId], [UserId], [Prize], [Room]) VALUES (58, 1, CAST(N'2020-08-30T18:34:05.9221418-04:00' AS DateTimeOffset), CAST(N'2020-08-30T18:34:05.9221418-04:00' AS DateTimeOffset), N'Not late then 9 PM', 3, 6, N'ce42d94f-afd1-4865-ace9-5a6aea30e88d', CAST(1000.00 AS Decimal(18, 2)), 2)
SET IDENTITY_INSERT [dbo].[Property] OFF
GO
SET IDENTITY_INSERT [dbo].[State] ON 

INSERT [dbo].[State] ([StateId], [Status], [CreatedAt], [ModifiedAt], [Name], [code]) VALUES (1, 1, CAST(N'2020-04-04T00:00:00.0000000-04:00' AS DateTimeOffset), CAST(N'2020-04-04T00:00:00.0000000-04:00' AS DateTimeOffset), N'Alberta', N'AB')
INSERT [dbo].[State] ([StateId], [Status], [CreatedAt], [ModifiedAt], [Name], [code]) VALUES (2, 1, CAST(N'2020-04-04T00:00:00.0000000-04:00' AS DateTimeOffset), CAST(N'2020-04-04T00:00:00.0000000-04:00' AS DateTimeOffset), N'British Columbia', N'BC')
INSERT [dbo].[State] ([StateId], [Status], [CreatedAt], [ModifiedAt], [Name], [code]) VALUES (3, 1, CAST(N'2020-04-04T00:00:00.0000000-04:00' AS DateTimeOffset), CAST(N'2020-04-04T00:00:00.0000000-04:00' AS DateTimeOffset), N'Manitoba', N'MB')
INSERT [dbo].[State] ([StateId], [Status], [CreatedAt], [ModifiedAt], [Name], [code]) VALUES (4, 1, CAST(N'2020-04-04T00:00:00.0000000-04:00' AS DateTimeOffset), CAST(N'2020-04-04T00:00:00.0000000-04:00' AS DateTimeOffset), N'New Brunswick', N'NB')
INSERT [dbo].[State] ([StateId], [Status], [CreatedAt], [ModifiedAt], [Name], [code]) VALUES (5, 1, CAST(N'2020-04-04T00:00:00.0000000-04:00' AS DateTimeOffset), CAST(N'2020-04-04T00:00:00.0000000-04:00' AS DateTimeOffset), N'Newfoundland and Labrador', N'NL')
INSERT [dbo].[State] ([StateId], [Status], [CreatedAt], [ModifiedAt], [Name], [code]) VALUES (6, 1, CAST(N'2020-04-04T00:00:00.0000000-04:00' AS DateTimeOffset), CAST(N'2020-04-04T00:00:00.0000000-04:00' AS DateTimeOffset), N'Nova Scotia', N'NS')
INSERT [dbo].[State] ([StateId], [Status], [CreatedAt], [ModifiedAt], [Name], [code]) VALUES (7, 1, CAST(N'2020-04-04T00:00:00.0000000-04:00' AS DateTimeOffset), CAST(N'2020-04-04T00:00:00.0000000-04:00' AS DateTimeOffset), N'Ontario', N'ON')
INSERT [dbo].[State] ([StateId], [Status], [CreatedAt], [ModifiedAt], [Name], [code]) VALUES (8, 1, CAST(N'2020-04-04T00:00:00.0000000-04:00' AS DateTimeOffset), CAST(N'2020-04-04T00:00:00.0000000-04:00' AS DateTimeOffset), N'Prince Edward Island', N'PE')
INSERT [dbo].[State] ([StateId], [Status], [CreatedAt], [ModifiedAt], [Name], [code]) VALUES (9, 1, CAST(N'2020-04-04T00:00:00.0000000-04:00' AS DateTimeOffset), CAST(N'2020-04-04T00:00:00.0000000-04:00' AS DateTimeOffset), N'Quebec', N'QC')
INSERT [dbo].[State] ([StateId], [Status], [CreatedAt], [ModifiedAt], [Name], [code]) VALUES (10, 1, CAST(N'2020-04-04T00:00:00.0000000-04:00' AS DateTimeOffset), CAST(N'2020-04-04T00:00:00.0000000-04:00' AS DateTimeOffset), N'Saskatchewan', N'SK')
SET IDENTITY_INSERT [dbo].[State] OFF
GO
SET IDENTITY_INSERT [dbo].[Type] ON 

INSERT [dbo].[Type] ([TypeId], [Status], [CreatedAt], [ModifiedAt], [Name], [Description]) VALUES (1, 1, CAST(N'2020-05-01T11:49:41.5147557-04:00' AS DateTimeOffset), CAST(N'2020-05-01T11:49:41.5147557-04:00' AS DateTimeOffset), N'Apartment', N'Apartment')
INSERT [dbo].[Type] ([TypeId], [Status], [CreatedAt], [ModifiedAt], [Name], [Description]) VALUES (2, 1, CAST(N'2020-05-01T11:49:41.5147557-04:00' AS DateTimeOffset), CAST(N'2020-05-01T11:49:41.5147557-04:00' AS DateTimeOffset), N'Basement', N'Basement')
INSERT [dbo].[Type] ([TypeId], [Status], [CreatedAt], [ModifiedAt], [Name], [Description]) VALUES (3, 1, CAST(N'2020-05-01T11:49:41.5147557-04:00' AS DateTimeOffset), CAST(N'2020-05-01T11:49:41.5147557-04:00' AS DateTimeOffset), N'Bungalow', N'Bungalow')
INSERT [dbo].[Type] ([TypeId], [Status], [CreatedAt], [ModifiedAt], [Name], [Description]) VALUES (4, 1, CAST(N'2020-05-01T11:49:41.5147557-04:00' AS DateTimeOffset), CAST(N'2020-05-01T11:49:41.5147557-04:00' AS DateTimeOffset), N'Condo', N'Condominium/Condo')
INSERT [dbo].[Type] ([TypeId], [Status], [CreatedAt], [ModifiedAt], [Name], [Description]) VALUES (5, 1, CAST(N'2020-05-01T11:49:41.5147557-04:00' AS DateTimeOffset), CAST(N'2020-05-01T11:49:41.5147557-04:00' AS DateTimeOffset), N'Cottage', N'Cottage')
INSERT [dbo].[Type] ([TypeId], [Status], [CreatedAt], [ModifiedAt], [Name], [Description]) VALUES (6, 1, CAST(N'2020-05-01T11:49:41.5147557-04:00' AS DateTimeOffset), CAST(N'2020-05-01T11:49:41.5147557-04:00' AS DateTimeOffset), N'Farmhouse', N'Farm House')
INSERT [dbo].[Type] ([TypeId], [Status], [CreatedAt], [ModifiedAt], [Name], [Description]) VALUES (7, 1, CAST(N'2020-05-01T11:49:41.5147557-04:00' AS DateTimeOffset), CAST(N'2020-05-01T11:49:41.5147557-04:00' AS DateTimeOffset), N'Flat', N'Flat')
INSERT [dbo].[Type] ([TypeId], [Status], [CreatedAt], [ModifiedAt], [Name], [Description]) VALUES (8, 1, CAST(N'2020-05-01T11:49:41.5147557-04:00' AS DateTimeOffset), CAST(N'2020-05-01T11:49:41.5147557-04:00' AS DateTimeOffset), N'Semi_detached', N'Semi Detached')
INSERT [dbo].[Type] ([TypeId], [Status], [CreatedAt], [ModifiedAt], [Name], [Description]) VALUES (9, 1, CAST(N'2020-05-01T11:49:41.5147557-04:00' AS DateTimeOffset), CAST(N'2020-05-01T11:49:41.5147557-04:00' AS DateTimeOffset), N'Detached', N'Single family home')
INSERT [dbo].[Type] ([TypeId], [Status], [CreatedAt], [ModifiedAt], [Name], [Description]) VALUES (10, 1, CAST(N'2020-05-01T11:49:41.5147557-04:00' AS DateTimeOffset), CAST(N'2020-05-01T11:49:41.5147557-04:00' AS DateTimeOffset), N'Townhouse', N'Town House')
SET IDENTITY_INSERT [dbo].[Type] OFF
GO
/****** Object:  Index [IX_Address_CityId]    Script Date: 01-09-2020 20:51:01 ******/
CREATE NONCLUSTERED INDEX [IX_Address_CityId] ON [dbo].[Address]
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 01-09-2020 20:51:01 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 01-09-2020 20:51:01 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 01-09-2020 20:51:01 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 01-09-2020 20:51:01 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 01-09-2020 20:51:01 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 01-09-2020 20:51:01 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 01-09-2020 20:51:01 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_City_StateId]    Script Date: 01-09-2020 20:51:01 ******/
CREATE NONCLUSTERED INDEX [IX_City_StateId] ON [dbo].[City]
(
	[StateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Image_PropertyId]    Script Date: 01-09-2020 20:51:01 ******/
CREATE NONCLUSTERED INDEX [IX_Image_PropertyId] ON [dbo].[Image]
(
	[PropertyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Property_AddressId]    Script Date: 01-09-2020 20:51:01 ******/
CREATE NONCLUSTERED INDEX [IX_Property_AddressId] ON [dbo].[Property]
(
	[AddressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Property_TypeId]    Script Date: 01-09-2020 20:51:01 ******/
CREATE NONCLUSTERED INDEX [IX_Property_TypeId] ON [dbo].[Property]
(
	[TypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Property_UserId]    Script Date: 01-09-2020 20:51:01 ******/
CREATE NONCLUSTERED INDEX [IX_Property_UserId] ON [dbo].[Property]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Property] ADD  DEFAULT ((0.0)) FOR [Prize]
GO
ALTER TABLE [dbo].[Property] ADD  DEFAULT ((0)) FOR [Room]
GO
ALTER TABLE [dbo].[State] ADD  DEFAULT (N'') FOR [code]
GO
ALTER TABLE [dbo].[Type] ADD  DEFAULT (CONVERT([bit],(1))) FOR [Status]
GO
ALTER TABLE [dbo].[Type] ADD  DEFAULT ('2020-06-10T15:05:46.8392216-04:00') FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Type] ADD  DEFAULT ('2020-06-10T15:05:46.8392216-04:00') FOR [ModifiedAt]
GO
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_City_CityId] FOREIGN KEY([CityId])
REFERENCES [dbo].[City] ([CityId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_City_CityId]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[City]  WITH CHECK ADD  CONSTRAINT [FK_City_State_StateId] FOREIGN KEY([StateId])
REFERENCES [dbo].[State] ([StateId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[City] CHECK CONSTRAINT [FK_City_State_StateId]
GO
ALTER TABLE [dbo].[Image]  WITH CHECK ADD  CONSTRAINT [FK_Image_Property_PropertyId] FOREIGN KEY([PropertyId])
REFERENCES [dbo].[Property] ([PropertyId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Image] CHECK CONSTRAINT [FK_Image_Property_PropertyId]
GO
ALTER TABLE [dbo].[Property]  WITH CHECK ADD  CONSTRAINT [FK_Property_Address_AddressId] FOREIGN KEY([AddressId])
REFERENCES [dbo].[Address] ([AddressId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Property] CHECK CONSTRAINT [FK_Property_Address_AddressId]
GO
ALTER TABLE [dbo].[Property]  WITH CHECK ADD  CONSTRAINT [FK_Property_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Property] CHECK CONSTRAINT [FK_Property_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Property]  WITH CHECK ADD  CONSTRAINT [FK_Property_Type_TypeId] FOREIGN KEY([TypeId])
REFERENCES [dbo].[Type] ([TypeId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Property] CHECK CONSTRAINT [FK_Property_Type_TypeId]
GO
USE [master]
GO
ALTER DATABASE [RealEstate] SET  READ_WRITE 
GO
