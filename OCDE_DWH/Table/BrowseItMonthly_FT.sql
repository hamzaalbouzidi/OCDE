CREATE TABLE [dwh].[BrowseItMonthly_FT](
	[Download_Date] [date] NULL,
	[Expression_ID] [int] NOT NULL,
	[Downloads] [int] NULL,
	[Exclude] [bit] NOT NULL, 
    CONSTRAINT [PK_BrowseItMonthly_FT] PRIMARY KEY ([Expression_ID])
)