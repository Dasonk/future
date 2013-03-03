#' Install future pacakges
#' 
#' Identifies which future packages you need and installs
#' them for you
#' 
#' @param ... Parameters to pass onto install.packages
#' @param github logical; Do you want to install the developmental
#' versions from the github repositories? (requires the devtools package)
#' @export
installFuture <- function(github = TRUE, ...){
    major <- as.numeric(sessionInfo()$R.version$major)
    minor <- as.numeric(sessionInfo()$R.version$minor)
    
    installfun <- if(github){
        if(!require(devtools)){
            stop("devtools is required for github = TRUE")
        }
        function(package, ...){install_github(package, "Dasonk")}
    }else{
        function(package, ...){install.packages(package, ...)}
    }
    
    checkAndInstall <- function(package){
        if(!suppressWarnings(require(package, character.only = TRUE, quietly = TRUE))){
            installfun(package, ...)
            require(package, character.only = TRUE)
        }
    }
    
    if(major >= 3){
        # Do nothing for now
    }
    if(major <= 2){
        checkAndInstall("future3.0")
        if(minor < 15){
            checkAndInstall("future2.15")
        }
        if(minor < 14){
            checkAndInstall("future2.14")
        }
    }
}