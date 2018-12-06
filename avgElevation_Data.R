library(mdsr)   # Load additional packages here 
library(tidyverse)
library(rvest)


wikiTable <- function(source) {
  read_html(source)%>%
    html_nodes("table.wikitable") %>%
    html_table(fill=T)%>%
    magrittr::extract2(1)
}


elevation <- wikiTable("https://en.wikipedia.org/wiki/List_of_countries_by_average_elevation#cite_note-1")



elevation