#' Read cached chunks from this .Rmd
#'
#' @return
#' @export
#'
#' @examples
readKnitrCache <- function() {
   qwraps2::lazyload_cache_dir()
}