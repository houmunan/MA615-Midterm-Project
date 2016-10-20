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




```{r WRONG}
test <- data[,c(1:275, 287:297, 276:286,
                
                474,476:484,475, #WHtp
                298,300:308,299, #WHMp
                386,388:396,387, #WHfp
                
                (474+11*1),(476+11*1):(484+11*1),(475+11*1), #BLKtp
                (298+11*1),(300+11*1):(308+11*1),(299+11*1), #BLKMp
                (386+11*1),(388+11*1):(396+11*1),(387+11*1), #BLKfp
                
                (474+11*2),(476+11*2):(484+11*2),(475+11*2), #HISPtp
                (298+11*2),(300+11*2):(308+11*2),(299+11*2), #HISPMp
                (386+11*2),(388+11*2):(396+11*2),(387+11*2), #HISPfp
                
                (474+11*3),(476+11*3):(484+11*3),(475+11*3), #AIANtp1
                (298+11*3),(300+11*3):(308+11*3),(299+11*3), #AIANMp1
                (386+11*3),(388+11*3):(396+11*3),(387+11*3), #AIANfp1
                
                (474+11*4),(476+11*4):(484+11*4),(475+11*4), #nhopitp
                (298+11*4),(300+11*4):(308+11*4),(299+11*4), #nhopiMp
                (386+11*4),(388+11*4):(396+11*4),(387+11*4), #nhopifp
                
                (474+11*5),(476+11*5):(484+11*5),(475+11*5), #asiantp
                (298+11*5),(300+11*5):(308+11*5),(299+11*5), #asianMp
                (386+11*5),(388+11*5):(396+11*5),(387+11*5), #asianfp
                
                (474+11*6),(476+11*6):(484+11*6),(475+11*6), #tomrtp
                (298+11*6),(300+11*6):(308+11*6),(299+11*6), #tomrMp
                (386+11*6),(388+11*6):(396+11*6),(387+11*6), #tomrfp
                
                (474+11*7),(476+11*7):(484+11*7),(475+11*7), #MinTp
                (298+11*7),(300+11*7):(308+11*7),(299+11*7), #MinMp
                (386+11*7),(388+11*7):(396+11*7),(387+11*7), #MinFp
                
                584,586:594,585, #PTOTAL
                562,564:572,563, #MTp
                573,575:583,574  #FTp
                
)]

```


