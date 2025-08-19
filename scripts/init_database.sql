/*
======================================================
Create Database and Schemas
======================================================
Script Purpose:
	This Script creates a new database named 'DataWarehouse' after checking if it already exists.
	If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas
	within the databse: 'bronze', 'silver', 'gold'.

WARNING:
	Running this script will drop the entire 'DataWarehouse' database if it exists.
	All data in the database will be permanently deleted. proceed with caution
	and ensure you have proper backups before running this script.
*/


USE master;
GO

-- Drop and receate the 'DataWaehouse' database
IF EXISTS (Select 1 From sys.databases WHERE name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO

--  Create Database 'DataWarehouse'

Create database DataWarehouse;
GO

USE DataWarehouse;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
