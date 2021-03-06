use [Demo]
go

CREATE SEQUENCE [dbo].[CountrySequence] 
 AS [int]
 START WITH 200
 INCREMENT BY 100
 MINVALUE -2147483648
 MAXVALUE 2147483647
 CACHE 
GO
use [Demo]
GO

CREATE SEQUENCE [dbo].[CustomerSequence] 
 AS [int]
 START WITH 500
 INCREMENT BY 10
 MINVALUE -2147483648
 MAXVALUE 2147483647
 CACHE 
GO
use [Demo]
GO

CREATE SEQUENCE [dbo].[SalutationSequence] 
 AS [int]
 START WITH 300
 INCREMENT BY 100
 MINVALUE -2147483648
 MAXVALUE 2147483647
 CACHE 
GO
use [Demo]
GO

CREATE SEQUENCE [dbo].[StateSequence] 
 AS [int]
 START WITH 400
 INCREMENT BY 10
 MINVALUE -2147483648
 MAXVALUE 2147483647
 CACHE 
GO
