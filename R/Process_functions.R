#' This functions parses the raw emali to metadata and body
#'
#' @import tidytext
#'
#' @import readtext
#'
#' @import tidyverse
#'
#' @param raw_emal string
#'
#' @return list of metadata and body

parse.raw.email = function(raw_email){

  breaks = str_locate(raw_email,"\n\n") %>%
    as.data.frame()

  header = str_sub(raw_email, start =  breaks[,1] - 1)

  body = str_sub(raw_email, start =  breaks[,2] + 1)

  return(list(metadata = header, body = body))


}
