CREATE LOGIN newuser
	WITH PASSWORD = 'Azure@123';
GO

CREATE USER newuser
	FOR LOGIN newuser
	WITH DEFAULT_SCHEMA = SalesLT;

EXEC sp_addrolemember 'db_datareader', 'newuser';

Database = demodb