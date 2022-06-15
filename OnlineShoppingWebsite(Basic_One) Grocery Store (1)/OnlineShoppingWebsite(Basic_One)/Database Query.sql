Create Database Organic

USE Organic

CREATE TABLE [dbo].[CardDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Fname] [varchar](50) NOT NULL,
	[Lname] [varchar](50) NOT NULL,
	[CardNo] [bigint] NOT NULL,
	[ExpiryDate] [int] NOT NULL,
	[CVV] [int] NOT NULL,
	[BillingAddr] [varchar](max) NOT NULL,
 CONSTRAINT [PK_CardDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
))

CREATE TABLE [dbo].[CartDetails](
	[sno] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Pname] [varchar](50) NOT NULL,
	[Pdesc] [varchar](max) NOT NULL,
	[Pimage] [varchar](max) NOT NULL,
	[Pprice] [int] NOT NULL,
	[Pquantity] [int] NOT NULL,
	[Pcategory] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL
)

CREATE TABLE [dbo].[Category](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
))
CREATE TABLE [dbo].[ContactUs](
	[Name] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Subject] [varchar](max) NOT NULL,
	[Comments] [varchar](max) NOT NULL
)

CREATE TABLE [dbo].[OrderDetails](
	[orderid] [varchar](max) NOT NULL,
	[sno] [int] NOT NULL,
	[productid] [int] NOT NULL,
	[productname] [varchar](50) NOT NULL,
	[price] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[orderdate] [varchar](50) NOT NULL,
	[status] [varchar](50) NULL,
	[email] [varchar](50) NULL
)

CREATE TABLE [dbo].[Product1](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[Pname] [varchar](50) NOT NULL,
	[Pdesc] [varchar](max) NOT NULL,
	[Pimage] [varchar](max) NOT NULL,
	[Pprice] [int] NOT NULL,
	[Pquantity] [int] NOT NULL,
	[Pcategory] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Product1] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
))

CREATE TABLE [dbo].[Record](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Fname] [varchar](50) NOT NULL,
	[Lname] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Gender] [varchar](50) NOT NULL,
	[Address] [varchar](max) NOT NULL,
	[Phone] [bigint] NOT NULL,
	[Password] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Record] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
))

