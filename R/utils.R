.api.scaffold <- function(api.entry, url=NA, ID=NA, page=NA){
    # Argument handling and setup
    if(is.na(url)){
        url <- getOption("SymbiotaR2.url")
        if(is.null(url))
            stop("No Symbiota2 portal URL specified in defaults or function call")
    }
    dwn_file <- tempfile()

    # Grab a specific ID and return for processing
    if(is.na(ID)){
        complete_url <- paste0(url,api.entry,"/")
        download.file(url = complete_url, destfile = dwn_file)
        RObject <- fromJSON(file = dwn_file)
        return(RObject)
    }

    # Grabbing all from a page (default: starting at 1) and return for processing
    if(is.na(page))
        page <- 1
    complete_url <- paste0(url,api.entry,"?page=",page)
    download.file(url = complete_url, destfile = dwn_file)
    RObject <- fromJSON(file = sampleDestination)
    return(RObject)
}
