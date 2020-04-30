
CREATE TABLE [dwh].FreePreviewDaily_FT(
	[Download_Date] [date] NOT NULL,
	[Expression_ID] [int] NOT NULL,
	CONSTRAINT [FK_FreePreviewDaily_Expression_ID] FOREIGN KEY ([Expression_ID])
    REFERENCES [dwh].[Expression_DM] ([Expression_ID]),
	[Embed] [bit] NOT NULL,
	[Downloads] [int] NOT NULL,
	[Exclude] [bit] NOT NULL,
	[Agg_Monthly] [bit] NOT NULL
)