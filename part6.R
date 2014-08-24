#part6
selected_numbers <- grep("Motor", SCC$EI.Sector, perl=TRUE, value=FALSE)

selected_scc <- scc_df[selected_numbers,][,1]

part6 <- data.frame()

for (i in 1:length(selected_scc)){
  for (j in 1:nrow(nei_df)) {
    if(selected_scc[i]==nei_df$SCC[j]) {
      part6 <- rbind(part6, nei_df[j,])
    }
  }
}

colnames(part5)<- colnames(nei_df)

part6_1999 <- filter(part4, year==1999, fips =="06037")
part6_2002 <- filter(part4, year==2002, fips =="06037")
part6_2005 <- filter(part4, year==2005, fips =="06037")
part6_2008 <- filter(part4, year==2008, fips =="06037")

dates <- c(1999,2002,2005,2008)
emission <- c(sum(part6_1999$Emission), sum(part6_2002$Emission), sum(part6_2005$Emission), sum(part6_2008$Emission))
part6plot <- cbind(dates,emission)

ggplot()  + geom_line(data=part4, aes(x=dates, y=emission), color='green') 
+ geom_line(data=part5, aes(x=dates, y=emission), color='red')
