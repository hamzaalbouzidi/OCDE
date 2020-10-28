CREATE PROCEDURE [dwh].[SP_Calendar]
	@startDate DATETIME = '2019-01-01',
	@endDate DATETIME = '2020-12-31'
AS

TRUNCATE TABLE dwh.DIM_Date

SET DATEFIRST 1 

DECLARE @time   DATE 
DECLARE @DateID	INT 
DECLARE @cpt	INT 

SET @cpt        = 0 
SET @time       = DATEADD(dd, @cpt, @startDate)

WHILE    @time <= @endDate
BEGIN 
	SET @DateID = CONVERT(VARCHAR(8), @time, 112)
	INSERT INTO [dwh].[DIM_Date](
	PK_Date
	, Date_Name
	, Year
	, Year_Name
	, Month
	, Month_Name
	, Quater
	, Day_Of_Year
	, Day_Of_Year_Name
	, Day_Of_Month,Day_Of_Month_Name,Month_Of_Year,Month_Of_Year_Name)
	VALUES (
		CONVERT(datetime, FORMAT(@time, 'yyyy-MM-dd 00:00:00.000'))
		, FORMAT(@time, 'dddd, MMMM dd yyyy')
		, CONVERT(datetime, FORMAT (@time, 'yyyy-01-01 00:00:00.000'))
		, DATEPART(yy, @time) 
		, CONVERT(datetime, FORMAT (@time, 'yyyy-MM-01 00:00:00.000'))
		, FORMAT(@time, 'MMMM yyyy')
		, CONCAT(datepart(yyyy,@time),'-Q', DATEPART(qq,@time))
		, DATEPART(dayofyear,@time)
		, CONCAT('Day ', DATEPART(dayofyear,@time))
		, DATEPART(dd, @time) 
		, CONCAT('Day ', DATEPART(dd,@time))
		, DATEPART(MM, @time) 
		, CONCAT('Month ', DATEPART(MM,@time))
	)
	SET @cpt   = @cpt + 1 
	SET @time  = DATEADD(dd, @cpt, @startDate) 

END

RETURN 0
