-- =============================================================================
-- F_FUNCTION_NAME
--
-- Author: xxxx
-- Date Created: xxxx-xx-xx
--
-- Description / Purpose:
-- Function template from Andy's Analytic Templates Collection.
--
-- Inputs:
-- @var1 int - Description of @var1
-- @var2 varchar(10) - Description of @var2
--
-- Outputs:
-- @RetValue varchar(25)
--
-- Implementation Notes:
-- + 
-- + 
--
-- =============================================================================

use DatabaseName;
go

-- Drop ------------------------------------------------------------------------
drop function SchemaName.fFunctionTeamplate ;
go

-- Create ----------------------------------------------------------------------
create function SchemaName.fFunctionTemplate  ( @var1 int, @var2 varchar(10) )
returns varchar(25)
as
begin
    Declare @RetValue varchar(25) ;
    select 
        @RetValue = select cast(@var1 as varchar(10)) + ' ' + @var2 ;
    return @RetValue
end
;
go