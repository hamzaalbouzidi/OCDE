CREATE PROCEDURE [dbo].[SP_File_Name]
(
	@tName NVARCHAR(50),
	@fName NVARCHAR(50),
	@SQL NVARCHAR (500) = ''
)
AS
BEGIN
	SELECT @SQL = (
		'UPDATE ' + @tName + ' ' +
		'SET [File_Name] = ''' + @fName + ''' ' +
		'WHERE File_Name IS NULL'
	)

	EXEC sys.sp_executesql @SQL
END

RETURN 0