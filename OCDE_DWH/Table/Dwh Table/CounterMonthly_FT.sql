CREATE TABLE [dwh].[CounterMonthly_FT](
	[Download_Date] [date] NOT NULL,
	[Expression_ID] [int] NOT NULL,
	CONSTRAINT [FK_CounterMonthly_FT_Expression_ID] FOREIGN KEY ([Expression_ID])
    REFERENCES [dwh].[Expression_DM] ([Expression_ID]),
	[Registration_ID] [int] NOT NULL,
	CONSTRAINT [FK_CounterMonthly_FT_Registration_ID] FOREIGN KEY ([Registration_ID])
    REFERENCES [dwh].[Registration_DM] ([Registration_ID]),
	[Exclude] [bit] NOT NULL,
	[Downloads] [int] NOT NULL
)
GO

CREATE NONCLUSTERED INDEX [IX_CounterMonthly_FT_Expression_ID] ON [dwh].[CounterMonthly_FT] ([Expression_ID])
GO

CREATE NONCLUSTERED INDEX [IX_CounterMonthly_FT_Registration_ID] ON [dwh].[CounterMonthly_FT] ([Registration_ID])
