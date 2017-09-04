#' Convert HTML to Text
#'
#' @param x HTML content (length 1 character vector)
#' @param include_attributes Sets whether any attribute values are included in the output
#' @return character vector of cleaned text
#' @export
html_to_text <- function(x, include_attributes = FALSE) {
  x <- x[1]
  h2t <- J("is.rud.jericho.App")$html_to_text
  h2t(x, include_attributes)
}

#' Render HTML to Text
#'
#' This provides a human readable version of the segment content that is modelled on
#' the way Mozilla Thunderbird and other email clients provide an automatic conversion
#' of HTML content to text in their alternative MIME encoding of emails.
#'
#' @param x HTML content (length 1 character vector)
#' @return character vector of cleaned text
#' @export
render_html_to_text <- function(x) {
  x <- x[1]
  r2t <- J("is.rud.jericho.App")$render_html_to_text
  r2t(x)
}
