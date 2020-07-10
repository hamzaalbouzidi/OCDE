CREATE TABLE [dwh].[CounterMonthly_Rejected]
(
    [IdentityID] [nvarchar](30) NULL,
	[Download_Date] [date] NULL,
	[DOI] [nvarchar](60) NULL,
	[Downloads] [int] NOT NULL,
	[Expression_ID] [int] NULL,
	[Registration_ID] [int] NULL,
	[File_Date] [date] NULL,
	[Import_Date] DATETIME NOT NULL DEFAULT GETUTCDATE()
)
