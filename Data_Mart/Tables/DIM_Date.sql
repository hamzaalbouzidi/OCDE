CREATE TABLE [dbo].DIM_Date
(
	[PK_Date] DATETIME NOT NULL, 
    [Date_Name] NVARCHAR(50) NULL, 
    [Year] DATETIME NULL, 
    [Year_Name] NVARCHAR(50) NULL, 
    [Month] DATETIME NULL, 
    [Month_Name] NVARCHAR(50) NULL, 
    [Quater] NVARCHAR(53) NULL, 
    [Day_Of_Year] INT NULL, 
    [Day_Of_Year_Name] NVARCHAR(50) NULL, 
    [Day_Of_Month] INT NULL, 
    [Day_Of_Month_Name] NVARCHAR(50) NULL, 
    [Month_Of_Year] INT NULL, 
    [Month_Of_Year_Name] NVARCHAR(50) NULL 
)
