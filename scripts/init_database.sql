/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'DataWarehouse' after checking if it already exists. 
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas 
    within the database: 'bronze', 'silver', and 'gold'.
	
WARNING:
    Running this script will drop the entire 'DataWarehouse' database if it exists. 
    All data in the database will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script.
*/

-- Step 1: Disconnect active connections and drop database if exists
-- Note: Requires superuser privileges to terminate connections
SELECT pg_terminate_backend(pid)
FROM pg_stat_activity
WHERE datname = 'datawarehouse' AND pid <> pg_backend_pid();

DROP DATABASE IF EXISTS datawarehouse;

-- Step 2: Create the new database
CREATE DATABASE datawarehouse;

-- Step 3: Connect to the new database and create schemas
-- You need to connect to 'datawarehouse' before running the following:
\c datawarehouse

-- Now create schemas
CREATE SCHEMA bronze;
CREATE SCHEMA silver;
CREATE SCHEMA gold;
