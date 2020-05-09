#' ggplot2 theme
#'
#' @description no minor grid and major y grid
#'
#' @return ggplot2 theme
#' @export
#'
#' @examples
#'
#' library(ggplot2)
#'
#' plot <-
#'   ggplot(mtcars,aes(hp,drat))+
#'   geom_point()
#'
#' plot
#'
#' plot + theme_x()
#'

theme_x <-
  function(base_size = 14, base_family = ""){
    ggplot2::theme_bw(base_size = base_size, base_family = base_family) %+replace%
      ggplot2::theme(
        legend.text = element_text(size = 14, face = "bold"),
        panel.grid.major.y = element_blank(),
        panel.grid.minor = element_blank(),
        plot.margin = unit(c(.2,.2,.2,.2), "cm")
      )
  }