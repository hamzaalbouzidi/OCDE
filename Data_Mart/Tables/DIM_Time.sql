CREATE TABLE [dbo].[DIM_Time]
(
	[DownloadDate] DATETIME NOT NULL, 
    [Year] INT NULL, 
    [Month] INT NULL, 
    [Day] INT NULL, 
    [Date] DATE NULL, 
    [Time] TIME(0) NULL, 
    [Hour] INT NULL 
)
