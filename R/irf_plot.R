#' irf Plot
#' @description To plot prediction Impulse response function in 4 separate graphs
#' in case the two variables have toally different y-scale.
#'
#' @param y_model This is a VAR model for  prediction.
#' @param k predict k steps ahead, for example, 12 or 36.
#'
#' @return 4 plot
#' @export
#'
#' @examples irf_plot(model,36)
#'
irf_plot <- function(y_model,k){
  value <- vars::irf(y_model,n.ahead=k)

  Shock.1 <- value$irf[1][[1]]
  Shock.1.LB <- value$Lower[1][[1]]
  Shock.1.UP <- value$Upper[1][[1]]

  Shock.2 <- value$irf[2][[1]]
  Shock.2.LB <- value$Lower[2][[1]]
  Shock.2.UP <- value$Upper[2][[1]]

  par(mfrow=c(2,2))
  plot(1:(k+1),Shock.1[,1],type="l",
       ylim=c(floor(min(Shock.1.LB[,1])),ceiling(max(Shock.1.UP[,1]))),
       ylab=value$response[1],xlab="Forecast k periods",
       main=c("Shock from",value$response[1]))
  lines(Shock.1.LB[,1],col="red",lty=2)
  lines(Shock.1.UP[,1],col="red",lty=2)
  abline(h=0,col="steelblue",lty=2)

  plot(1:(k+1),Shock.1[,2],type="l",
       ylim=c(floor(min(Shock.1.LB[,2])),ceiling(max(Shock.1.UP[,2]))),
       ylab=value$response[2], xlab="Forecast k periods",
       main=c("Shock from",value$response[1]))
  lines(Shock.1.LB[,2],col="red",lty=2)
  lines(Shock.1.UP[,2],col="red",lty=2)
  abline(h=0,col="steelblue",lty=2)

  plot(1:(k+1),Shock.2[,1],type="l",
       ylim=c(floor(min(Shock.2.LB[,1])),ceiling(max(Shock.2.UP[,1]))),
       ylab=value$response[1], xlab="Forecast k periods",
       main=c("Shock from",value$response[2]))
  lines(Shock.2.LB[,1],col="red",lty=2)
  lines(Shock.2.UP[,1],col="red",lty=2)
  abline(h=0,col="steelblue",lty=2)

  plot(1:(k+1),Shock.2[,2],type="l",
       ylim=c(floor(min(Shock.2.LB[,2])),ceiling(max(Shock.2.UP[,2]))),
       ylab=value$response[2], xlab="Forecast k periods",
       main=c("Shock from",value$response[2]))
  lines(Shock.2.LB[,2],col="red",lty=2)
  lines(Shock.2.UP[,2],col="red",lty=2)
  abline(h=0,col="steelblue",lty=2)
}
