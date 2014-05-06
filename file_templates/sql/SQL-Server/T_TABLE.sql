-- #############################################################################
-- T_TABLE_NAME
--
-- Author: xxxx
-- Date Created: xxxx-xx-xx
--
-- Description / Purpose:
-- Table template from the Andy's Analytic Templates Collection.
--
-- Primary Key: 
-- Foreign Keys:
-- + 
-- + 
--
-- #############################################################################

use DatabaseName;
go

-- Drop ------------------------------------------------------------------------
drop table SchemaName.tTableName ;
go

-- Create ----------------------------------------------------------------------
create table SchemaName.tTableName
(
   foo int not null
   ,bar int not null
   constraint pk_tTableName primary key (foo,bar)
) ;
go

-- Truncate --------------------------------------------------------------------
truncate SchemaNAme.tTableName ;
go

-- Insert Values ---------------------------------------------------------------
insert into SchemaName.tTableName values ( 1,10 ) ;
