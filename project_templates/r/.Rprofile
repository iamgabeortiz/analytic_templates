## #############################################################################
## Project Config File
##
## Sections:
## - Packages
##    + Load Packages
##    + Config Package
## - Variables
## - Sourced Files
## - R Config
## - .First()
## - .Last()
## #############################################################################

## =============================================================================
## Packages
##
## - Uncomment all packages you need.
## - Missing packages will be installed.
##
## NOTE:
## - Your FIRST package should not begin with a ",".
## - First run may appear stalled if many packages must be installed.
##
## =============================================================================

## -----------------------------------------------------------------------------
## Load Packages
##
## Declare the list of packages to load when this project starts.
## Any packages not already present will be installed.
##
## You can add to the packages vector and reload with .loadLibrary(packages)
##
## -----------------------------------------------------------------------------
require(utils)
packages <- c(
    ##,"car"
    ##,"caret"
    ##,"data.table"
    ##,"devtools"
    ##,"dplyr"
    ##foreign"
    ##,"gdata"
    ##,"ggmap"
    ##,"ggplot2"
    ##,"glmnet"
    ##,"gmodels"
    ##,"googleVis"
    ##,"gplots"
    ##,"gtools"
    ##,"Hmisc"
    ##,"httr"
    ##,"jsonlite"
    ##,"knitr"
    ##,"lme4"
    ##,"lubridate"
    ##,"maps"
    ##,"maptools"
    ##,"mgcv"
    ##,"multcomp"
    ##,"nlme"
    ##,"parallel"
    ##,"plyr"
    ##,"randomForest"
    ##,"reshape2"
    ##,"rgl"
    ##,"RODBC"
    ##,"roxygen"
    ##,"quantmod"
    ##,"scales"
    ##,"slidify"
    ##,"sp"
    ##,"stringr"
    ##,"survival"
    ##,"testthat"
    ##,"vcd"
    ##,"XLConnect"
    ##,"XML"
    ##,"xtable"
    ##,"xts"
    ##,"zoo"
    )
.loadLibrary <- function(packages){
    if(length(packages[!packages %in% installed.packages()]) > 0 ) {
        install.packages( packages[!packages %in% installed.packages()] )
    }
    lapply(packages, library, character.only=T)
}
.loadLibrary(packages)

## Uncomment this if you do not want to see the packages loaded list.
##rm("packages")


## -----------------------------------------------------------------------------
## Config Packages
## -----------------------------------------------------------------------------

## ---------- knitr ------------------------------------------------------------

##library(knitr)
options(
    rstudio.markdownToHTML = function(inputFile, outputFile) {
        require(markdown)
        markdownToHTML( inputFile
                       ,outputFile
                       ,stylesheet = "reports/style.css"
                       )
    } )

## ---------- RODBC ------------------------------------------------------------
## CLOSE all open RODBC sessions before exiting R!

##odbcStart <- function() {
##    con <<- odbcConnect("connection_name"
##                       ,uid = getOption("connection_name")$uid
##                       ,pwd = getOption("connection_name")$pwd
##                        ## Try believeNRows=FALSE if you get lots of errors.
##                       ,believeNRows=TRUE
##                       )
##}

## Store your passwords in a way that will NEVER get uploaded to GitHub.
## source("~/db.R")



## ==============================================================================
## Variables
## =============================================================================



## ==============================================================================
## Sourced Files
##
## - Files you want loaded on startup.
##
## =============================================================================

## source("lib/file_name.R")
## source("lib/file_name.R")
## source("make.R")


## ==============================================================================
## R Setup
## ==============================================================================

##options(tab.width = 4)
##options(width = 80)
##options(graphics.record=TRUE)



## ==============================================================================
## .First()
## ==============================================================================

.First <- function() {

    ## Variables ---------------------------------------------------------------
    ## Must be globally assigned (<<-) !


    ## Sourced Files -----------------------------------------------------------
    ## Use carefully. Everything must be declared globally.
    ## source("make.R")


}



## ==============================================================================
## .Last()
## ==============================================================================

.Last <- function(){

    ## Uncomment this to close ALL RODBC connections on exit.
    ## Can cause errors if you use "con" for anything other than DB connections.
    #if(!exists("con")){odbcClose(con)}

}
