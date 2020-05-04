CREATE FUNCTION [dbo].[fn_asciiCodeInteger] (@string AS VARCHAR(max))
    RETURNS int
    AS
    BEGIN
      DECLARE @result VARCHAR(max);
      DECLARE @char CHAR(1);
      DECLARE @position int;
      SET @position = 1;
      SET @result = '';
      WHILE @position <= LEN(@string)
      BEGIN
        SET @char = SUBSTRING(@string, @position, 1);
        SET @result = @result + convert(varchar, ASCII(@char)-31); -- -31 car vrai char commence à 32
        SET @position = @position + 1;
      END
	  --return @Config_Node
      RETURN (convert(int,@result));
    END
GO