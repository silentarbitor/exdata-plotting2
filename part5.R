#part5

selected_numbers <- grep("Motor", SCC$EI.Sector, perl=TRUE, value=FALSE)

selected_scc <- scc_df[selected_numbers,][,1]

part5 <- data.frame()

for (i in 1:length(selected_scc)){
  for (j in 1:nrow(nei_df)) {
    if(selected_scc[i]==nei_df$SCC[j]) {
      part5 <- rbind(part5, nei_df[j,])
    }
  }
}

colnames(part5)<- colnames(nei_df)

part5_1999 <- filter(part4, year==1999, fips =="24510")
part5_2002 <- filter(part4, year==2002, fips =="24510")
part5_2005 <- filter(part4, year==2005, fips =="24510")
part5_2008 <- filter(part4, year==2008, fips =="24510")

dates <- c(1999,2002,2005,2008)
emission <- c(sum(part5_1999$Emission), sum(part5_2002$Emission), sum(part5_2005$Emission), sum(part5_2008$Emission))
part5plot <- cbind(dates,emission)

plot(part5plot, type = "l")
title("emissions from motor sources")

#emissions have stayed around the same

#-----------------------------------       
