CREATE TABLE [stg].STG_Manifestation_Statlink_DM_SA(

	[Manifestation_ExternalID] [nvarchar](100) NULL,
	[ExternalSource] [varchar](10) NOT NULL,
	Expression_ID [INT] NOT NULL,
	Format_ID [INT] NOT NULL, 
	FirstRelease_Date [datetime] NULL,
	ISBN13 [INT] NULL	
	)