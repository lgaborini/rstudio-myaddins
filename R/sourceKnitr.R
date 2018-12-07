#' Source the current .Rmd file
#'
#' Source the current .Rmd file as if it were a R script.
#' 
#' All variables are loaded into the global environment.
#' 
#' @export
sourceKnitr <- function() {

   # Grab current file
   context <- rstudioapi::getSourceEditorContext()

   tryCatch(normalizePath(context$path, mustWork = TRUE),
            error = function(){ print('Opened file in editor must exist.')} )

   ksource <- function (x, ...)
   {
      source(knitr::purl(context$path, output = tempfile()), ...)
   }

   ksource(context$path)
}