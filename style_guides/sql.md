# SQL Styleguide

Files that define the DDL for a table should be listed
SCHEMA.TABLE\_NAME.sql. Capitalize everything except the .sql. Tables
should start with a T.

Example: FOO.T\_BAR.sql

Files that define a view should be listed
SCHEMA.VIEW\_NAME.sql. Capitalize everything except the .sql. Views
should start with a V.

Example: FOO.V\_BAR.sql

Files that define a stored procedure should be listed as
SCHEMA.SP\_NAME.sql.  Capitalize everything except the .sql. Stored
procedures should start with SP.

Example: FOO.SP\_BAR.sql

Files that queries called directly by R (Not saved views) should be
listed as q\_file\_name.sql. The file name should be descriptive, and
should be in all lower case. This makes it easy to visually
differntiate files that are run on the DB server from files that are
run locally by R. Files should start with the letter q.

Example: q\_my\_query.sql
