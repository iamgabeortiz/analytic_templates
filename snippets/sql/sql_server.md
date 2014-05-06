# SQL Server Snippets

This is a work in progress. Please Come Again Soon!

SELECT COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'tblCaseRecord_C2'
ORDER BY ORDINAL_POSITION ;


SELECT * FROM information_schema.tables

List of all empty tables in SQL Server Database
EXEC sp_MSforeachtable 'IF NOT EXISTS (SELECT 1 FROM ?) PRINT ''?'' '

List of all tables with at least 1 row of data in SQL Server Database
EXEC sp_MSforeachtable 'IF EXISTS (SELECT 1 FROM ?) PRINT ''?'' '

Find latest modified stored procedures
SELECT name, create_date, modify_date
FROM sys.objects
WHERE TYPE = 'P' -- Only stored procedures
ORDER BY modify_date DESC
GO
Change ‘P’ to ‘V’ if you want to search for views.

Find string in stored procedures
SELECT Name
FROM sys.procedures
WHERE OBJECT_DEFINITION(OBJECT_ID) LIKE '%STRINGTOSEARCHFOR%'
GO

Find all constraints
SELECT OBJECT_NAME(OBJECT_ID) AS NameofConstraint,
SCHEMA_NAME(schema_id) AS SchemaName,
OBJECT_NAME(parent_object_id) AS TableName,
type_desc AS ConstraintType
FROM sys.objects
WHERE type_desc LIKE '%CONSTRAINT' ORDER BY NameofConstraint
GO

Find all foreign keys
SELECT f.name AS ForeignKey,
OBJECT_NAME(f.parent_object_id) AS TableName,
COL_NAME(fc.parent_object_id,
fc.parent_column_id) AS ColumnName,
OBJECT_NAME (f.referenced_object_id) AS ReferenceTableName,
COL_NAME(fc.referenced_object_id,
fc.referenced_column_id) AS ReferenceColumnName
FROM sys.foreign_keys AS f
INNER JOIN sys.foreign_key_columns AS fc
ON f.OBJECT_ID = fc.constraint_object_id

SQL Reference - SQL Server
================================================================================

Collection of useful syntax snippets using Microsoft SQL Server. While there 
might be exceptions, assume the syntax in this file is specific to SQL Server.

Inspired by: http://bloggingmath.wordpress.com/2011/02/03/using-emacs-as-your-sql-interface/

Server Information
--------------------------------------------------------------------------------

_Server Details_

    select left(@@servername, 25), left(db_name(), 25) ;
    go

Table Information
--------------------------------------------------------------------------------

_List Database Tables_

    select * from sys.tables ;
    go -m pretty

_List Table Columns_
    select
        left(column_name, 25)
        ,left(data_type, 15)
        ,is_nullable
    from information_schema.columns
    where table_name like ’tablename’ 
    ;
    go

_List Table Constraints_

    select
        left(constraint_name, 25)
        ,constraint_type
    from information_schema.table_constraints
    where table_name like ’tablename’ 
    ;
    go

_Views / Stored Procedures_
--------------------------------------------------------------------------------

_Retrieve Create Statement for a View or Procedure_

    exec sp_HelpText 'vView' ;

