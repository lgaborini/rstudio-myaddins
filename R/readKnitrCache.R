#' Read cached chunks from this .Rmd in this session
#'
#' Read cached chunks from this .Rmd. All variables are loaded into the global environment.
#'
#' @export
readKnitrCache <- function() {

   fullpath_document <- rstudioapi::getSourceEditorContext()$path

   if (nchar(fullpath_document) == 0) {
      stop('You need to save this document first.')
   }

   # Find the cache dir
   path_document <- dirname(fullpath_document)
   cache_dir_default <- './cache'

   path_cache <- normalizePath(file.path(path_document, cache_dir_default), mustWork = FALSE)

   while (!dir.exists(path_cache)) {

      path_cache <- rstudioapi::selectDirectory(caption = 'Select cache folder', path = path_document)

      # Abort clicked
      if (is.null(path_cache)) {
         return()
      }

   }

   if (dir.exists(path_cache)) {
      message(paste0('Found cache in ', path_cache))
      qwraps2::lazyload_cache_dir(path_cache)
   }

}