#part 3
install.packages("ggplot2")
library(ggplot2)

pm_point1999 <- filter(nei_df, year==1999, fips =="24510", type == "point")
pm_point2002 <- filter(nei_df, year==2002, fips =="24510", type == "point")
pm_point2005 <- filter(nei_df, year==2005, fips =="24510", type == "point")
pm_point2008 <- filter(nei_df, year==2008, fips =="24510", type == "point")

pm_nonpoint1999 <- filter(nei_df, year==1999, fips =="24510", type =="nonpoint")
pm_nonpoint2002 <- filter(nei_df, year==2002, fips =="24510", type =="nonpoint")
pm_nonpoint2005 <- filter(nei_df, year==2005, fips =="24510", type =="nonpoint")
pm_nonpoint2008 <- filter(nei_df, year==2008, fips =="24510", type =="nonpoint")

pm_onroad1999 <- filter(nei_df, year==1999, fips =="24510", type=="onroad")
pm_onroad2002 <- filter(nei_df, year==2002, fips =="24510", type=="onroad")
pm_onroad2005 <- filter(nei_df, year==2005, fips =="24510", type=="onroad")
pm_onroad2008 <- filter(nei_df, year==2008, fips =="24510", type=="onroad")

pm_nonroad1999 <- filter(nei_df, year==1999, fips =="24510", type=="nonroad")
pm_nonroad2002 <- filter(nei_df, year==2002, fips =="24510", type=="nonroad")
pm_nonroad2005 <- filter(nei_df, year==2005, fips =="24510", type=="nonroad")
pm_nonroad2008 <- filter(nei_df, year==2008, fips =="24510", type=="nonroad")

dates <- c(1999,2002,2005,2008)
emission_point <- c(sum(pm_point1999$Emission), sum(pm_point2002$Emission), sum(pm_point2005$Emission), sum(pm_point2008$Emission))
emission_nonpoint <- c(sum(pm_nonpoint1999$Emission), sum(pm_nonpoint2002$Emission), sum(pm_nonpoint2005$Emission), sum(pm_nonpoint2008$Emission))
emission_onroad <- c(sum(pm_onroad1999$Emission), sum(pm_onroad2002$Emission), sum(pm_onroad2005$Emission), sum(pm_onroad2008$Emission))
emission_nonroad <- c(sum(pm_nonroad1999$Emission), sum(pm_nonroad2002$Emission), sum(pm_nonroad2005$Emission), sum(pm_nonroad2008$Emission))

point <- cbind(dates,emission_point)
nonpoint <- cbind(dates,emission_nonpoint)
onroad <- cbind(dates,emission_onroad)
nonroad <- cbind(dates,emission_nonroad)

ggplot()  + geom_line(data=as.data.frame(point), aes(x=dates, y=emission), color='green') 
          + geom_line(data=as.data.frame(nonpoint), aes(x=dates, y=emission), color='red')
          + geom_line(data=as.data.frame(onroad), aes(x=dates, y=emission), color='blue')
          + geom_line(data=as.data.frame(nonroad), aes(x=dates, y=emission), color='purple')
legend("topright", c("point", "nonpoint", "onroad", "nonroad")

#-----------------------------------       
