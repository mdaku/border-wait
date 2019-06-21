# border-wait.R


# @author Mark Daku
# @author Sean Nossek
# @date June 21, 2019
# @description Simple twitter application to tweet out border wait times based on open Canadian data

library(tidyverse)
library(jsonlite)
library(readr)
library(twitteR)

# Let's go

######## Read .csv and format for tweet - a visual?

# Read .csv - find way to execute this every hour? Do we need a server?

current_waits <- read_delim("http://www.cbsa-asfc.gc.ca/bwt-taf/bwt-eng.csv", delim = ";") %>% select(1,3,5,7,9,11)

# make visual or string for tweeting?






######## Tweet

# fill in info
setup_twitter_oauth(consumer_key = "",
                    access_token = "",
                    consumer_secret = "",
                    access_secret = "")

# tweet!  
tw <- updateStatus("My first tweet from R!",mediaPath = "example.jpg")

########