#' Insert magrittr's tee operator \%T>\%
#'
#' Call this function as an addin to insert \code{\link[magrittr]{\%T>\%}} at the cursor position.
#'
#' @export
insertTeeOperator <- function() {
   rstudioapi::insertText(" %T>% ")
}

#' Insert magrittr's compound assignment operator \%<>\%
#'
#' Call this function as an addin to insert \code{\link[magrittr]{\%<>\%}} at the cursor position.
#'
#' @export
insertCompoundAssignmentOperator <- function() {
   rstudioapi::insertText(" %<>% ")
}

#' Insert magrittr's exposition operator \%$\%
#'
#' Call this function as an addin to insert \code{\link[magrittr]{\%$\%}} at the cursor position.
#'
#' @export
insertExpositionOperator <- function() {
   rstudioapi::insertText(" %$% ")
}

#' Insert left-to-right assignment operator ->
#'
#' Call this function as an addin to insert \code{->} at the cursor position.
#'
#' @export
insertRightAssignmentOperator <- function() {
   rstudioapi::insertText(" -> ")
}
