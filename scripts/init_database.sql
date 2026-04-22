/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'sales_dw' after checking if it already exists. 
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas 
    within the database: 'bronze', 'silver', and 'gold'.
	
WARNING:
    Running this script will drop the entire 'sales_dw' database if it exists. 
    All data in the database will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script.
*/

USE master;
GO

-- Drop and recreate the 'sales_dw' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'sales_dw')
BEGIN
    ALTER DATABASE sales_dw SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE sales_dw;
END;
GO

-- Create the 'DataWarehouse' database
CREATE DATABASE sales_dw;
GO

USE sales_dw;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
