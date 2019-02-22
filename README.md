# myaddins

This RStudio addin provides some useful functions:

- insert magrittr pipe operators `%T>%` `%<>%` `%$%` under the cursor in source code panel
- insert left-to-right assignment operator `->` under the cursor in source code panel
- insert a call to `browser()` under the cursor in source code panel
- `sourceKnitr`: source a R Markdown document like if it were an R script
- `readKnitrCache`: load all cached chunks for the active `.Rmd` document
- `runShinyMarkdown`: when knitting and running a Shiny R markdown document, run it in the current session instead of a new one. This enables Rstudio to stop on `browser()` calls.

