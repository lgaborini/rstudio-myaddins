#' Title
#'
#' @return
#' @export
#'
#' @examples
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