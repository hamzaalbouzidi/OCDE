CREATE TABLE [stg].STG_Manifestation_DM_SA(

	[Manifestation_ExternalID] [nvarchar](100) NULL,
	[ExternalSource] [varchar](3) NOT NULL,
	Expression_ID [INT] NOT NULL,
	Format_ID [INT] NOT NULL, 
	FirstRelease_Date [date] NULL,
	ISBN13 [INT] NULL	
	)