install.packages("httr")
install.packages("jsonlite")

install.packages("devtools")

library(httr)
library(jsonlite)


endpoint<-"https://api.openweathermap.org/data/2.5/weather?q=Lublin&units=metric&appid=ccd2c7f8b414cadf0c4383ce0a541dc2"

getWeather <- GET(endpoint)
getWeather
weatherText <- content(getWeather,"text")
weatherText

weatherJson <- fromJSON(weatherText, flatten=TRUE)
weatherJson

weatherDF <- as.data.frame(weatherJson)
View(weatherDF)
#View(weatherText)
