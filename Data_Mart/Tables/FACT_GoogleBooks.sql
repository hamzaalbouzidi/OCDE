CREATE TABLE [dbo].[FACT_GoogleBooks]
(
	[Download_Date] DATE NOT NULL, 
    [CurExpId] INT NOT NULL, 
    [Plateform] VARCHAR(11) NOT NULL, 
    [Format_ID] INT NOT NULL, 
    [Downloads] INT NOT NULL, 
    [BV_w_pages_viewed] INT NOT NULL, 
    [pages_viewed] INT NOT NULL 
)
