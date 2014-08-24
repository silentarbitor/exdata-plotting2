#part4

selected_numbers <- grep("Coal", SCC$EI.Sector, perl=TRUE, value=FALSE)

selected_scc <- scc_df[selected_numbers,][,1]

part4 <- data.frame()

for (i in 1:length(selected_scc)){
  for (j in 1:nrow(nei_df)) {
  if(selected_scc[i]==nei_df$SCC[j]) {
      part4 <- rbind(part4, nei_df[j,])
    }
  }
}

colnames(part4)<- colnames(nei_df)

part4_1999 <- filter(part4, year==1999)
part4_2002 <- filter(part4, year==2002)
part4_2005 <- filter(part4, year==2005)
part4_2008 <- filter(part4, year==2008)

dates <- c(1999,2002,2005,2008)
emission <- c(sum(part4_1999$Emission), sum(part4_2002$Emission), sum(part4_2005$Emission), sum(part4_2008$Emission))
part4plot <- cbind(dates,emission)

plot(part4plot, type = "l")
title("emissions from coal combustion sources")

#yes total emissions of pm2.5 slightly decreased over the years

#-----------------------------------       
