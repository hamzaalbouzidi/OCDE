CREATE EXTERNAL DATA SOURCE ExternalDataSource3
WITH
(
	TYPE = RDBMS,
	LOCATION = 'servbackup.database.windows.net', --External db server address
	DATABASE_NAME= 'KAPPIM', --External db name
	CREDENTIAL = ExternalAccessCredential3 --Credential we've created before
);
