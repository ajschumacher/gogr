#' Use gog visualization system from R
#'
#' Communicate with a \href{https://github.com/ajschumacher/gog}{gog}
#' server for data visualization independent of R.
#'
#' @docType package
#' @name gogr
#' @import jsonlite
#' @import httr
NULL

#' Send data to a gog server
#'
#' This function takes takes a data frame and sends it to a gog server.
#' The gog server is responsible for passing the data to a gog frontend
#' for visualization.
#'
#' @param x a data frame
#' @param url the gog /data endpoint to send to
#'
#' @export
#' @examples
#' \dontrun{
#' gog(iris)
#' }
gog <- function(x, url="http://localhost:4808/data") {
  text <- toJSON(x)
  response <- POST(url, body=text)
  invisible(response)
}
