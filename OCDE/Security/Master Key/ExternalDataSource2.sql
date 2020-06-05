CREATE EXTERNAL DATA SOURCE ExternalDataSource2
WITH
(
	TYPE = RDBMS,
	LOCATION = 'servbackup.database.windows.net', --External db server address
	DATABASE_NAME= 'Kappa_daily', --External db name
	CREDENTIAL = ExternalAccessCredential2 --Credential we've created before
);
