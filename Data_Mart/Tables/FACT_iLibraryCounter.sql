CREATE TABLE [dbo].[FACT_iLibraryCounter]
(
	[Download_Date] DATE NOT NULL, 
    [CurExpId] INT NOT NULL, 
    [Plateform] VARCHAR(15) NOT NULL, 
    [Format_ID] INT NOT NULL, 
    [Registration_ID] INT NOT NULL, 
    [Downloads] INT NOT NULL 
)
