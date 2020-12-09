
#' Descriptive Plot
#' @description Plot the descriptive plots for certain dataset including histogram,
#' density plot, Quantile Plot and Boxplot.
#'
#' @param x the data-set you want to plot
#'
#' @return a 2 x 2 gragh with 4 plots showing descriptive analysis
#' @export
#'
#' @examples
#' data <- read.csv("data.csv")
#' decp_plot(data)
#'
decp_plot<- function(x){
  par(mfrow=c(2,2),mar=c(2, 4, 3, 2))
  hist(x,main = "(a) Histogram")
  plot(density(x,na.rm = TRUE),main = "(b) Density estimate")
  qqnorm(x,main = "(c) QQ-plot")
  boxplot(x,main="(d) Boxplot")
}
