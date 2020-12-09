
#' Get Series Data from FRED
#'
#' @param APIkey Your API key for FRED( which could get freely from FRED)
#' @param series_id the specific data you want to require from FRED
#' @param observation_start the start time of the observation
#'
#' @return a data frame with date and required value from the observation date you give
#' @export
#'
#' @examples
#' fred_get_series("API_KEY",c("GNPCA", "CPIAUCSL"),"1990-01-01")
#'

fred_get_series <- function(APIkey, series_id, observation_start){
  URL = "https://api.stlouisfed.org/fred/series/observations"

  parameters = paste(
    "?series_id=",series_id,
    "&api_key=", APIkey,
    "&file_type=json",
    "&observation_start=",observation_start,
    sep = "")
  PATH = paste0(URL, parameters)

  initialquery = jsonlite::fromJSON(PATH)
  df = initialquery$observations
  rownames(df) <- df$date

  df = df[c("value")]
  df$value <- as.numeric(df$value)

  return(df)
}
