#part 2

pm1999 <- filter(nei_df, year==1999, fips =="24510")
pm2002 <- filter(nei_df, year==2002, fips =="24510")
pm2005 <- filter(nei_df, year==2005, fips =="24510")
pm2008 <- filter(nei_df, year==2008, fips =="24510")

dates <- c(1999,2002,2005,2008)
emission <- c(sum(pm1999$Emission), sum(pm2002$Emission), sum(pm2005$Emission), sum(pm2008$Emission))

part2 <- cbind(dates,emission)
plot(part2, type="l")
title("Emissions for Baltimore City, Maryland")

#yes total emissions have decreased although there was a rise in emissions from 2002-2006

#-----------------------------------
