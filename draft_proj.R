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



#=================DRAFT=====================================================================





#Drafts

```{r}
data_TOTAL <- gather(data_TOTAL, INDUSTRY_T, INDUSTRY_count, 5:15)
data_TOTAL <- gather(data_TOTAL, INDUSTRY_M, INDUSTRY_count, 5:15)
data_TOTAL <- gather(data_TOTAL, INDUSTRY_F, INDUSTRY_count, 5:15)
head(data_TOTAL)
```

```{r gather WH}
data2 <- gather(data, INDUSTRY_TOTAL, INDUSTRY_count, 5:15)
head(data2[,c(1:4,590,591)])
```


```{r forgot merge by multiple columns}
data_sort_in_T <- data[c(1, 6:16)]
data_sort_in_M <- data[c(1, 17:27)]
data_sort_in_F <- data[c(1, 28:38)]

INDUSTRY_NAME <- c("label", 1:11)
names(data_sort_in_T) <- names(data_sort_in_M) <- names(data_sort_in_F) <- INDUSTRY_NAME


data_sort_in_T <- gather(data_sort_in_T, INDUSTRY, count_Tt, 2:12)
data_sort_in_M <- gather(data_sort_in_M, INDUSTRY, count_Tm, 2:12)
data_sort_in_F <- gather(data_sort_in_F, INDUSTRY, count_Tf, 2:12)

data_sort_in_T$label_2 <- c(1:nrow(data_sort_in_T))
data_sort_in_M$label_2 <- c(1:nrow(data_sort_in_M)) 
data_sort_in_F$label_2 <- c(1:nrow(data_sort_in_F))  

data_sort_in_T <- data_sort_in_T[,-1]
data_sort_in_M <- data_sort_in_M[,-(1:2)]
data_sort_in_F <- data_sort_in_F[,-(1:2)]

data_sort_in <- left_join(data_sort_in_T, data_sort_in_F, by="label_2")
data_sort_in <- left_join(data_sort_in, data_sort_in_M, by="label_2")
```

```{r fixed one step}
data_sort_in_T <- data[c(1, 6:16)]
data_sort_in_M <- data[c(1, 17:27)]
data_sort_in_F <- data[c(1, 28:38)]

INDUSTRY_NAME <- c("label", 1:11)
as.numeric(INDUSTRY_NAME)
names(data_sort_in_T) <- names(data_sort_in_M) <- names(data_sort_in_F) <- INDUSTRY_NAME


data_sort_in_T <- gather(data_sort_in_T, INDUSTRY, count_Tt, 2:12)
data_sort_in_M <- gather(data_sort_in_M, INDUSTRY, count_Tm, 2:12)
data_sort_in_F <- gather(data_sort_in_F, INDUSTRY, count_Tf, 2:12)



data_sort_in <- merge(data_sort_in_T, data_sort_in_M, by=c("label", "INDUSTRY"))
data_sort_in <- merge(data_sort_in, data_sort_in_F, by=c("label", "INDUSTRY"))
```

rm(data_TOTAL_gathered)

```{r}
data_WH
data_BLK
data_HISP
data_ASIAN
data_AIAN
data_nhopi
data_tomr
data_Min
data_WHp
data_BLKp
data_HISPp
data_AIANp
data_nhopip
data_asianp
data_tomrp
data_Minp
data_PTOTAL
```


```{r}
data2 <- data
gather(data2, INDUSTRY, )
```

stocks <- data_frame(
  time = as.Date('2009-01-01') + 0:9,
  X = rnorm(10, 0, 1),
  Y = rnorm(10, 0, 2),
  Z = rnorm(10, 0, 4)
)

stocks3 <- gather(stocks, stock, price, 2:4)
stocksb <- data.frame(stocks,
                      A = rnorm(10, 0, 8),
                      B = rnorm(10, 0, 16),
                      C = rnorm(10, 0, 32)
)

```{r}

```

bind_rows()

4+11*18*3
ncol(data)



```{r}
seqtemp <- seq(1,length(data),1)
v <- c()
for (i in seqtemp){
  v[i] <- c(is.null(data[i]))
}
print(v)
```

v <- c(data$NAC3_Label)
vFIRMS <- c(data$FIRMS)
head(vFIRMS, n = 100)
unique(data$FIRMS)

head(data$WHMp1)
head(data$WHfp1)
sump <- data$WHMp1 + data$WHfp1
head(sump)

rm(data)
data2 <- data



?read.table
rm("data")


count(unique(data$NAC3_Label))
count(data, NAC3_Label)
count(data, CBSA_LABEL)
vcount <- count(data, TOTAL_UNIT)

head(vcount)
hist(vcount)


count()

TOTAL_UNIT <- data$TOTAL_UNIT
ggplot(data, aes(x = TOTAL_UNIT, y = count(data$TOTAL_UNIT))) + geom_histogram(binwidth = 5)




data[!complete.cases(data),]

tbl = tabular 扁平的




cc <- count(data, pctofst)


#Split

Split by RACE, GENDER, 

```{r}
data_TOTAL <- data[c(5:15)]
data_TOTAL_gathered <- gather(data_TOTAL, INDUSTRY, count, 1:11)
data_TOTAL_gathered <- mutate(data_TOTAL_gathered, RACE = "T", GENDER = "T")
#stocks3 <- gather(stocks, stock, price, 2:4)
```

























