#' ggplot2 theme
#'
#' @description no grid, text and ticks
#'
#' @return theme object
#' @export
#'
#' @examples
#' library(ggplot2)
#'
#' plot <-
#'   ggplot(mtcars,aes(hp,drat))+
#'   geom_point()
#'
#' plot
#'
#' plot + theme_map()
theme_map <-
  function(base_size = 14, base_family = ""){
    ggplot2::theme_bw(base_size = base_size, base_family = base_family) %+replace%
      ggplot2::theme(
        legend.text = element_text(size = 14, face = "bold"),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        axis.text = element_blank(),
        axis.ticks = element_blank(),
        # panel.grid.minor = element_line(colour = "gray94"),
        plot.margin = unit(c(.2,.2,.2,.2), "cm")
      )
  }
