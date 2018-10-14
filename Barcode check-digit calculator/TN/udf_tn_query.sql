-- =============================================
-- Author:      <Natucci Tatiana>
-- Create Date: <14/10/2018 >
-- Description: < The algorithm for calculate the check-digit >
-- =============================================
CREATE FUNCTION udf_tn_calculate_digit
(
    @input varchar(12)
)
RETURNS smallint
AS
BEGIN
-- Local variables
		declare @checkdigit smallint
		declare @sum_of_odds int
		declare @sum_of_evens int
-- Initial settings
		set @checkdigit = 0
		set @input = ltrim(rtrim((@input)))
		set @sum_of_odds = 0
		set @sum_of_evens = 0
--Number control
		if (isnumeric(@input) = 0)
begin
	set @checkdigit = null;
end
else
-- Calculate CheckDigit
if (len(@input) = 12 )and (ISNUMERIC(@input)=1)
 begin
  set @sum_of_odds = convert(int,substring(@input,1,1))
                   + convert(int,substring(@input,3,1))
                   + convert(int,substring(@input,5,1))
                   + convert(int,substring(@input,7,1))
                   + convert(int,substring(@input,9,1))
                   + convert(int,substring(@input,11,1))
  set @sum_of_evens = 
					convert(int,substring(@input,2,1))
                    + convert(int,substring(@input,4,1))
                    + convert(int,substring(@input,6,1))
                    + convert(int,substring(@input,8,1))
                    + convert(int,substring(@input,10,1))
					+ convert(int,substring(@input,12,1))
  if ((((@sum_of_odds ) + (@sum_of_evens* 3)))%10 = 0)
	begin
		set @checkdigit =0
	end
else
	
		set @checkdigit = 10 -((((@sum_of_odds) + (@sum_of_evens* 3)))%10 ) 
	
 end
return @checkdigit;

end -- end create function
