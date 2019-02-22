# myaddins

This RStudio addin provides some useful functions:

- insert magrittr pipe operators `%T>%` `%<>%` `%$%` under the cursor in source code panel
- insert left-to-right assignment operator `->` under the cursor in source code panel
- insert a call to `browser()` under the cursor in source code panel
- `sourceKnitr`: source a R Markdown document like if it were an R script
- `readKnitrCache`: load all cached chunks for the active `.Rmd` document
- `runShinyMarkdown`: when knitting and running a Shiny R markdown document, run it in the current session instead of a new one. This enables Rstudio to stop on `browser()` calls.

This enables users to add custom keyboard shortcuts to any of those commands.

## Installation

Install it from this repository using `devtools` or `remotes`:

```
devtools::install_github('lgaborini/rstudio-myaddins')
remotes::install_github('lgaborini/rstudio-myaddins')
```

It will appear in the Addins menu.