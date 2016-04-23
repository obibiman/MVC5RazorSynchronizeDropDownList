Use [Demo]
GO

DECLARE @MexicoCountryId INT
DECLARE @UnitedStatesCountryId INT
DECLARE @CanadaCountryId INT
DECLARE @StateId INT

SELECT @StateId = NEXT VALUE FOR dbo.StateSequence
SELECT @MexicoCountryId = [Id] from [Country] where [Name] = 'Mexico'
SELECT @UnitedStatesCountryId = [Id] from [Country] where [Name] = 'United States'
SELECT @CanadaCountryId = [Id] from [Country] where [Name] = 'Canada'

--Insert State
--MEXICO
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'Aguascalientes', 'Agua', @MexicoCountryId)
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'Campeche', 'Camp', @MexicoCountryId)
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'Chiapas', 'Chia', @MexicoCountryId)
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'Chihuahua', 'Chia', @MexicoCountryId)
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'Coahuila', 'Coah', @MexicoCountryId)
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'Colima', 'Coli', @MexicoCountryId)
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'Durango', 'Dura', @MexicoCountryId)
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'Jalisco', 'Jali', @MexicoCountryId)
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'Hidalgo', 'Hida', @MexicoCountryId)
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'Puebla', 'Pueb', @MexicoCountryId)	
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'Sonora', 'Sono', @MexicoCountryId)
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'Sinaloa', 'Sina', @MexicoCountryId)
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'Zacatecas', 'Zaca', @MexicoCountryId)
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'Tabasco', 'Taba', @MexicoCountryId)
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'Tamaulipas', 'Tama', @MexicoCountryId)	

--USA
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'Alaska', 'AK', @UnitedStatesCountryId)
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'Alabama', 'AL', @UnitedStatesCountryId)
	Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'Arizona', 'AZ', @UnitedStatesCountryId)
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'Arkansas', 'AR', @UnitedStatesCountryId)
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'California', 'CA', @UnitedStatesCountryId)
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'Colorado', 'CO', @UnitedStatesCountryId)
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'Cunnecticut', 'CT', @UnitedStatesCountryId)
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'Florida', 'FL', @UnitedStatesCountryId)
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'Georgia', 'GA', @UnitedStatesCountryId)
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'Hawaii', 'HI', @UnitedStatesCountryId)
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'New United States', 'NM', @UnitedStatesCountryId)	
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'New York', 'NY', @UnitedStatesCountryId)
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'New Jersey', 'NJ', @UnitedStatesCountryId)
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'Louisiana', 'LA', @UnitedStatesCountryId)
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'Oklahoma', 'OK', @UnitedStatesCountryId)
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'Texas', 'TX', @UnitedStatesCountryId)	
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'Utah', 'UT', @UnitedStatesCountryId)	
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'Idaho', 'ID', @UnitedStatesCountryId)
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'Montana', 'MT', @UnitedStatesCountryId)
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'Oregon', 'OR', @UnitedStatesCountryId)
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'South Dakota', 'SD', @UnitedStatesCountryId)
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'North Dakota', 'ND', @UnitedStatesCountryId)	
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'Maine', 'ME', @UnitedStatesCountryId)	
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'Pennsylvania', 'PA', @UnitedStatesCountryId)
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'Virginia', 'VA', @UnitedStatesCountryId)
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'West Virginia', 'WV', @UnitedStatesCountryId)
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'Missouri', 'MO', @UnitedStatesCountryId)
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'Kansas', 'KS', @UnitedStatesCountryId)	
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'Nebraska', 'NE', @UnitedStatesCountryId)	
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'Massachusetts', 'MA', @UnitedStatesCountryId)
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'Delaware', 'DE', @UnitedStatesCountryId)
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'New Hampshire', 'NH', @UnitedStatesCountryId)
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'Iowa', 'IA', @UnitedStatesCountryId)
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'Ohio', 'OH', @UnitedStatesCountryId)		
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'Micgigan', 'MI', @UnitedStatesCountryId)	
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'Indiana', 'IN', @UnitedStatesCountryId)
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'Minnesona', 'MN', @UnitedStatesCountryId)
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'Illinois', 'IL', @UnitedStatesCountryId)
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'Nevada', 'NV', @UnitedStatesCountryId)
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'Maryland', 'MD', @UnitedStatesCountryId)	
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'Tennessee', 'TN', @UnitedStatesCountryId)
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'Kentucky', 'KY', @UnitedStatesCountryId)
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'Mississippi', 'MS', @UnitedStatesCountryId)	
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'South Carolina', 'SC', @UnitedStatesCountryId)	
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'North Carolina', 'NC', @UnitedStatesCountryId)
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'Vermont', 'VT', @UnitedStatesCountryId)
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'Wisconsin', 'WI', @UnitedStatesCountryId)
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'Rhode Island', 'RI', @UnitedStatesCountryId)
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'Wyoming', 'WY', @UnitedStatesCountryId)	
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'Washington', 'WA', @UnitedStatesCountryId)
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'Washington DC', 'DC', @UnitedStatesCountryId)	
--Canada
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'Ontario', 'ON', @CanadaCountryId)
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'Quebec', 'QC', @CanadaCountryId)
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'Nova Scotia', 'NS', @CanadaCountryId)
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'New Brunswick', 'NB', @CanadaCountryId)
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'Manitoba', 'MB', @CanadaCountryId)
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'British Columbia', 'BC', @CanadaCountryId)
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'Prince Edward Island', 'PE', @CanadaCountryId)
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'Saskatchewan', 'SK', @CanadaCountryId)
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'Alberta', 'AB', @CanadaCountryId)
Insert INTO [State] 
	([Id], [Name], [Code], [CountryId]) Values (NEXT VALUE  FOR dbo.StateSequence, 'Newfoundland and Labrador', 'NL', @CanadaCountryId)	