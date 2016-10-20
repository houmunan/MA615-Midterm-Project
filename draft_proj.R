install.packages("dplyr")
library(dplyr)
library(ggplot2)



apropos("environment")
?rs.environment
?.rs.saveEnvironment
?as.environment


?count
count
variable.names(data)
NAC3_Label <- c(data2$NAC3_Label)
head(data)
unique(data$NAC3_Label)
unique(data$CBSA_LABEL)
is.factor(NAC3_Label)
is.numeric(NAC3_Label)

is.numeric(data$NAC3_Label)
# [1] FALSE
is.factor(data$NAC3_Label)
# [1] TRUE



stocksc <- stocksb[-c(3,4,7)]
full_join(stocks, stocksc, by"")


#stocksb test
data_temp0 <- select(data2, contains("TOTAL"))
data_temp <- data_temp[,-c(1,13:23)]
data_temp <- ddply(data_temp, "TOTAL_UNIT", transform)
?ddply

