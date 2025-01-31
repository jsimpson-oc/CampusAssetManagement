/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------


*/

INSERT INTO [dbo].[Country] (CountryName, CountryCode) VALUES 
    ('United States', 'USA'),
    ('Canada', 'CAN'),
    ('Mexico', 'MEX');

    -- Insert US States
INSERT INTO [dbo].[State] (StateName, StateCode, CountryID) VALUES 
    ('Alabama', 'AL', (SELECT CountryID FROM Country WHERE CountryCode = 'USA')),
    ('Alaska', 'AK', (SELECT CountryID FROM Country WHERE CountryCode = 'USA')),
    ('Arizona', 'AZ', (SELECT CountryID FROM Country WHERE CountryCode = 'USA')),
    ('Arkansas', 'AR', (SELECT CountryID FROM Country WHERE CountryCode = 'USA')),
    ('California', 'CA', (SELECT CountryID FROM Country WHERE CountryCode = 'USA')),
    ('Colorado', 'CO', (SELECT CountryID FROM Country WHERE CountryCode = 'USA')),
    ('Connecticut', 'CT', (SELECT CountryID FROM Country WHERE CountryCode = 'USA')),
    ('Delaware', 'DE', (SELECT CountryID FROM Country WHERE CountryCode = 'USA')),
    ('Florida', 'FL', (SELECT CountryID FROM Country WHERE CountryCode = 'USA')),
    ('Georgia', 'GA', (SELECT CountryID FROM Country WHERE CountryCode = 'USA')),
    ('Hawaii', 'HI', (SELECT CountryID FROM Country WHERE CountryCode = 'USA')),
    ('Idaho', 'ID', (SELECT CountryID FROM Country WHERE CountryCode = 'USA')),
    ('Illinois', 'IL', (SELECT CountryID FROM Country WHERE CountryCode = 'USA')),
    ('Indiana', 'IN', (SELECT CountryID FROM Country WHERE CountryCode = 'USA')),
    ('Iowa', 'IA', (SELECT CountryID FROM Country WHERE CountryCode = 'USA')),
    ('Kansas', 'KS', (SELECT CountryID FROM Country WHERE CountryCode = 'USA')),
    ('Kentucky', 'KY', (SELECT CountryID FROM Country WHERE CountryCode = 'USA')),
    ('Louisiana', 'LA', (SELECT CountryID FROM Country WHERE CountryCode = 'USA')),
    ('Maine', 'ME', (SELECT CountryID FROM Country WHERE CountryCode = 'USA')),
    ('Maryland', 'MD', (SELECT CountryID FROM Country WHERE CountryCode = 'USA')),
    ('Massachusetts', 'MA', (SELECT CountryID FROM Country WHERE CountryCode = 'USA')),
    ('Michigan', 'MI', (SELECT CountryID FROM Country WHERE CountryCode = 'USA')),
    ('Minnesota', 'MN', (SELECT CountryID FROM Country WHERE CountryCode = 'USA')),
    ('Mississippi', 'MS', (SELECT CountryID FROM Country WHERE CountryCode = 'USA')),
    ('Missouri', 'MO', (SELECT CountryID FROM Country WHERE CountryCode = 'USA')),
    ('Montana', 'MT', (SELECT CountryID FROM Country WHERE CountryCode = 'USA')),
    ('Nebraska', 'NE', (SELECT CountryID FROM Country WHERE CountryCode = 'USA')),
    ('Nevada', 'NV', (SELECT CountryID FROM Country WHERE CountryCode = 'USA')),
    ('New Hampshire', 'NH', (SELECT CountryID FROM Country WHERE CountryCode = 'USA')),
    ('New Jersey', 'NJ', (SELECT CountryID FROM Country WHERE CountryCode = 'USA')),
    ('New Mexico', 'NM', (SELECT CountryID FROM Country WHERE CountryCode = 'USA')),
    ('New York', 'NY', (SELECT CountryID FROM Country WHERE CountryCode = 'USA')),
    ('North Carolina', 'NC', (SELECT CountryID FROM Country WHERE CountryCode = 'USA')),
    ('North Dakota', 'ND', (SELECT CountryID FROM Country WHERE CountryCode = 'USA')),
    ('Ohio', 'OH', (SELECT CountryID FROM Country WHERE CountryCode = 'USA')),
    ('Oklahoma', 'OK', (SELECT CountryID FROM Country WHERE CountryCode = 'USA')),
    ('Oregon', 'OR', (SELECT CountryID FROM Country WHERE CountryCode = 'USA')),
    ('Pennsylvania', 'PA', (SELECT CountryID FROM Country WHERE CountryCode = 'USA')),
    ('Rhode Island', 'RI', (SELECT CountryID FROM Country WHERE CountryCode = 'USA')),
    ('South Carolina', 'SC', (SELECT CountryID FROM Country WHERE CountryCode = 'USA')),
    ('South Dakota', 'SD', (SELECT CountryID FROM Country WHERE CountryCode = 'USA')),
    ('Tennessee', 'TN', (SELECT CountryID FROM Country WHERE CountryCode = 'USA')),
    ('Texas', 'TX', (SELECT CountryID FROM Country WHERE CountryCode = 'USA')),
    ('Utah', 'UT', (SELECT CountryID FROM Country WHERE CountryCode = 'USA')),
    ('Vermont', 'VT', (SELECT CountryID FROM Country WHERE CountryCode = 'USA')),
    ('Virginia', 'VA', (SELECT CountryID FROM Country WHERE CountryCode = 'USA')),
    ('Washington', 'WA', (SELECT CountryID FROM Country WHERE CountryCode = 'USA')),
    ('West Virginia', 'WV', (SELECT CountryID FROM Country WHERE CountryCode = 'USA')),
    ('Wisconsin', 'WI', (SELECT CountryID FROM Country WHERE CountryCode = 'USA')),
    ('Wyoming', 'WY', (SELECT CountryID FROM Country WHERE CountryCode = 'USA'));

-- Insert Canadian Provinces
INSERT INTO [dbo].[State] (StateName, StateCode, CountryID) VALUES 
    ('Alberta', 'AB', (SELECT CountryID FROM Country WHERE CountryCode = 'CAN')),
    ('British Columbia', 'BC', (SELECT CountryID FROM Country WHERE CountryCode = 'CAN')),
    ('Manitoba', 'MB', (SELECT CountryID FROM Country WHERE CountryCode = 'CAN')),
    ('New Brunswick', 'NB', (SELECT CountryID FROM Country WHERE CountryCode = 'CAN')),
    ('Newfoundland and Labrador', 'NL', (SELECT CountryID FROM Country WHERE CountryCode = 'CAN')),
    ('Nova Scotia', 'NS', (SELECT CountryID FROM Country WHERE CountryCode = 'CAN')),
    ('Ontario', 'ON', (SELECT CountryID FROM Country WHERE CountryCode = 'CAN')),
    ('Prince Edward Island', 'PE', (SELECT CountryID FROM Country WHERE CountryCode = 'CAN')),
    ('Quebec', 'QC', (SELECT CountryID FROM Country WHERE CountryCode = 'CAN')),
    ('Saskatchewan', 'SK', (SELECT CountryID FROM Country WHERE CountryCode = 'CAN'));

-- Insert Mexican States
INSERT INTO [dbo].[State] (StateName, StateCode, CountryID) VALUES 
    ('Chihuahua', 'CH', (SELECT CountryID FROM Country WHERE CountryCode = 'MEX')),
    ('Jalisco', 'JA', (SELECT CountryID FROM Country WHERE CountryCode = 'MEX')),
    ('Mexico City', 'MC', (SELECT CountryID FROM Country WHERE CountryCode = 'MEX'));