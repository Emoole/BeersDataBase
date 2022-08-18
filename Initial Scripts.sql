--Firstable, We need create the Database 'BEERDB'
  CREATE DATABASE BEERSDB

--Then, create the tables os this database
--Create the first table: Beers
 USE BEERSDB
  SET ANSI_NULLS ON
  GO

  SET QUOTED_IDENTIFIER ON
  GO

  CREATE TABLE [dbo].[Beers](
    [BeerId] [int] IDENTITY(1,1) NOT NULL,
    [BrandId] [int] NOT NULL,
    [BeerName] [varchar](250) NULL,
    [CreatedDate] [datetime] NULL,
    [CreatedBy] [nvarchar](100) NULL,
    [UpdatedDate] [datetime] NULL,
    [UpdatedBy] [nvarchar](100) NULL,
    [ComputerId] [nvarchar](100) NULL,
    [ApplicationId] [smallint] NULL,
   CONSTRAINT [PK_Beers] PRIMARY KEY CLUSTERED 
  (
    [BeerId] ASC
  )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
  ) ON [PRIMARY]
  GO

 --Another table: Brands
  SET ANSI_NULLS ON
  GO

  SET QUOTED_IDENTIFIER ON
  GO
 
  CREATE TABLE [dbo].[Brands](
    [BrandId] [int] IDENTITY(1,1) NOT NULL,
    [BrandName] [varchar](250) NULL,
    [Brandtype] [varchar](100) NULL,
    [CreatedDate] [datetime] NULL,
    [CreatedBy] [nvarchar](100) NULL,
    [UpdatedDate] [datetime] NULL,
    [UpdatedBy] [nvarchar](100) NULL,
    [ComputerId] [nvarchar](100) NULL,
    [ApplicationId] [smallint] NULL,
   CONSTRAINT [PK_Brands] PRIMARY KEY CLUSTERED 
  (
    [BrandId] ASC
  )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
  ) ON [PRIMARY]
GO

 --And, we need create the last table: Resume
  SET ANSI_NULLS ON
  GO

  SET QUOTED_IDENTIFIER ON
  GO
  CREATE TABLE [dbo].[Resume](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BrandId] [int] NOT NULL,
	[BeerId] [int] NOT NULL,
	[BrandName] [varchar](250) NOT NULL,
	[BrandType] [varchar](250) NOT NULL,
	[BeerName] [varchar](250) NOT NULL
  ) ON [PRIMARY]
  GO