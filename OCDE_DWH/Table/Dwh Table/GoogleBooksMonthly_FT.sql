CREATE TABLE [dwh].[GoogleBooksMonthly_FT](
	[Download_Date] [date] NOT NULL,
	[Expression_ID] [int] NOT NULL,
	CONSTRAINT [FK_GoogleBooksMonthly_Expression_ID] FOREIGN KEY ([Expression_ID])
    REFERENCES [dwh].[Expression_DM] ([Expression_ID]),
	[books_visits] [int] NOT NULL,
	[BV_w_pages_viewed] [int] NOT NULL,
	[pages_viewed] [int] NOT NULL,
	[Exclude] [bit] NOT NULL
)