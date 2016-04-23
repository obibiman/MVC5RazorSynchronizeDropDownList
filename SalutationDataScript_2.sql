Use [Demo]
go

--Insert Salutation
Insert INTO [Salutation] 
	([Id], [Name]) Values (NEXT VALUE FOR dbo.SalutationSequence, 'Mr.')
Insert INTO [Salutation] 
	([Id], [Name]) Values (NEXT VALUE FOR dbo.SalutationSequence, 'Mrs.')
Insert INTO [Salutation] 
	([Id], [Name]) Values (NEXT VALUE FOR dbo.SalutationSequence, 'Dr.')
Insert INTO [Salutation] 
	([Id], [Name]) Values (NEXT VALUE FOR dbo.SalutationSequence, 'Miss')
Insert INTO [Salutation] 
	([Id], [Name]) Values (NEXT VALUE FOR dbo.SalutationSequence, 'Rev.')
Insert INTO [Salutation] 
	([Id], [Name]) Values (NEXT VALUE FOR dbo.SalutationSequence, 'Sen.')
Insert INTO [Salutation] 
	([Id], [Name]) Values (NEXT VALUE FOR dbo.SalutationSequence, 'Col.')
Insert INTO [Salutation] 
	([Id], [Name]) Values (NEXT VALUE FOR dbo.SalutationSequence, 'Lt.')
Insert INTO [Salutation] 
	([Id], [Name]) Values (NEXT VALUE FOR dbo.SalutationSequence, 'Sr.')
Insert INTO [Salutation] 
	([Id], [Name]) Values (NEXT VALUE FOR dbo.SalutationSequence, 'Sra.')
Insert INTO [Salutation] 
	([Id], [Name]) Values (NEXT VALUE FOR dbo.SalutationSequence, 'Srta.')	


--Insert Country
Insert INTO [Country] 
([Id], [Name]) Values (NEXT VALUE FOR dbo.CountrySequence, 'United States')
Insert INTO [Country] 
([Id], [Name]) Values (NEXT VALUE FOR dbo.CountrySequence, 'Mexico')
Insert INTO [Country] 
([Id], [Name]) Values (NEXT VALUE FOR dbo.CountrySequence, 'Canada')