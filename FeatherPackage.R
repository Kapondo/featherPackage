library(feather)

write_feather(mtcars, "mtcars.feather")

mtcars2 <- read_feather("mtcars.feather");
mtcars2

mtcars3 <- read_feather(feather_example("mtcars.feather"))
mtcars3

x <- runif(1e7)
x[sample(1e7, 1e6)] <- NA # 10% NAs
df <- as.data.frame(replicate(10, x))
write_feather(df, 'test.feather')

system.time(read_feather('test.feather'))

# ************************************************************ #

library(curl)
library(feather)
curl_download("https://demo.ocpu.io/ggplot2/data/diamonds/feather", "diamonds.feather")
mydiamonds <- read_feather("diamonds.feather")