#' View a variable under the cursor.
#'
#' @export
viewUnderCursor <- function(){

   context <- rstudioapi::getActiveDocumentContext()
   target <- rs_get_symbol_at_cursor(context)
   if (is.null(target)) {
      return(invisible(NULL))
   }
   if (nchar(target) == 0) {
      return(invisible(NULL))
   }

   expr <- substitute(View(x), list(x = as.symbol(target)))

   eval(
      expr = expr,
      envir = globalenv()
   )

   # mtcars
}




#' Get the symbol under cursor (as character vector).
#'
#' Get the symbol under cursor (as character vector).
#' From `ropensci/drake`.
#'
#' @return a character vector
rs_get_symbol_at_cursor <- function(context) {
   # if (identical(context$id, "#console")) {
   #    return(NULL)
   # }
   cursor_pos <- context$selection[[1]]$range$start
   cursor_line <- cursor_pos[1]
   cursor_column <- cursor_pos[2]
   r_symbol_pattern <- "[.A-Za-z][.A-Za-z0-9_]+"
   line_symbols <- gregexpr(
      text = context$contents[cursor_line],
      pattern = r_symbol_pattern
   )
   match_starts <- line_symbols[[1]]
   match_ends <- match_starts + attr(x = line_symbols[[1]], "match.length") - 1
   match_index <- which(
      cursor_column >= match_starts &
         cursor_column <= match_ends
   )
   if (length(match_index) == 0) {
      message("Could not find object name at cursor position.")
      return(NULL)
   }
   substr(
      context$contents[cursor_line],
      start = match_starts[match_index],
      stop = match_ends[match_index]
   )
}