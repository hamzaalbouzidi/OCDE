CREATE EXTERNAL DATA SOURCE ExternalDataSource
WITH
(
	TYPE = RDBMS,
	LOCATION = 'ocde-sqlsrv.database.windows.net', --External db server address
	DATABASE_NAME= 'STG_UsageStat', --External db name
	CREDENTIAL = ExternalAccessCredential --Credential we've created before
);
