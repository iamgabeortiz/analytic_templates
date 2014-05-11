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
###        return( paste(target, "complete", sep=" ") )
###    }
###    
###    ## upload ------------------------------------------------------------------
###    if(target == "all") {
###        source("tests/upload.R")
###        source("upload.R",echo=TRUE) ## Echo a big upload.
###        return( paste(target, "complete", sep=" ") )
###    }
### 
###    ## reports -----------------------------------------------------------------
###    if(target == "reports") {
###        rm(list=ls())
###        source("analysis.R")
###        return( paste(target, "complete", sep=" ") )
###    }
###    
###    ## tests -------------------------------------------------------------------
###    if(target == "tests") {
###        source("tests/test.R")
###        return(0)
###    }    

    return(paste("No Such Target"))
}

