#' Plot all given plots in a square matrix form.
#'
#' @param plots a list of plots
#' @return plots in a given list arrangeed using gridExtra
#' @examples 
#' @export
plot_all <- function(plots, ncol = NULL) {
   
   if (class(plots) != "list") {
      stop("plot_all() doesn't know how to handle non-list input")
   }
   
   if (is.null(ncol)) {
      ncol = get_ncol(length(plots))
   }
   
   return (do.call("grid.arrange", c(plots, ncol = ncol)))
}