library(lubridate)
library(readr)
library(stringr)
library(dplyr)
library(tidyverse)
ads = read.csv("Ads Data.csv")
users = read.csv("User Data.csv")

names(ads)[1]<-"PLATFORM_NAME"
names(ads)[2]<-"DATE"
names(ads)[3]<-"AD_VIEWS"

ads$AD_VIEWS = as.numeric(ads$AD_VIEWS)

head(ads)

# xbox one
ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle XboxOne App Stream - US", 
                                replacement = "Xbox One")

ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle XboxOne App Stream - CA", 
                                replacement = "Xbox One")
ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle XboxOne App Stream - Australia", 
                                replacement = "Xbox One")
## amazon tv
ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle Amazon TV App - US", 
                                replacement = "Amazon Fire TV & Stick")
ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle Amazon TV App - CA", 
                                replacement = "Amazon Fire TV & Stick")
ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle Amazon TV App - Australia", 
                                replacement = "Amazon Fire TV & Stick")
ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle Amazon TV App - Canada", 
                                replacement = "Amazon Fire TV & Stick")
ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle Amazon TV Stick App - US", 
                                replacement = "Amazon Fire TV & Stick")
# Android Handset
ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle Android Handset App - US", 
                                replacement = "Android Phone")
ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle Android Handset App - CA", 
                                replacement = "Android Phone")
ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle Android Handset App - Australia", 
                                replacement = "Android Phone")
ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle Android Handset App - Canada", 
                                replacement = "Android Phone")
# Android Tablet App
ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle Android Tablet App - Australia", 
                                replacement = "Android Tablet")
ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle Android Tablet App - Canada", 
                                replacement = "Android Tablet")
ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle Android Tablet App - US", 
                                replacement = "Android Tablet")
# Android TV App
ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle Android TV App - Australia", 
                                replacement = "Android TV")
ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle Android TV App - Canada", 
                                replacement = "Android TV")
ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle Android TV App - US", 
                                replacement = "Android TV")
#Apple TV App
ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle Apple TV App - Australia", 
                                replacement = "Apple TV")
ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle Apple TV App - Canada", 
                                replacement = "Apple TV")
ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle Apple TV App - US", 
                                replacement = "Apple TV")
# Bravia
ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle Bravia - Australia", 
                                replacement = "BRAVIA Internet Video Link")
ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle Bravia - Canada", 
                                replacement = "BRAVIA Internet Video Link")
ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle Bravia - US", 
                                replacement = "BRAVIA Internet Video Link")
# Chrome
ads = ads[!ads$PLATFORM_NAME == "Crackle Chrome Web App - US",]
#ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle Chrome Web App - US", 
# replacement = "Crackle Chrome App")
## Chromecast
ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle Chromecast App - Australia", 
                                replacement = "Chromecast")
ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle Chromecast App - Canada", 
                                replacement = "Chromecast")
ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle Chromecast App - US", 
                                replacement = "Chromecast")
# Ipad App
ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle iPad App - Australia", 
                                replacement = "iPad")
ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle iPad App - Canada", 
                                replacement = "iPad")
ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle iPad App - US", 
                                replacement = "iPad")
# Crackle iPhone/iPod App
ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle iPhone/iPod App - Australia", 
                                replacement = "iPhone")
ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle iPhone/iPod App - Canada", 
                                replacement = "iPhone")
ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle iPhone/iPod App - US", 
                                replacement = "iPhone")
# Crack LG App
ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle LG App - Australia", 
                                replacement = "LG TV")
ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle LG App - Canada", 
                                replacement = "LG TV")
ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle LG App - US", 
                                replacement = "LG TV")
# Crackle Mobile webPLATFORM_NAME
ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle Mobile WebPLATFORM_NAME - Australia", 
                                replacement = "m.Crackle.com")
ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle Mobile WebPLATFORM_NAME - Canada", 
                                replacement = "m.Crackle.com")
ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle Mobile WebPLATFORM_NAME - US", 
                                replacement = "m.Crackle.com")
# Opera TV App
ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle Opera TV App - Australia", 
                                replacement = "Sony Opera TV")
ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle Opera TV App - Canada", 
                                replacement = "Sony Opera TV")
ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle Opera TV App - US", 
                                replacement = "Sony Opera TV")
# PS Vita
ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle PS Vita App - Canada", 
                                replacement = "PlayStation Vita")
ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle PS Vita App - US", 
                                replacement = "PlayStation Vita")
# PS3 App
ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle PS3 App - Australia", 
                                replacement = "PlayStation 3")
ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle PS3 App - Canada", 
                                replacement = "PlayStation 3")
ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle PS3 App - US", 
                                replacement = "PlayStation 3")
ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle PS3 Store", 
                                replacement = "PlayStation 3 Store")
#PS4
ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle PS4 App - Australia", 
                                replacement = "PlayStation 4")
ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle PS4 App - Canada", 
                                replacement = "PlayStation 4")
ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle PS4 App - US", 
                                replacement = "PlayStation 4")
#Roku
ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle Roku - Canada", 
                                replacement = "Roku")
ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle Roku - US", 
                                replacement = "Roku")
# Roku App Stream
ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle Roku App Stream - Canada", 
                                replacement = "Roku")
ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle Roku App Stream - US", 
                                replacement = "Roku")
ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle Roku", replacement = "Roku")
# Samsung App
ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle Samsung App - Australia", 
                                replacement = "Samsung TV")
ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle Samsung App - Canada", 
                                replacement = "Samsung TV")
ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle Samsung App - US", 
                                replacement = "Samsung TV")
#Sony TV App
ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle Sony TV App - Australia", 
                                replacement = "Sony TV")
ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle Sony TV App - Canada", 
                                replacement = "Sony TV")
ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle Sony TV App - US", 
                                replacement = "Sony TV")
# Vizio App
ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle Vizio App - Australia", 
                                replacement = "Vizio TV")
ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle Vizio App - Canada", 
                                replacement = "Vizio TV")
ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle Vizio App", replacement = "Vizio TV")
# toshiba 

ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle Toshiba App", replacement = "Toshiba Tv")

#Crackle WebPLATFORM_NAME
ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle WebPLATFORM_NAME - Australia", 
                                replacement = "Crackle.com")
ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle WebPLATFORM_NAME - Canada", 
                                replacement = "Crackle.com")
ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle WebPLATFORM_NAME - US", 
                                replacement = "Crackle.com")
# xbox 360
ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle Xbox 360 App - Australia", 
                                replacement = "Xbox 360")
ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle Xbox 360 App - Canada", 
                                replacement = "Xbox 360")
ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle Xbox 360 App - US", 
                                replacement = "Xbox 360")
# windows
ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle Windows 8 App", 
                                replacement = "Windows 8")
ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle Windows Phone App", 
                                replacement = "Windows Phone")
#yahoo
ads$PLATFORM_NAME = str_replace(ads$PLATFORM_NAME, pattern = "Crackle Yahoo App",
                                replacement = "Yahoo Widgets")

ads = ads%>%
  group_by(PLATFORM_NAME,DATE) %>%
  summarise(TOTAL_AD_VIEWS = sum(AD_VIEWS))

ads = ads%>%
  separate(col = `DATE`, into = c("MONTH", "YEAR"), sep = "-", remove = T)

ads$YEAR = str_replace(ads$YEAR, pattern = "17", replacement = "2017")




## USERS#######################################

users = users[!users$PLATFORM_NAME == "ComediansInCarsGettingCoffee.com",]
users = users[!users$PLATFORM_NAME == "Blackberry Phone",]
users = users[!users$PLATFORM_NAME == "Windows 10",]
users = users[!users$PLATFORM_NAME == "",]

users$PLATFORM_NAME = str_replace(users$PLATFORM_NAME, pattern = "m.crackle.com",
                                  replacement = "m.Crackle.com")


users$MONTH = month.abb[users$MONTH]


### Merge Data

users = users %>%
  unite("MONTH_YEAR", MONTH, YEAR, sep = "-", remove=FALSE)

ads = ads %>%
  unite("MONTH_YEAR", MONTH, YEAR, sep = "-", remove=FALSE)

ads_users = merge(ads, users)

### Analysis

head(ads_users)

ads_users = ads_users %>%
  mutate(ViewTime_Session= MINUTES/STREAMS)%>%
  mutate(AdViews_Session= TOTAL_AD_VIEWS/STREAMS)%>%
  mutate(AdViews_User= TOTAL_AD_VIEWS/UNIQUES)%>%
  mutate(Total_Revenue= TOTAL_AD_VIEWS*50/1000)%>%
  mutate(Revenue_User= Total_Revenue/UNIQUES)%>%
  mutate(RegisterUser_Ratio= UNIQUES_REG/UNIQUES)


##Graphs
library(ggplot2)

ads_users$MONTH_YEAR=ordered(ads_users$MONTH_YEAR,
                             levels=c("Jan-2017",
                                      "Feb-2017",
                                      "Mar-2017",
                                      "Apr-2017",
                                      "May-2017",
                                      "Jun-2017",
                                      "Jul-2017",
                                      "Aug-2017",
                                      "Sep-2017",
                                      "Oct-2017",
                                      "Nov-2017",
                                      "Dec-2017"))

###Line graph with two different Y scales - Uniques VS Registered Uniques
library(latticeExtra)

AvgUniques=ads_users %>%
  group_by(MONTH_YEAR) %>%
  summarise(Average=mean(UNIQUES))

AvgUniquesReg=ads_users %>%
  group_by(MONTH_YEAR) %>%
  summarise(Average=mean(UNIQUES_REG))

xy1=xyplot(Average~MONTH_YEAR, 
           AvgUniques, 
           main= "Users VS Registered Users",
           xlab = "Months",
           type = "o", lwd=1)

xy2=xyplot(Average~MONTH_YEAR, AvgUniquesReg, type = "o", lwd=1) 

doubleYScale(xy1, 
             xy2, 
             text = c("Average Number of Users", "Average Number of Registered Users"), 
             add.ylab2=TRUE)

##Grouped barchart: Platform and Total Ad Views
ggplot(ads_users,
       aes(fill=PLATFORM_TYPE,
           y=TOTAL_AD_VIEWS,
           x=MONTH_YEAR)) +
  geom_bar(stat = "identity", position = "dodge") +
  ggtitle("Total Ad Views") +
  xlab ("Months") +
  ylab ("Total Ad Views") +
  theme(plot.title = element_text(hjust = 0.5), legend.position = "top") +
  scale_fill_discrete(name = "Platform")



##Stacked barplot: Platform and Total Revenue
ggplot(ads_users,
       aes(fill=PLATFORM_TYPE,
           y=Total_Revenue,
           x=MONTH_YEAR)) +
  geom_bar(stat = "identity") +
  ggtitle("Total Revenue") +
  xlab ("Months") +
  ylab ("Revenue") +
  theme(plot.title = element_text(hjust = 0.5), legend.position = "top") +
  scale_fill_discrete(name = "Platform")


##Stacked Percent Barplot: Platform and View Time Session
ggplot(ads_users,
       aes(fill=PLATFORM_TYPE,
           y=ViewTime_Session,
           x=MONTH_YEAR)) +
  geom_bar(stat = "identity", position = "fill") +
  ggtitle("View Time Sessions") +
  xlab ("Months") +
  ylab ("View Time (%)") +
  theme(plot.title = element_text(hjust = 0.5), legend.position = "top") +
  scale_fill_discrete(name = "Platform") 

##Facet barplot: Users VS Platform
ggplot(ads_users,
       aes(fill=PLATFORM_NAME,
           y=UNIQUES,
           x=MONTH_YEAR)) +
  geom_bar(stat = "identity") +
  facet_wrap(~PLATFORM_TYPE, scales = "free") +
  ggtitle("Users VS Platform") +
  xlab ("Months") +
  ylab ("Users") +
  theme(plot.title = element_text(hjust = 0.5), legend.position = "top", axis.text.x = element_text(angle=90, hjust=1)) +
  scale_fill_discrete(name = "Platform Name")

##Treemap: Comparison of specific platforms
library(treemap)
treemap(ads_users,
        index = c("PLATFORM_TYPE", "PLATFORM_NAME"),
        vSize="TOTAL_AD_VIEWS",
        type="index",
        title = "Total Ad Views by Platform")



##Boxplot grouped : Number of Users VS Platform 
ggplot(ads_users, 
       aes(x=as.factor(MONTH_YEAR),
           y=UNIQUES,
           fill=PLATFORM_TYPE)) +
  geom_boxplot(fill="red", alpha=.5) +
  facet_wrap(~PLATFORM_TYPE, scale="free")+
  stat_summary(fun.y=mean, geom="point", shape=20, size=5, color="black", fill="red") +
  theme(plot.title = element_text(hjust = 0.5), legend.position = "top", axis.text.x = element_text(angle=90, hjust=1)) +
  xlab("Months") +
  ylab("Number of Users") +
  ggtitle("Users on Each Platform")


##Scatterplot - Ad View Time Sessions by Users
ggplot(ads_users,
       aes(x=UNIQUES,
           y=TOTAL_AD_VIEWS,
           color=PLATFORM_TYPE,
           shape=PLATFORM_TYPE)) +
  geom_point(alpha=.5) +
  scale_x_continuous(limits=c(0,150000), breaks=seq(0,150000, by=10000), na.value = NA_real_) +
  theme(plot.title = element_text(hjust = 0.5), legend.position = "top", axis.text.x = element_text(angle=90, hjust=1)) +
  scale_y_continuous(limits=c(0,40000),na.value = NA_real_) +
  ggtitle("Ad View Time Sessions by Users") +
  xlab("Number of Registered Users") +
  ylab("Ads Viewed")

##Scatterplot - Ad View Time Sessions by Registered Users
ggplot(ads_users,
       aes(x=UNIQUES_REG,
           y=TOTAL_AD_VIEWS,
           color=PLATFORM_TYPE,
           shape=PLATFORM_TYPE)) +
  geom_point(alpha=.5) +
  scale_x_continuous(limits=c(0,50000), breaks=seq(0,50000, by=10000), na.value = NA_real_) +
  theme(plot.title = element_text(hjust = 0.5), legend.position = "top", axis.text.x = element_text(angle=90, hjust=1)) +
  scale_y_continuous(limits=c(0,40000),na.value = NA_real_) +
  ggtitle("Ad View Time Sessions by Registered Users") +
  xlab("Number of Registered Users") +
  ylab("Ads Viewed")

