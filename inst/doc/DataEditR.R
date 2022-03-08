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
#  install.packages("DataEditR")
#  library(DataEditR)

## ---- eval = FALSE------------------------------------------------------------
#  devtools::install_github("DillonHammill/DataEditR")

## ---- eval = FALSE------------------------------------------------------------
#  data_edit(mtcars)

## ---- echo=FALSE, fig.align="center", out.width = '90%'-----------------------
knitr::include_graphics('https://raw.githubusercontent.com/DillonHammill/DataEditR/master/vignettes/DataEditR/DataEditR-1.png')

## ---- eval = FALSE------------------------------------------------------------
#  data_edit(mtcars,
#            viewer = "browser")

## ---- eval = FALSE------------------------------------------------------------
#  mtcars <- data_edit("mtcars.csv",
#                      read_fun = "read.csv",
#                      read_args = list(header = TRUE))
#  head(mtcars)

## ---- eval = TRUE, echo = FALSE-----------------------------------------------
head(mtcars)

## ---- eval = FALSE------------------------------------------------------------
#  data_edit(mtcars)

## ---- echo=FALSE, fig.align="center", out.width = '90%'-----------------------
knitr::include_graphics('https://raw.githubusercontent.com/DillonHammill/DataEditR/master/vignettes/DataEditR/DataEditR-2.gif')

## ---- eval = FALSE------------------------------------------------------------
#  data_edit(mtcars)

## ---- echo=FALSE, fig.align="center", out.width = '90%'-----------------------
knitr::include_graphics('https://raw.githubusercontent.com/DillonHammill/DataEditR/master/vignettes/DataEditR/DataEditR-3.gif')

## ---- eval = FALSE------------------------------------------------------------
#  data_edit(mtcars,
#            col_names = "mpg")

## ---- eval = FALSE------------------------------------------------------------
#  data_edit(mtcars)

## ---- echo=FALSE, fig.align="center", out.width = '90%'-----------------------
knitr::include_graphics('https://raw.githubusercontent.com/DillonHammill/DataEditR/master/vignettes/DataEditR/DataEditR-4.gif')

## ---- eval = FALSE------------------------------------------------------------
#  data_edit(mtcars)

## ---- echo=FALSE, fig.align="center", out.width = '90%'-----------------------
knitr::include_graphics('https://raw.githubusercontent.com/DillonHammill/DataEditR/master/vignettes/DataEditR/DataEditR-5.gif')

## ---- eval = FALSE------------------------------------------------------------
#  # New column to add
#  new_col <- matrix(rep(NA, nrow(mtcars)),
#                    ncol = 1,
#                    dimnames = list(NULL, "test"))
#  # Edit data with new column added
#  data_edit(mtcars,
#            col_bind = new_col)

## ---- echo=FALSE, fig.align="center", out.width = '90%'-----------------------
knitr::include_graphics('https://raw.githubusercontent.com/DillonHammill/DataEditR/master/vignettes/DataEditR/DataEditR-6.png')

## ---- eval = FALSE------------------------------------------------------------
#  data_edit(mtcars,
#            col_readonly = "mpg")

## ---- eval = FALSE------------------------------------------------------------
#  data_edit()

## ---- echo=FALSE, fig.align="center", out.width = '90%'-----------------------
knitr::include_graphics('https://raw.githubusercontent.com/DillonHammill/DataEditR/master/vignettes/DataEditR/DataEditR-7.png')

## ---- eval = FALSE------------------------------------------------------------
#  data_edit(c(20, 15))

## ---- echo=FALSE, fig.align="center", out.width = '90%'-----------------------
knitr::include_graphics('https://raw.githubusercontent.com/DillonHammill/DataEditR/master/vignettes/DataEditR/DataEditR-8.png')

## ---- eval = FALSE------------------------------------------------------------
#  data_edit(c("Date", "Country", "Temperature", "Rainfall", "Visibility", "Humidity"))

## ---- echo=FALSE, fig.align="center", out.width = '90%'-----------------------
knitr::include_graphics('https://raw.githubusercontent.com/DillonHammill/DataEditR/master/vignettes/DataEditR/DataEditR-9.png')

## ---- eval = FALSE------------------------------------------------------------
#  data_edit(mtcars)

## ---- echo=FALSE, fig.align="center", out.width = '90%'-----------------------
knitr::include_graphics('https://raw.githubusercontent.com/DillonHammill/DataEditR/master/vignettes/DataEditR/DataEditR-10.gif')

## ---- eval = FALSE------------------------------------------------------------
#  data_edit(mtcars)

## ---- echo=FALSE, fig.align="center", out.width = '90%'-----------------------
knitr::include_graphics('https://raw.githubusercontent.com/DillonHammill/DataEditR/master/vignettes/DataEditR/DataEditR-11.gif')

## ---- eval = FALSE------------------------------------------------------------
#  data_edit(mtcars)

## ---- echo=FALSE, fig.align="center", out.width = '90%'-----------------------
knitr::include_graphics('https://raw.githubusercontent.com/DillonHammill/DataEditR/master/vignettes/DataEditR/DataEditR-12.gif')

## ---- eval = FALSE------------------------------------------------------------
#  mtcars_subset <- data_edit(mtcars)
#  str(mtcars_subset)

## ---- echo=FALSE, fig.align="center", out.width = '90%'-----------------------
knitr::include_graphics('https://raw.githubusercontent.com/DillonHammill/DataEditR/master/vignettes/DataEditR/DataEditR-13.gif')

## ---- eval = FALSE------------------------------------------------------------
#  # Add character column
#  mtcars_new <- cbind(rownames(mtcars), mtcars)
#  colnames(mtcars_new) <- "car"
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

## ---- echo=FALSE, fig.align="center", out.width = '90%'-----------------------
knitr::include_graphics('https://raw.githubusercontent.com/DillonHammill/DataEditR/master/vignettes/DataEditR/DataEditR-14.png')

## ---- eval = FALSE------------------------------------------------------------
#  data_edit(mtcars,
#            col_bind = "fast",
#            col_options = list(fast = c(TRUE,FALSE)))

## ---- echo=FALSE, fig.align="center", out.width = '90%'-----------------------
knitr::include_graphics('https://raw.githubusercontent.com/DillonHammill/DataEditR/master/vignettes/DataEditR/DataEditR-15.gif')

## ---- eval = FALSE------------------------------------------------------------
#  # Add column for car colour
#  data_edit(mtcars,
#            col_bind = "colour",
#            col_options = list(colour = c("red",
#                                          "blue",
#                                          "orange",
#                                          "green",
#                                          "black")))

## ---- echo=FALSE, fig.align="center", out.width = '90%'-----------------------
knitr::include_graphics('https://raw.githubusercontent.com/DillonHammill/DataEditR/master/vignettes/DataEditR/DataEditR-16.gif')

## ---- eval = FALSE------------------------------------------------------------
#  data_edit(c("date", "time", "region", "temperature"),
#            col_options = list(date = "date"))

## ---- echo=FALSE, fig.align="center", out.width = '90%'-----------------------
knitr::include_graphics('https://raw.githubusercontent.com/DillonHammill/DataEditR/master/vignettes/DataEditR/DataEditR-17.gif')

## ---- eval = FALSE------------------------------------------------------------
#  data_edit(c("date", "time", "user", "password"),
#            col_options = list(password = "password"))

## ---- echo=FALSE, fig.align="center", out.width = '90%'-----------------------
knitr::include_graphics('https://raw.githubusercontent.com/DillonHammill/DataEditR/master/vignettes/DataEditR/DataEditR-18.gif')

## ---- eval = FALSE------------------------------------------------------------
#  data_edit(mtcars,
#            col_stretch = TRUE)

## ---- eval = FALSE------------------------------------------------------------
#  car_logo <- 'https://raw.githubusercontent.com/DillonHammill/DataEditR/master/vignettes/DataEditR/DataEditR-Car.png'
#  data_edit(mtcars,
#            logo = car_logo,
#            logo_size = 100,
#            title = "mtcars")

## ---- echo=FALSE, fig.align="center", out.width = '90%'-----------------------
knitr::include_graphics('https://raw.githubusercontent.com/DillonHammill/DataEditR/master/vignettes/DataEditR/DataEditR-19.png')

## ---- eval = FALSE------------------------------------------------------------
#  # Preset theme
#  data_edit(
#    mtcars,
#    theme = "cosmo"
#  )
#  
#  # Custom theme
#  library(bslib)
#  custom_theme <- bs_theme(
#    version = 3,
#    bootswatch = "cosmo"
#  )
#  data_edit(
#    mtcars,
#    theme = custom_theme
#  )

## ---- echo=FALSE, fig.align="center", out.width = '90%'-----------------------
knitr::include_graphics('https://raw.githubusercontent.com/DillonHammill/DataEditR/master/vignettes/DataEditR/DataEditR-20.png')

## ---- echo=FALSE, fig.align="center", out.width = '90%'-----------------------
knitr::include_graphics('https://raw.githubusercontent.com/DillonHammill/DataEditR/master/vignettes/DataEditR/DataEditR-21.gif')

## ---- eval = FALSE------------------------------------------------------------
#  library(googlesheets4)
#  
#  # Authorise
#  gs4_auth(
#    email = "username@gmail.com"
#  )
#  
#  # Create a sheet
#  ss <- gs4_create(
#    "mtcars"
#  )
#  
#  # Edit data
#  mtcars_new <- data_edit(
#    mtcars,
#    save_as = ss,
#    write_fun = "write_sheet",
#    write_args = list(sheet = "mtcars")
#  )

## ---- eval = FALSE------------------------------------------------------------
#  data_edit(mtcars,
#            code = TRUE)

## ---- eval = FALSE------------------------------------------------------------
#  data_edit(mtcars,
#            code = "mtcars_edit.R")

