CREATE TABLE [dbo].[FACT_StatLink]
(
	[Download_Date] DATE NOT NULL, 
    [Download_Time] INT NULL, 
    [CurExpId] INT NOT NULL, 
    [Plateform] VARCHAR(8) NOT NULL, 
    [IPAddress_ID] INT NULL, 
    [Source_ID] INT NULL, 
    [UserAgent_ID] INT NULL, 
    [Format_ID] INT NOT NULL, 
    [Downloads] INT NOT NULL 
)
