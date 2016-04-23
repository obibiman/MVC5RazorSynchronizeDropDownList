Use [Demo]
GO

DECLARE @UnitedStatesCountryId INT
DECLARE @CanadaCountryId INT
DECLARE @MexicoCountryId INT
--DECLARE @StateId INT

DECLARE @Mr INT
DECLARE @Mrs INT
DECLARE @Dr INT
DECLARE @Miss INT
DECLARE @Rev INT
DECLARE @Sen INT
DECLARE @Col INT
DECLARE @Lt INT
DECLARE @Sgt INT
DECLARE @Sr INT
DECLARE @Sra INT
DECLARE @Srta INT
SELECT @Mr = [Id] from [Salutation] where [Name] = 'Mr.'
SELECT @Mrs = [Id] from [Salutation] where [Name] = 'Mrs.'
SELECT @Dr = [Id] from [Salutation] where [Name] = 'Dr.'
SELECT @Miss = [Id] from [Salutation] where [Name] = 'Miss.'
SELECT @Rev = [Id] from [Salutation] where [Name] = 'Rev.'
SELECT @Sen = [Id] from [Salutation] where [Name] = 'Sen.'
SELECT @Col = [Id] from [Salutation] where [Name] = 'Col.'
SELECT @Lt = [Id] from [Salutation] where [Name] = 'Lt.'
SELECT @Sgt = [Id] from [Salutation] where [Name] = 'Sgt.'
SELECT @Sr = [Id] from [Salutation] where [Name] = 'Sr.'
SELECT @Sra = [Id] from [Salutation] where [Name] = 'Sra.'
SELECT @Srta = [Id] from [Salutation] where [Name] = 'Srta.'
--

SELECT @MexicoCountryId = [Id] from [Country] where [Name] = 'Mexico'
SELECT @UnitedStatesCountryId = [Id] from [Country] where [Name] = 'United States'
SELECT @CanadaCountryId = [Id] from [Country] where [Name] = 'Canada'


--USA
INSERT INTO [dbo].[Customer] ([Id], [SalutationId],[FirstName],[LastName],[Street1],[Street2],[City],[StateCode],[PostalCode],[PhoneNumber],[CountryId])
VALUES (NEXT VALUE FOR dbo.CustomerSequence, @Mr, 'Richard','Perry','123 Lavaca Street','Suite 234 B','Austin','TX','77364','522-453-4546',@UnitedStatesCountryId)
--GO
INSERT INTO [dbo].[Customer] ([Id], [SalutationId],[FirstName],[LastName],[Street1],[Street2],[City],[StateCode],[PostalCode],[PhoneNumber],[CountryId])
VALUES (NEXT VALUE FOR dbo.CustomerSequence, @Miss, 'Brenda','Perriloux','Box 976','Route 29','Utopia','TX','67464','253-453-4532',@UnitedStatesCountryId)
--GO
INSERT INTO [dbo].[Customer] ([Id], [SalutationId],[FirstName],[LastName],[Street1],[Street2],[City],[StateCode],[PostalCode],[PhoneNumber],[CountryId])
VALUES (NEXT VALUE FOR dbo.CustomerSequence, @Mrs, 'Michelle','Cox','243 Elm Street','Apt 9A','Garden City','TN','76453','835-903-1325',@UnitedStatesCountryId)
--GO
INSERT INTO [dbo].[Customer] ([Id], [SalutationId],[FirstName],[LastName],[Street1],[Street2],[City],[StateCode],[PostalCode],[PhoneNumber],[CountryId])
VALUES (NEXT VALUE FOR dbo.CustomerSequence, @Dr, 'Nigel','Baker','16106 South Congress Avenue','Suite 67','Houston','TX','77098','510-312-6711',@UnitedStatesCountryId)
--GO
INSERT INTO [dbo].[Customer] ([Id], [SalutationId],[FirstName],[LastName],[Street1],[Street2],[City],[StateCode],[PostalCode],[PhoneNumber],[CountryId])
VALUES (NEXT VALUE FOR dbo.CustomerSequence, @Lt, 'Charmaine','Landry','876 Airport Boulevard','','Dallas','TX','78234','71-563-6415',@UnitedStatesCountryId)
--GO
INSERT INTO [dbo].[Customer] ([Id], [SalutationId],[FirstName],[LastName],[Street1],[Street2],[City],[StateCode],[PostalCode],[PhoneNumber],[CountryId])
VALUES (NEXT VALUE FOR dbo.CustomerSequence, @Rev, 'Susan','Wang-Chen','1903 East Rutland Drive','Apt 134','Seattle','WA','54329','453-631-9036',@UnitedStatesCountryId)
--GO
INSERT INTO [dbo].[Customer] ([Id], [SalutationId],[FirstName],[LastName],[Street1],[Street2],[City],[StateCode],[PostalCode],[PhoneNumber],[CountryId])
VALUES (NEXT VALUE FOR dbo.CustomerSequence, @Col, 'Janet','Leeds','1906 Thibodaux Avenue','Apt 34B','Houma','LA','70345','514-453-3413',@UnitedStatesCountryId)
--GO
INSERT INTO [dbo].[Customer] ([Id], [SalutationId],[FirstName],[LastName],[Street1],[Street2],[City],[StateCode],[PostalCode],[PhoneNumber],[CountryId])
VALUES (NEXT VALUE FOR dbo.CustomerSequence, @Sgt, 'Will','Jackson','230 St. Marys Blvd','Apt 41','Idaho Falls','ID','99845','674-056-2341',@UnitedStatesCountryId)
--GO
INSERT INTO [dbo].[Customer] ([Id], [SalutationId],[FirstName],[LastName],[Street1],[Street2],[City],[StateCode],[PostalCode],[PhoneNumber],[CountryId])
VALUES (NEXT VALUE FOR dbo.CustomerSequence, @Sgt, 'Alexander','McCombs','1109 South Alamo','','San Ysidro','CA','76890','694-686-2031',@UnitedStatesCountryId)
--GO
--Mexico
INSERT INTO [dbo].[Customer] ([Id], [SalutationId],[FirstName],[LastName],[Street1],[Street2],[City],[StateCode],[PostalCode],[PhoneNumber],[CountryId])
VALUES (NEXT VALUE FOR dbo.CustomerSequence, @Sr, 'Ricardo','DeLeon','123 Mexicali Street','Suite 234 B','Cuernavaca','Agua','444333','522-453-4546',@MexicoCountryId)
--GO
INSERT INTO [dbo].[Customer] ([Id], [SalutationId],[FirstName],[LastName],[Street1],[Street2],[City],[StateCode],[PostalCode],[PhoneNumber],[CountryId])
VALUES (NEXT VALUE FOR dbo.CustomerSequence, @Sr, 'Richardo','Seguin','123 Lavaca Street','Suite 234 B','Hermosillo','Sono','77364','522-453-4546',@MexicoCountryId)
--GO
INSERT INTO [dbo].[Customer] ([Id], [SalutationId],[FirstName],[LastName],[Street1],[Street2],[City],[StateCode],[PostalCode],[PhoneNumber],[CountryId])
VALUES (NEXT VALUE FOR dbo.CustomerSequence, @Sr, 'Jorge','Garcia','123 Lavaca Street','Suite 234 B','Durango','Dura','77364','522-453-4546',@MexicoCountryId)
--GO
INSERT INTO [dbo].[Customer] ([Id], [SalutationId],[FirstName],[LastName],[Street1],[Street2],[City],[StateCode],[PostalCode],[PhoneNumber],[CountryId])
VALUES (NEXT VALUE FOR dbo.CustomerSequence, @Sra, 'Gricelda','DeLaGarza','123 Lavaca Street','Suite 234 B','Saltillo','Coah','77364','522-453-4546',@MexicoCountryId)
--GO
INSERT INTO [dbo].[Customer] ([Id], [SalutationId],[FirstName],[LastName],[Street1],[Street2],[City],[StateCode],[PostalCode],[PhoneNumber],[CountryId])
VALUES (NEXT VALUE FOR dbo.CustomerSequence, @Srta, 'Lorena','DeJesus','123 Lavaca Street','Suite 234 B','Zacatecas','Zaca','77364','522-453-4546',@MexicoCountryId)
--GO
INSERT INTO [dbo].[Customer] ([Id], [SalutationId],[FirstName],[LastName],[Street1],[Street2],[City],[StateCode],[PostalCode],[PhoneNumber],[CountryId])
VALUES (NEXT VALUE FOR dbo.CustomerSequence, @Mr, 'Mario','Hinojosa','123 Lavaca Street','Suite 234 B','Colima','Coli','77364','522-453-4546',@MexicoCountryId)
--GO
--Canada
INSERT INTO [dbo].[Customer] ([Id], [SalutationId],[FirstName],[LastName],[Street1],[Street2],[City],[StateCode],[PostalCode],[PhoneNumber],[CountryId])
VALUES (NEXT VALUE FOR dbo.CustomerSequence, @Mrs, 'Lara','Michaels','123 Mexicali Street','Suite 234 B','Toronto','ON','444333','522-453-4546',@CanadaCountryId)
--GO
INSERT INTO [dbo].[Customer] ([Id], [SalutationId],[FirstName],[LastName],[Street1],[Street2],[City],[StateCode],[PostalCode],[PhoneNumber],[CountryId])
VALUES (NEXT VALUE FOR dbo.CustomerSequence, @Mr, 'Rich','Nunez','123 Lavaca Street','Suite 234 B','Charlottetown','PE','77364','522-453-4546',@CanadaCountryId)
--GO
INSERT INTO [dbo].[Customer] ([Id], [SalutationId],[FirstName],[LastName],[Street1],[Street2],[City],[StateCode],[PostalCode],[PhoneNumber],[CountryId])
VALUES (NEXT VALUE FOR dbo.CustomerSequence, @Mr, 'Ajay','Kumar','123 Lavaca Street','Suite 234 B','Vancouver','BC','77364','522-453-4546',@CanadaCountryId)
--GO
INSERT INTO [dbo].[Customer] ([Id], [SalutationId],[FirstName],[LastName],[Street1],[Street2],[City],[StateCode],[PostalCode],[PhoneNumber],[CountryId])
VALUES (NEXT VALUE FOR dbo.CustomerSequence, @Miss, 'Patricia','Nguyen','123 Lavaca Street','Suite 234 B','Quebec City','QC','77364','522-453-4546',@CanadaCountryId)
--GO
INSERT INTO [dbo].[Customer] ([Id], [SalutationId],[FirstName],[LastName],[Street1],[Street2],[City],[StateCode],[PostalCode],[PhoneNumber],[CountryId])
VALUES (NEXT VALUE FOR dbo.CustomerSequence, @Mrs, 'Kelly','Little','123 Lavaca Street','Suite 234 B','Regina','SK','77364','522-453-4546',@CanadaCountryId)
--GO
INSERT INTO [dbo].[Customer] ([Id], [SalutationId],[FirstName],[LastName],[Street1],[Street2],[City],[StateCode],[PostalCode],[PhoneNumber],[CountryId])
VALUES (NEXT VALUE FOR dbo.CustomerSequence, @Sgt, 'Mara','Ball','123 Lavaca Street','Suite 234 B','Halifax','NS','77364','522-453-4546',@CanadaCountryId)
--GO

SELECT * FROM Customer
