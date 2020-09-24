#' @title Downloading data from Symbiota2 portals into R
#'
#' @decription This package allows users to access and 
#' download from Symbiota2, a content management system 
#' for biodiveristy data.
#' 
#' @section About:
#' Symbiota2 is the improved, refactored version of Symbiota, 
#' an open source content management system for biological
#' specimen data. SymbiotaR2 allows users to access the data
#' available at Symbiota2 portals. By specifying the URL 
#' of the relevant portal, and the resource to be downloaded,
#' users can use SymbiotaR2 to deliver biological specimen-data 
#' in an R format. 
#' 
#' @section Code Structure:
#' Package functions are organized by API family, which generally
#' group the functions by the type of resource they pull from the portal.
#' Each function can either return an individual resources (through
#' specifying the `id` argument) or a collection of resources (through
#' specifying the `page` argument). After providing either the `id` 
#' or the `page` of resources, and the URL of the relevant portal, 
#' SymbiotaR2 will return an R object (for `id`, usually a list; for
#' `page`, usually a data.frame).
#' 
#' @section Portal Specification:
#' All SymbiotaR2 commands require a URL that directs to the Symiobta2
#' portal to download data from. Users need to make sure they are granted
#' access to a Symbiota2 portal before trying to download data from it. 
#' 
#' The address of a Symbiota2 portal is provided as the `url` string 
#' argument to each function. To specify a default URL, use the 
#' `SymbiotaR2_setup` function, which will the default url to your
#' .Rprofile. 
#' 
#' This package only allows users to access data from existing Symbiota2
#' portals; to create a new Symbiota2 portal, see the documentation at
#' https://symbiota2.github.io/Symbiota2/setup/installation.html
#'
#' @docType package
#' @name SymbiotaR2
#' @aliases SymbiotaR2 package-SymbiotaR2 SymbiotaR2-package
#' @references https://symbiota.org/docs/
#' @references Gries, C., Gilbert, E. E., & Franz, N. M. (2014). Symbiota - A virtual platform for creating voucher-based biodiversity information communities. Biodiversity Data Journal, 2, e1114.
#' @examples
#' myURL <- "http://imaginary-symbiota2-portal.com/api"
#' myTaxa <- Taxa(id = 12, url = myURL)
#' str(myTaxa)
#' 
#' myOccurrences <- Occurrence(page = 2, url = myURL)
#' length(myOccurrences)
NULL
