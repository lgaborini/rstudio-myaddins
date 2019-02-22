#' Run Shiny document in current session
#'
#' Run Shiny document in current session instead of render-ing to a separate session.
#' This enables browser() calls.
#'
#' @export
runShinyMarkdown <- function() {

	if (nchar(rstudioapi::getSourceEditorContext()$path) > 0) {
		rmarkdown::run(rstudioapi::getSourceEditorContext()$path)	
	}
	
}