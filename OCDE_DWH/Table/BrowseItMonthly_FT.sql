CREATE TABLE [dwh].[BrowseItMonthly_FT](
	[Download_Date] [date] NULL,
	[Expression_ID] [int] NULL,
	CONSTRAINT [FK_BrowseItMonthly_FT_Expression_ID] FOREIGN KEY ([Expression_ID])
    REFERENCES [dwh].[Expression_DM] ([Expression_ID]),
	[Downloads] [int] NULL,
	[Exclude] [bit] NOT NULL
)