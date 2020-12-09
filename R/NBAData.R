#' NBA Stat
#' @description the stat for all NBA player in 2019, ordering by their age and classifying by their position.
#'

#'@format 110 X 30 data frame each
#' @examples "NBA_Center"
#'
#'

NBA_Center <- read_xlsx("NBAStatByPos_YiranSun.xlsx",sheet="Center",col_names=TRUE)
usethis::use_data(NBA_Center, overwrite = TRUE)

NBA_PG <- read_xlsx("NBAStatByPos_YiranSun.xlsx",sheet="PointGuard",col_names=TRUE)
usethis::use_data(NBA_PG, overwrite = TRUE)

NBA_SG <- read_xlsx("NBAStatByPos_YiranSun.xlsx",sheet="ShootingGuard",col_names=TRUE)
usethis::use_data(NBA_SG, overwrite = TRUE)

NBA_SF <- read_xlsx("NBAStatByPos_YiranSun.xlsx",sheet="SmallForward",col_names=TRUE)
usethis::use_data(NBA_SF, overwrite = TRUE)

NBA_PF <- read_xlsx("NBAStatByPos_YiranSun.xlsx",sheet="PowerForward",col_names=TRUE)
usethis::use_data(NBA_PF, overwrite = TRUE)
