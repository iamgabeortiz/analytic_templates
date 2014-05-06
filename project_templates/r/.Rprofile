## #############################################################################
## Project Config File
##
## Sections:
## - Packages
## - Package Config
## - Sourced Files
## - R Config
## #############################################################################


## =============================================================================
## Packages
##
## - Uncomment all packages you need.
## - Missing packages will be installed.
## - Then all packages will be loaded into the active session.
##
## NOTE:
## - The process may appear stalled if it needs to install several packages.
##
## =============================================================================

packages <- c(
    
    ## Your FIRST package should NOT start with a comma!
    
    ## ---------------- Data Import / Export ----------------
    ##'foreign'
    ##,'RODBC'
    ##,'XLConnect'
    ## ---------------- Data Processing ---------------------
    ##,'data.table'
    ##,'devtools'
    ##,'dplyr'
    ##,'foreign'
    ##,'Hmisc'
    ##,'knitr'
    ##,'stringr'
    ##,'testthat'
    ## ---------------- Graphics ----------------------------
    ##,'ggplot2'
    )
if(length(packages[!packages %in% installed.packages()]) > 0 ) {
    paste("Installing the following packages:")
    paste(packages[!packages %in% installed.packages()])
    install.packages( packages[!packages %in% installed.packages()] )
}
paste("Loading the following packages:")
paste(packages)
lapply(packages, library, character.only=T)


## =============================================================================
## Package Config
##
## - Packages are listed in alphabetical order.
##
## =============================================================================

## -----------------------------------------------------------------------------
## knitr
## -----------------------------------------------------------------------------

## Markdown -> HTML Style
##library(knitr)
##options(
##    rstudio.markdownToHTML = function(inputFile, outputFile) {     
##        require(markdown)
##        markdownToHTML(inputFile, outputFile, stylesheet='HZA.css')  
##    }
##)

## -----------------------------------------------------------------------------
## RODBC
## -----------------------------------------------------------------------------

##odbcStart <- function() {
##    con <- odbcConnect("connection_name"
##                       ,uid = getOption("connection_name")$uid
##                       ,pwd = getOption("connection_name")$pwd
##                        ## Try believeNRows=FALSE if you get lots of errors.
##                       ,believeNRows=TRUE
##                       )
##}

## If you use this, be sure to CLOSE all open RODBC sessions before exiting R.

## ==============================================================================
## Sourced Files
##
## - Function files you want loaded, regardless of which script is actually run.
##
## =============================================================================

## source("lib/file_name.R")
## source("lib/file_name.R")


## ==============================================================================
## R Setup
#
## Supersedes settings in your personal .Rprofile.
## ==============================================================================

## ---------- General R Options ----------
##options(tab.width = 4) 
##options(width = 80)
##options(graphics.record=TRUE)

.Last <- function(){
    
    ## Uncomment this to close ALL ODBC connections when exiting R.
    ## But, it will cause an error in any file that does not open
    ## a DB connection.
    #odbcClose(con)
}
