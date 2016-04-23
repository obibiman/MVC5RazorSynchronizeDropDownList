Use [Demo]
GO

DECLARE @MexicoCountryId INT
DECLARE @UnitedStatesCountryId INT
DECLARE @CanadaCountryId INT


SELECT @MexicoCountryId = [Id] from [Country] where [Name] = 'Mexico'
SELECT @UnitedStatesCountryId = [Id] from [Country] where [Name] = 'United States'
SELECT @CanadaCountryId = [Id] from [Country] where [Name] = 'Canada'

--Insert State
--MEXICO
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('Aguascalientes', 'Agua', @MexicoCountryId)
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('Campeche', 'Camp', @MexicoCountryId)
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('Chiapas', 'Chia', @MexicoCountryId)
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('Chihuahua', 'Chia', @MexicoCountryId)
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('Coahuila', 'Coah', @MexicoCountryId)
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('Colima', 'Coli', @MexicoCountryId)
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('Durango', 'Dura', @MexicoCountryId)
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('Jalisco', 'Jali', @MexicoCountryId)
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('Hidalgo', 'Hida', @MexicoCountryId)
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('Puebla', 'Pueb', @MexicoCountryId)	
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('Sonora', 'Sono', @MexicoCountryId)
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('Sinaloa', 'Sina', @MexicoCountryId)
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('Zacatecas', 'Zaca', @MexicoCountryId)
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('Tabasco', 'Taba', @MexicoCountryId)
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('Tamaulipas', 'Tama', @MexicoCountryId)	

--USA
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('Alaska', 'AK', @UnitedStatesCountryId)
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('Alabama', 'AL', @UnitedStatesCountryId)
	Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('Arizona', 'AZ', @UnitedStatesCountryId)
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('Arkansas', 'AR', @UnitedStatesCountryId)
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('California', 'CA', @UnitedStatesCountryId)
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('Colorado', 'CO', @UnitedStatesCountryId)
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('Cunnecticut', 'CT', @UnitedStatesCountryId)
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('Florida', 'FL', @UnitedStatesCountryId)
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('Georgia', 'GA', @UnitedStatesCountryId)
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('Hawaii', 'HI', @UnitedStatesCountryId)
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('New United States', 'NM', @UnitedStatesCountryId)	
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('New York', 'NY', @UnitedStatesCountryId)
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('New Jersey', 'NJ', @UnitedStatesCountryId)
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('Louisiana', 'LA', @UnitedStatesCountryId)
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('Oklahoma', 'OK', @UnitedStatesCountryId)
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('Texas', 'TX', @UnitedStatesCountryId)	
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('Utah', 'UT', @UnitedStatesCountryId)	
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('Idaho', 'ID', @UnitedStatesCountryId)
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('Montana', 'MT', @UnitedStatesCountryId)
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('Oregon', 'OR', @UnitedStatesCountryId)
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('South Dakota', 'SD', @UnitedStatesCountryId)
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('North Dakota', 'ND', @UnitedStatesCountryId)	
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('Maine', 'ME', @UnitedStatesCountryId)	
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('Pennsylvania', 'PA', @UnitedStatesCountryId)
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('Virginia', 'VA', @UnitedStatesCountryId)
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('West Virginia', 'WV', @UnitedStatesCountryId)
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('Missouri', 'MO', @UnitedStatesCountryId)
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('Kansas', 'KS', @UnitedStatesCountryId)	
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('Nebraska', 'NE', @UnitedStatesCountryId)	
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('Massachusetts', 'MA', @UnitedStatesCountryId)
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('Delaware', 'DE', @UnitedStatesCountryId)
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('New Hampshire', 'NH', @UnitedStatesCountryId)
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('Iowa', 'IA', @UnitedStatesCountryId)
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('Ohio', 'OH', @UnitedStatesCountryId)		
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('Micgigan', 'MI', @UnitedStatesCountryId)	
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('Indiana', 'IN', @UnitedStatesCountryId)
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('Minnesona', 'MN', @UnitedStatesCountryId)
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('Illinois', 'IL', @UnitedStatesCountryId)
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('Nevada', 'NV', @UnitedStatesCountryId)
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('Maryland', 'MD', @UnitedStatesCountryId)	
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('Tennessee', 'TN', @UnitedStatesCountryId)
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('Kentucky', 'KY', @UnitedStatesCountryId)
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('Mississippi', 'MS', @UnitedStatesCountryId)	
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('South Carolina', 'SC', @UnitedStatesCountryId)	
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('North Carolina', 'NC', @UnitedStatesCountryId)
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('Vermont', 'VT', @UnitedStatesCountryId)
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('Wisconsin', 'WI', @UnitedStatesCountryId)
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('Rhode Island', 'RI', @UnitedStatesCountryId)
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('Wyoming', 'WY', @UnitedStatesCountryId)	
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('Washington', 'WA', @UnitedStatesCountryId)
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('Washington DC', 'DC', @UnitedStatesCountryId)	
--Canada
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('Ontario', 'ON', @CanadaCountryId)
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('Quebec', 'QC', @CanadaCountryId)
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('Nova Scotia', 'NS', @CanadaCountryId)
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('New Brunswick', 'NB', @CanadaCountryId)
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('Manitoba', 'MB', @CanadaCountryId)
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('British Columbia', 'BC', @CanadaCountryId)
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('Prince Edward Island', 'PE', @CanadaCountryId)
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('Saskatchewan', 'SK', @CanadaCountryId)
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('Alberta', 'AB', @CanadaCountryId)
Insert INTO [State] 
	([Name], [Code], [CountryId]) Values ('Newfoundland and Labrador', 'NL', @CanadaCountryId)	