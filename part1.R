install.packages("dplyr")
library(dplyr)

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

nei_df <- tbl_df(NEI)
scc_df <- tbl_df(SCC)

#part 1

pm1999 <- filter(nei_df, year==1999)
pm2002 <- filter(nei_df, year==2002)
pm2005 <- filter(nei_df, year==2005)
pm2008 <- filter(nei_df, year==2008)

dates <- c(1999,2002,2005,2008)
emission <- c(sum(pm1999$Emission), sum(pm2002$Emission), sum(pm2005$Emission), sum(pm2008$Emission))

part1 <- cbind(dates,emission)
colnames(part1)<- c("recorded dates", "total emissions of pm 2.5")
plot(part1, type="l")
title("pm 2.5 Emissions")

#yes total emissions of pm2.5 have decreased over the years

#-----------------------------------
