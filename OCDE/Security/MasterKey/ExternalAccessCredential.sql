CREATE DATABASE SCOPED CREDENTIAL ExternalAccessCredential
	WITH IDENTITY = 'ocde-sqlsrv', --Login that we're using to access database (must match login in external db and must have permissions necessary to access resources we're using)
	SECRET = 'Ocd12345'; --Pasword for this login
