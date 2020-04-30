CREATE TABLE [stg].[STG_iLibrary]
(
	[eventlogid] NVARCHAR(20) NULL , 
    [identityid] NVARCHAR(30) NULL, 
    [event_time] NVARCHAR(30) NULL, 
    [sessionid] NVARCHAR(255) NULL, 
    [ipaddress] NVARCHAR(100) NULL, 
    [useragent] NVARCHAR(MAX) NULL, 
    [itemid] NVARCHAR(100) NULL, 
    [mime_type] NVARCHAR(100) NULL, 
    [licence_type] NVARCHAR(50) NULL, 
    [source] NVARCHAR(MAX) NULL, 
    [File_Date] DATETIME NOT NULL DEFAULT GETUTCDATE(), 
    [File_Name] NVARCHAR(30) NULL
)
