#' Set default URL for Symbiota2 portal download
#'
#' Sets the \code{SymbiotaR2_url} option for you, optionally, by
#' appending it to your \code{.Rprofile}. Checks whether you've
#' specified a valid URL that can be reached, and attempts to pull 
#' a resource from the API, to confirm that the URL does specify 
#' a Symbiota2 portal.
#'
#' @param url URL of Symbiota2 portal (a trailing \code{/} will be
#'     appended, if it is not given)
#' @param append \code{logical} of whether to attempt to append this
#'     to your \code{.Rprofile} file, making this your default every
#'     time you start up \code{R}
#' @param verbose \code{logical} of whether or not to display output
#' @return Invisbly, the URL that has been stored
#' @author Will Pearse
#' @examples
#' \dontrun{
#' # An example (that doesn't work because it's not a real portal)
#' SymbiotaR2_setup("http://nonexistent-portal.com/api/")
#' # Trying to save a non-existence portal
#' SymbiotaR2_setup("http://nonexistent-portal.com/api/", TRUE)
#' }
#' @export

SymbiotaR2_setup <- function(url, append = FALSE, verbose = TRUE) {
  .check.url(url)

  # Test to see if .Rprofile already exists
  path <- path_home()
  exists <- FALSE
  if (file.exists(paste0(path, "/.Rprofile"))) {
    exists <- TRUE
  }

  if (append) {
    if (!exists) {
      stop(".Rprofile does not exist (at ", path, " ); cannot add to it", sep = "")
    }
    newline <- ifelse(.get.os() == "win", "\r\n", "\n")

    profile <- scan(file = paste0(path, "/.Rprofile"), what = "character", sep = "\n")
    if (any(grepl("options(SymbiotaR2_url", profile, fixed = TRUE))) {
      warning("You may already have a SymbiotaR2_url entry; continuing regardless")
    }

    if (verbose) {
      cat("\n")
      cat("Modifying .Rprofile...")
      cat("\n")
    }
    cat(paste0(
      newline,
      "# Auto-generated default SymbiotaR2 URL:", newline,
      'options(SymbiotaR2_url="', url, '")', newline,
      newline
    ), file = paste0(path, "/.Rprofile"), append = TRUE, sep = "")
    if (verbose) {
      cat("...done!")
      cat("\n")
    }
  } else {
    if (verbose) {
      cat("\n")
      cat("To make this change permanent, the line you want to add to your .Rprofile is:")
      cat('options(SymbiotaR2_url="', url, '")', sep = "")
      cat("\n")
      cat("(or run this command again with append=TRUE)")
      cat("\n")
    }
  }

  options(SymbiotaR2_url = url)
  invisible(url)
}
