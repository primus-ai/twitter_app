library(tidyverse)
library(igraph)
library(lubridate)
library(rtweet)
library(highcharter)
library(twinetverse)
library(visNetwork)

# Get Constituyentes Data

# constituyentes <- lists_members(list_id = "1395879401858994179")
# constituyentes <- constituyentes %>% filter(screen_name != "convencioncl")
# saveRDS(constituyentes, file = "data/constituyentes.rds")
constituyentes <- readRDS(file = "data/constituyentes.rds")

constituyentes_tweets <- get_timeline(constituyentes$screen_name, n = 10)