#' Table plot
#'
#' @description Plot table as image
#'
#' @param tbl table data.frame
#' @param header_col color of the header
#'
#' @return prints a image
#' @export
#'
#' @examples
#'
#' df <- data.frame(grp = c("a","b","c"),
#'                 freq = c(2,4,6))
#'
#' tbl_plot(df)
#'
#'

tbl_plot <- function(tbl,header_col = "grey78"){

  n <- nrow(tbl)

  tbl_theme <- gridExtra::ttheme_minimal(
    colhead=list(bg_params = list(fill = header_col, col=NA))
  )

  out <- gridExtra::tableGrob(tbl,rows = NULL, theme = tbl_theme)

  plot(out)
}