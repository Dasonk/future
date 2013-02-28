.onLoad <- function(libname, pkgname){
    major <- as.numeric(sessionInfo()$R.version$major)
    minor <- as.numeric(sessionInfo()$R.version$minor)
    message <- paste("Your version of R is: ", 
                     major, 
                     ".", 
                     minor, 
                     "\nTo get the most out of future please install:",
                     sep = "")
    if(major == 2){
        if(minor < 14){
            inst <- suppressWarnings(require(future2.14, quietly = TRUE))
            if(!inst){
                message <- c(message, "future2.14")
            }
        }
        if(minor < 15){
            inst <- suppressWarnings(require(future2.15, quietly = TRUE))
            if(!inst){
                message <- c(message, "future2.15")
            }
        }
        
        # Need 3.0
        inst <- suppressWarnings(require(future3.0, quietly = TRUE))
        if(!inst){
            message <- c(message, "future3.0")
        }
    }
    # If major = 3.0 then they're on developmental version... 
    # no worries about that for now...
    
    if(length(message) > 1){
        message <- c(message, 
                     "\nYou can call installFuture() to do this for you automatically")
        packageStartupMessage(paste(message, collapse ="\n"))

    }
}