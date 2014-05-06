## #############################################################################
## Project Name / File Name
##
## Author Name / Email@email.com
##
## Brief description of this file.
##
## #############################################################################

rm(list=ls())
.First()

## =============================================================================
## Initialize Session
## =============================================================================

## ---------- Libraries ----------
##library("package_name")

## ---- Sourced Files ----------
##source("lib/file_name.R")

## ---------- Variables ----------


## -----------------------------------------------------------------------------
## Load Data / Queries
## -----------------------------------------------------------------------------

## ---------- Import Data From Files ----------
##source("data/import.R")
##source("data/preprocess.R")

## ---------- Load Data R Data ----------
##load(file="data/.RData")

## ---------- ODBC Connection ----------

## Initializes the ODBC connection defined in .Rprofile.
## odbcStart()

## Use this if you want to write in the query directly.
## tbl <- sqlQuery(con
##                 , "select * from "
##                 , stringsAsFactors=TRUE
##                )

## Use this if you want to pull in a query from an external file.
## qry <- paste( readLines('sql/file_name.sql'), collapse='\n' )
## tbl <- sqlQuery(con
##                 ,qry
##                 ,stringsAsFactors=TRUE
##                )


## =============================================================================
## Analysis
## =============================================================================

## -----------------------------------------------------------------------------
## Section 01
## -----------------------------------------------------------------------------

## ---------- xxx ----------


## ---------- xxx ----------


## -----------------------------------------------------------------------------
## Section 02
## -----------------------------------------------------------------------------

## ---------- xxx ----------



## ---------- xxx ----------


## =============================================================================
## Exit
## =============================================================================

save(
    list = ls()
    ,file = "data/.RData"
    )

## Uncomment this if you are openned an ODBC connection.
##odbcClose(con)

##q()
