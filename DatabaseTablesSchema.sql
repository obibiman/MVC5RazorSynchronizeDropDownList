USE Master
GO

Create Database [Demo]
go

USE [Demo]
GO

Create Table [Salutation]
(
   Id INT Not Null PRIMARY KEY IDENTITY,
   Name NvarChar (50) 
)
GO

Create Table [Country]
(
   Id INT Not Null PRIMARY KEY IDENTITY,
   Name NvarChar (50) 
)
GO

Create Table [State]
(
	Id INT Not Null PRIMARY KEY IDENTITY,
	Name NvarChar (50) ,
	Code NvarChar(10) NOT Null,
	CountryId INT NOT Null Constraint FK_STATE_COUNTRY_ID Foreign Key References Country (ID)		 
)
GO


Create Table [Customer]
(
	Id INT Not Null PRIMARY KEY IDENTITY,
	SalutationId INT Null ,
	FirstName NvarChar (50),
	LastName NvarChar (50),
	Street1 NvarChar(200),
	Street2 NvarChar(200),
	City NvarChar(50), 
	StateCode NvarChar(25),
	PostalCode NvarChar(20),
	PhoneNumber NvarChar(25),
	CountryId INT NOT Null Constraint FK_CUSTOMER_COUNTRY_ID Foreign Key References Country (ID)		 
)
GO