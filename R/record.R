record_col_edit <- function(x,
                            y) {
  
  # COLUMN NUMBERS
  old_cols <- ncol(x)
  new_cols <- ncol(y)
  
  # COLUMN NAMES
  old_col_names <- colnames(x)
  new_col_names <- colnames(y)
  
  # COLUMN ADDDED
  if(old_cols < new_cols) {
    add_col <- new_col_names[which(!new_col_names %in% old_col_names)]
    return("cbind(x, new_col)")
  # COLUMN REMOVED
  } else if(old_cols > new_cols) {
    remove_col <- old_col_names[which(!old_col_names %in% new_col_names)]
    return("x[, -match(remove_col, colnames(x)]")
  }
  
}

record_row_edit <- function(x,
                            y) {
  
  old_rows <- nrow(x)
  new_rows <- nrow(y)
  
  if(nrow(x) != nrow(y)) {
    
  }
  
}

record_row_name_edit <- function(x,
                                 y) {
  
}

record_col_name_edit <- function(x,
                                 y) {
  
}

record_input <- function(x,
                         y) {
  
  
  
}