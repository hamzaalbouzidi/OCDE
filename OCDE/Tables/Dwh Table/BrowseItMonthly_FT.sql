CREATE TABLE [dwh].[BrowseItMonthly_FT](
	[Download_Date] [date] NULL,
	[Expression_ID] [int] NOT NULL,
	[Downloads] [int] NULL,
	[Exclude] [bit] NOT NULL, 
    CONSTRAINT [FK_BrowseItMonthly_FT_Expression_DM] FOREIGN KEY ([Expression_ID]) REFERENCES dwh.[Expression_DM]([Expression_ID])
)