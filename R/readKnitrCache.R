#' Read cached chunks from this .Rmd
#'
#' Read cached chunks from this .Rmd. All variables are loaded into the global environment.
#' 
#' @export
readKnitrCache <- function() {
   qwraps2::lazyload_cache_dir()
}