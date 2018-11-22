
#' Insert a call to browser()
#'
#' Call this function as an addin to insert `browser()` at the cursor position.
#'
#' @export
insertDebugBrowser <- function() {
   rstudioapi::insertText("browser()")
}
