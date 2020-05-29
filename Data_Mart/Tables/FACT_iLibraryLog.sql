CREATE TABLE [dbo].[FACT_iLibraryLog]
(
	[Download_Date_Time] DATETIME NOT NULL, 
    [Download_Date] DATE NULL, 
    [Download_hour] INT NULL, 
    [CurExpId] INT NOT NULL, 
    [Plateform] VARCHAR(11) NOT NULL, 
    [Format_ID] INT NOT NULL, 
    [Registration_ID] INT NOT NULL, 
    [IPAddress_ID] INT NOT NULL, 
    [Source_ID] INT NOT NULL, 
    [UserAgent_ID] INT NOT NULL, 
    [Session_ID] INT NOT NULL, 
    [Downloads] INT NOT NULL 
)
