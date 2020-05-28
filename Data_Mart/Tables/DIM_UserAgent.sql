CREATE TABLE [dbo].[DIM_UserAgent]
(
	[UserAgent_ID] INT NOT NULL, 
    [UserAgent] NVARCHAR(900) NULL, 
    [IsBot] VARCHAR(35) NOT NULL 
)
