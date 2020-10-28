CREATE PROCEDURE [dwh].[SP_Hours]

AS
	
	TRUNCATE TABLE dwh.DIM_Hours

	INSERT INTO [DIM_Hours] ([Download_hour], [Download_Time])
	VALUES
		(0, convert(time, '00:00:00.0000000')),
		(1, convert(time, '01:00:00.0000000')),
		(2, convert(time, '02:00:00.0000000')),
		(3, convert(time, '03:00:00.0000000')),
		(4, convert(time, '04:00:00.0000000')),
		(5, convert(time, '05:00:00.0000000')),
		(6, convert(time, '06:00:00.0000000')),
		(7, convert(time, '07:00:00.0000000')),
		(8, convert(time, '08:00:00.0000000')),
		(9, convert(time, '09:00:00.0000000')),
		(10, convert(time, '10:00:00.0000000')),
		(11, convert(time, '11:00:00.0000000')),
		(12, convert(time, '12:00:00.0000000')),
		(13, convert(time, '13:00:00.0000000')),
		(14, convert(time, '14:00:00.0000000')),
		(15, convert(time, '15:00:00.0000000')),
		(16, convert(time, '16:00:00.0000000')),
		(17, convert(time, '17:00:00.0000000')),
		(18, convert(time, '18:00:00.0000000')),
		(19, convert(time, '19:00:00.0000000')),
		(20, convert(time, '20:00:00.0000000')),
		(21, convert(time, '21:00:00.0000000')),
		(22, convert(time, '22:00:00.0000000')),
		(23, convert(time, '23:00:00.0000000'))
RETURN 0