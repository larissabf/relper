#' Coefficient of variation (CV)
#'
#' @description Coefficient of variation
#'
#' @param x numeric vector
#' @param perc as percentage (T = default)
#'
#' @return Coefficient of variation
#' @export
#'
#' @examples
#'
#' x <- rnorm(100,1)
#'
#' cv(x)
#'

cv <- function(x, perc = T){

    if(perc == T){
      100*sd(x)/mean(x)
    } else{
      sd(x)/mean(x)
    }

  }