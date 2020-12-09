
#' Get Astronomy Picture of the Day from NASA
#'
#' @description Get the information about the astronomy picture of the day you select from NASA.
#'
#' @param date which should be in date format
#'
#' @return a data frame incluing all the information including explanation, picture url, author and so on.
#' @export
#'
#' @examples gene_APOD("2019-01-01")
#'
gene_APOD <- function(date){
  APIkey_N  <- "dZ6ULst4xpi5OXSEMSUPZPU5PfIe9VaCC87zC9Ac"
  URL <- paste("https://api.nasa.gov/planetary/apod?date=",as.Date(date),"&api_key=" , sep="")
  PATH <- paste(URL,APIkey_N,sep="")

  initial_APOD <- as.data.frame(jsonlite::fromJSON(PATH))
  return(initial_APOD)}
