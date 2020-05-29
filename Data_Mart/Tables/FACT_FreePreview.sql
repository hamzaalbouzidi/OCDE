CREATE TABLE [dbo].[FACT_FreePreview]
(
	[Download_Date] DATE NOT NULL, 
    [CurExpId] INT NOT NULL, 
    [Plateform] VARCHAR(11) NOT NULL, 
    [Format_ID] INT NOT NULL, 
    [Downloads] INT NOT NULL 
)
