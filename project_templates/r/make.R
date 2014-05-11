## #############################################################################
## make.R
##
## Makefile for R. This is where / how you define how to "build" your analysis.
##
## #############################################################################



make <<- function(target = NULL) {

###    ## NA ----------------------------------------------------------------------
###    if(is.null(target)) {
###        return( paste("No target selected.") )
###    }
### 
###    ## import ------------------------------------------------------------------
###    if(target == "all") {
###        source("tests/input_data.R")
###        source("import.R" )
###        return(0)
###    }
###    
###    ## upload ------------------------------------------------------------------
###    if(target == "all") {
###        source("tests/upload.R")
###        source("upload.R",echo=TRUE) ## Echo a big upload.
###        return(0)
###    }
### 
###    ## reports -----------------------------------------------------------------
###    if(target == "reports") {
###        rm(list=ls())
###        source("analysis.R")
###        return(0)
###    }
###    
###    ## tests -------------------------------------------------------------------
###    if(target == "tests") {
###        source("tests/test.R")
###        return(0)
###    }    

    return(1)
}

