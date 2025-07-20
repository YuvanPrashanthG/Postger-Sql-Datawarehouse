/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'Warehouse' after checking if it already exists. 
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas 
    within the database: 'bronze', 'silver', and 'gold'.
	
WARNING:
    Running this script will drop the entire 'Warehouse' database if it exists. 
    All data in the database will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script.
*/

-- Step 1: Disconnect active connections and drop database if exists
-- Note: Requires superuser privileges to terminate connections
SELECT pg_terminate_backend(pid)
FROM pg_stat_activity
WHERE datname = 'Warehouse' AND pid <> pg_backend_pid();

DROP DATABASE IF EXISTS Warehouse;

-- Step 2: Create the new database
CREATE DATABASE Warehouse;

-- Step 3: Connect to the new database and create schemas
-- You need to connect to 'Warehouse' before running the following:
\c Warehouse

-- Now create schemas
CREATE SCHEMA bronze;
CREATE SCHEMA silver;
CREATE SCHEMA gold;
