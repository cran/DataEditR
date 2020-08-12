## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ---- echo = FALSE, eval = FALSE----------------------------------------------
#  # To create html logo to include in header
#  img <- htmltools::img(src = knitr::image_uri("logo.png"),
#                        alt = 'logo',
#                        style = 'float:right; width:150px')
#  html <- htmltools::doRenderTags(img)
#  readr::write_lines(html, path = "logo.html")

## ---- eval = FALSE------------------------------------------------------------
#  devtools::install_github("DillonHammill/DataEditR")
#  library(DataEditR)

## ---- eval = FALSE------------------------------------------------------------
#  data_edit(mtcars)

## ---- echo=FALSE, fig.align="center", out.width = '100%'----------------------
knitr::include_graphics('https://raw.githubusercontent.com/DillonHammill/DataEditR/master/vignettes/DataEditR/DataEditR-1.png')

## ---- eval = FALSE------------------------------------------------------------
#  data_edit(mtcars,
#            viewer = FALSE)

## ---- eval = FALSE------------------------------------------------------------
#  mtcars <- data_edit("mtcars.csv",
#                      read_fun = "read.csv",
#                      read_args = list(header = TRUE))
#  head(mtcars)

## ---- eval = TRUE, echo = FALSE-----------------------------------------------
head(mtcars)

## ---- eval = FALSE------------------------------------------------------------
#  data_edit(mtcars)

## ---- echo=FALSE, fig.align="center", out.width = '100%'----------------------
knitr::include_graphics('https://raw.githubusercontent.com/DillonHammill/DataEditR/master/vignettes/DataEditR/DataEditR-2.gif')

## ---- eval = FALSE------------------------------------------------------------
#  data_edit(mtcars)

## ---- echo=FALSE, fig.align="center", out.width = '100%'----------------------
knitr::include_graphics('https://raw.githubusercontent.com/DillonHammill/DataEditR/master/vignettes/DataEditR/DataEditR-3.gif')

## ---- eval = FALSE------------------------------------------------------------
#  data_edit(mtcars,
#            col_names = "mpg")

## ---- eval = FALSE------------------------------------------------------------
#  data_edit(mtcars)

## ---- echo=FALSE, fig.align="center", out.width = '100%'----------------------
knitr::include_graphics('https://raw.githubusercontent.com/DillonHammill/DataEditR/master/vignettes/DataEditR/DataEditR-4.gif')

## ---- eval = FALSE------------------------------------------------------------
#  data_edit(mtcars)

## ---- echo=FALSE, fig.align="center", out.width = '100%'----------------------
knitr::include_graphics('https://raw.githubusercontent.com/DillonHammill/DataEditR/master/vignettes/DataEditR/DataEditR-5.gif')

## ---- eval = FALSE------------------------------------------------------------
#  # New column to add
#  new_col <- matrix(rep(NA, nrow(mtcars)),
#                    ncol = 1,
#                    dimnames = list(NULL, "test"))
#  
#  # Edit data with new column added
#  data_edit(mtcars,
#            col_bind = new_col)

## ---- echo=FALSE, fig.align="center", out.width = '100%'----------------------
knitr::include_graphics('https://raw.githubusercontent.com/DillonHammill/DataEditR/master/vignettes/DataEditR/DataEditR-6.png')

## ---- eval = FALSE------------------------------------------------------------
#  data_edit(mtcars,
#            col_readonly = "mpg")

## ---- eval = FALSE------------------------------------------------------------
#  data_edit()

## ---- echo=FALSE, fig.align="center", out.width = '60%'-----------------------
knitr::include_graphics('https://raw.githubusercontent.com/DillonHammill/DataEditR/master/vignettes/DataEditR/DataEditR-7.gif')

## ---- eval = FALSE------------------------------------------------------------
#  data_edit(c(3, 3))

## ---- echo=FALSE, fig.align="center", out.width = '40%'-----------------------
knitr::include_graphics('https://raw.githubusercontent.com/DillonHammill/DataEditR/master/vignettes/DataEditR/DataEditR-8.gif')

## ---- eval = FALSE------------------------------------------------------------
#  # Add character column
#  mtcars_new <- cbind(rownames(mtcars), mtcars)
#  colnames(mtcars_new) <- "car"
#  
#  # Convert characters to factors
#  mtcars_new <- data_edit(mtcars_new,
#                          col_factor = TRUE)
#  str(mtcars_new)

## ---- eval = TRUE, echo = FALSE-----------------------------------------------
mtcars_new <- cbind(rownames(mtcars), mtcars)
colnames(mtcars_new)[1] <- "car"
mtcars_new$car <- factor(mtcars_new$car)
str(mtcars_new)

## ---- eval = FALSE------------------------------------------------------------
#  mtcars_new <- data_edit(mtcars,
#                          save_as = "mtcars.csv",
#                          write_fun = "write.table",
#                          write_args = list(sep = ",",
#                                            row.names = TRUE))

## ---- eval = FALSE------------------------------------------------------------
#  data_edit(mtcars,
#            col_bind = "fast",
#            col_options = list(fast = c(TRUE,FALSE)))

## ---- echo=FALSE, fig.align="center", out.width = '100%'----------------------
knitr::include_graphics('https://raw.githubusercontent.com/DillonHammill/DataEditR/master/vignettes/DataEditR/DataEditR-9.gif')

## ---- eval = FALSE------------------------------------------------------------
#  # Add column for car colour
#  data_edit(mtcars,
#            col_bind = "col",
#            col_options = list(col = c("red",
#                                        "blue",
#                                        "orange",
#                                        "green",
#                                        "black")))

## ---- echo=FALSE, fig.align="center", out.width = '100%'----------------------
knitr::include_graphics('https://raw.githubusercontent.com/DillonHammill/DataEditR/master/vignettes/DataEditR/DataEditR-10.gif')

## ---- eval = FALSE------------------------------------------------------------
#  data_edit(mtcars,
#            col_stretch = TRUE)

## ---- eval = FALSE------------------------------------------------------------
#  car_logo <- 'https://raw.githubusercontent.com/DillonHammill/DataEditR/master/vignettes/DataEditR/DataEditR-Car.png'
#  data_edit(mtcars,
#            logo = car_logo,
#            logo_size = 100,
#            title = "mtcars")

## ---- echo=FALSE, fig.align="center", out.width = '100%'----------------------
knitr::include_graphics('https://raw.githubusercontent.com/DillonHammill/DataEditR/master/vignettes/DataEditR/DataEditR-11.png')

## ---- eval = FALSE------------------------------------------------------------
#  data_edit(mtcars,
#            theme = "cosmo")

## ---- echo=FALSE, fig.align="center", out.width = '100%'----------------------
knitr::include_graphics('https://raw.githubusercontent.com/DillonHammill/DataEditR/master/vignettes/DataEditR/DataEditR-12.png')

