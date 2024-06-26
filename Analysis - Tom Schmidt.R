
library(tidyverse)
library(ggplot2)

# read the csv file
dataset <- read.csv("Datset_IA.csv")

# get an overview of the csv file
summary(dataset)
head(dataset, 10)

# execute below code to generate three new vectors
Country_Code <- c("ABW","AFG","AGO","ALB","ARE","ARG","ARM","ATG","AUS","AUT","AZE","BDI","BEL","BEN","BFA","BGD","BGR","BHR","BHS","BIH","BLR","BLZ","BOL","BRA","BRB","BRN","BTN","BWA","CAF","CAN","CHE","CHL","CHN","CIV","CMR","COG","COL","COM","CPV","CRI","CUB","CYP","CZE","DEU","DJI","DNK","DOM","DZA","ECU","EGY","ERI","ESP","EST","ETH","FIN","FJI","FRA","FSM","GAB","GBR","GEO","GHA","GIN","GMB","GNB","GNQ","GRC","GRD","GTM","GUM","GUY","HKG","HND","HRV","HTI","HUN","IDN","IND","IRL","IRN","IRQ","ISL","ITA","JAM","JOR","JPN","KAZ","KEN","KGZ","KHM","KIR","KOR","KWT","LAO","LBN","LBR","LBY","LCA","LKA","LSO","LTU","LUX","LVA","MAC","MAR","MDA","MDG","MDV","MEX","MKD","MLI","MLT","MMR","MNE","MNG","MOZ","MRT","MUS","MWI","MYS","NAM","NCL","NER","NGA","NIC","NLD","NOR","NPL","NZL","OMN","PAK","PAN","PER","PHL","PNG","POL","PRI","PRT","PRY","PYF","QAT","ROU","RUS","RWA","SAU","SDN","SEN","SGP","SLB","SLE","SLV","SOM","SSD","STP","SUR","SVK","SVN","SWE","SWZ","SYR","TCD","TGO","THA","TJK","TKM","TLS","TON","TTO","TUN","TUR","TZA","UGA","UKR","URY","USA","UZB","VCT","VEN","VIR","VNM","VUT","WSM","YEM","ZAF","COD","ZMB","ZWE")
Life_Expectancy_At_Birth_1960 <- c(65.5693658536586,32.328512195122,32.9848292682927,62.2543658536585,52.2432195121951,65.2155365853659,65.8634634146342,61.7827317073171,70.8170731707317,68.5856097560976,60.836243902439,41.2360487804878,69.7019512195122,37.2782682926829,34.4779024390244,45.8293170731707,69.2475609756098,52.0893658536585,62.7290487804878,60.2762195121951,67.7080975609756,59.9613658536585,42.1183170731707,54.2054634146342,60.7380487804878,62.5003658536585,32.3593658536585,50.5477317073171,36.4826341463415,71.1331707317073,71.3134146341463,57.4582926829268,43.4658048780488,36.8724146341463,41.523756097561,48.5816341463415,56.716756097561,41.4424390243903,48.8564146341463,60.5761951219512,63.9046585365854,69.5939268292683,70.3487804878049,69.3129512195122,44.0212682926829,72.1765853658537,51.8452682926829,46.1351219512195,53.215,48.0137073170732,37.3629024390244,69.1092682926829,67.9059756097561,38.4057073170732,68.819756097561,55.9584878048781,69.8682926829268,57.5865853658537,39.5701219512195,71.1268292682927,63.4318536585366,45.8314634146342,34.8863902439024,32.0422195121951,37.8404390243902,36.7330487804878,68.1639024390244,59.8159268292683,45.5316341463415,61.2263414634146,60.2787317073171,66.9997073170732,46.2883170731707,64.6086585365854,42.1000975609756,68.0031707317073,48.6403170731707,41.1719512195122,69.691756097561,44.945512195122,48.0306829268293,73.4286585365854,69.1239024390244,64.1918292682927,52.6852682926829,67.6660975609756,58.3675853658537,46.3624146341463,56.1280731707317,41.2320243902439,49.2159756097561,53.0013170731707,60.3479512195122,43.2044634146342,63.2801219512195,34.7831707317073,42.6411951219512,57.303756097561,59.7471463414634,46.5107073170732,69.8473170731707,68.4463902439024,69.7868292682927,64.6609268292683,48.4466341463415,61.8127804878049,39.9746829268293,37.2686341463415,57.0656341463415,60.6228048780488,28.2116097560976,67.6017804878049,42.7363902439024,63.7056097560976,48.3688048780488,35.0037073170732,43.4830975609756,58.7452195121951,37.7736341463415,59.4753414634146,46.8803902439024,58.6390243902439,35.5150487804878,37.1829512195122,46.9988292682927,73.3926829268293,73.549756097561,35.1708292682927,71.2365853658537,42.6670731707317,45.2904634146342,60.8817073170732,47.6915853658537,57.8119268292683,38.462243902439,67.6804878048781,68.7196097560976,62.8089268292683,63.7937073170732,56.3570487804878,61.2060731707317,65.6424390243903,66.0552926829268,42.2492926829268,45.6662682926829,48.1876341463415,38.206,65.6598292682927,49.3817073170732,30.3315365853659,49.9479268292683,36.9658780487805,31.6767073170732,50.4513658536585,59.6801219512195,69.9759268292683,68.9780487804878,73.0056097560976,44.2337804878049,52.768243902439,38.0161219512195,40.2728292682927,54.6993170731707,56.1535365853659,54.4586829268293,33.7271219512195,61.3645365853659,62.6575853658537,42.009756097561,45.3844146341463,43.6538780487805,43.9835609756098,68.2995365853659,67.8963902439025,69.7707317073171,58.8855365853659,57.7238780487805,59.2851219512195,63.7302195121951,59.0670243902439,46.4874878048781,49.969512195122,34.3638048780488,49.0362926829268,41.0180487804878,45.1098048780488,51.5424634146342)
Life_Expectancy_At_Birth_2020 <- c(75.3286585365854,60.0282682926829,51.8661707317073,77.537243902439,77.1956341463415,75.9860975609756,74.5613658536585,75.7786585365854,82.1975609756098,80.890243902439,70.6931463414634,56.2516097560976,80.3853658536585,59.3120243902439,58.2406341463415,71.245243902439,74.4658536585366,76.5459512195122,75.0735365853659,76.2769268292683,72.4707317073171,69.9820487804878,67.9134390243903,74.1224390243903,75.3339512195122,78.5466585365854,69.1029268292683,64.3608048780488,49.8798780487805,81.4011219512195,82.7487804878049,81.1979268292683,75.3530243902439,51.2084634146342,55.0418048780488,61.6663902439024,73.8097317073171,62.9321707317073,72.9723658536585,79.2252195121951,79.2563902439025,79.9497804878049,78.2780487804878,81.0439024390244,61.6864634146342,80.3024390243903,73.3199024390244,74.5689512195122,75.648512195122,70.9257804878049,63.1778780487805,82.4268292682927,76.4243902439025,63.4421951219512,80.8317073170732,69.9179268292683,81.9682926829268,68.9733902439024,63.8435853658537,80.9560975609756,74.079512195122,61.1420731707317,58.216487804878,59.9992682926829,54.8384146341464,57.2908292682927,80.6341463414634,73.1935609756098,71.4863902439024,78.872512195122,66.3100243902439,83.8317073170732,72.9428536585366,77.1268292682927,62.4011463414634,75.2682926829268,68.7046097560976,67.6604146341463,81.0439024390244,75.1259756097561,69.4716829268293,83.1170731707317,82.290243902439,73.4689268292683,73.9014146341463,83.3319512195122,70.45,60.9537804878049,70.2024390243902,67.7720487804878,65.7665853658537,81.459756097561,74.462756097561,65.687243902439,80.1288780487805,60.5203902439024,71.6576829268293,74.9127073170732,74.2402926829268,49.3314634146342,74.1634146341464,81.7975609756098,73.9804878048781,80.3391463414634,73.7090487804878,68.811512195122,64.6739024390244,76.6026097560976,76.5326585365854,75.1870487804878,57.5351951219512,80.7463414634146,65.6540975609756,74.7583658536585,69.0618048780488,54.641512195122,62.8027073170732,74.46,61.466,74.567512195122,64.3438780487805,77.1219512195122,60.8281463414634,52.4421463414634,74.514756097561,81.1048780487805,81.4512195121951,69.222,81.4073170731707,76.8410487804878,65.9636829268293,77.4192195121951,74.2838536585366,68.1315609756097,62.4491707317073,76.8487804878049,78.7111951219512,80.3731707317073,72.7991707317073,76.3340731707317,78.4184878048781,74.4634146341463,71.0731707317073,63.3948292682927,74.1776341463415,63.1670487804878,65.878756097561,82.3463414634146,67.7189268292683,50.3631219512195,72.4981463414634,55.0230243902439,55.2209024390244,66.259512195122,70.99,76.2609756097561,80.2780487804878,81.7048780487805,48.9379268292683,74.7157804878049,51.1914878048781,59.1323658536585,74.2469268292683,69.4001707317073,65.4565609756098,67.5223658536585,72.6403414634147,70.3052926829268,73.6463414634147,75.1759512195122,64.2918292682927,57.7676829268293,71.159512195122,76.8361951219512,78.8414634146341,68.2275853658537,72.8108780487805,74.0744146341464,79.6243902439024,75.756487804878,71.669243902439,73.2503902439024,63.583512195122,56.7365853658537,58.2719268292683,59.2373658536585,55.633)

# create a data frame for each year (1960 and 2020)
df_1960 <- data.frame(Country_Code, Life_Expectancy_At_Birth_1960)
df_2020 <- data.frame(Country_Code, Life_Expectancy_At_Birth_2020)

# check dataframes 
head(df_1960, 10)
head(df_2020, 10)

# merge data frames with CSV data
merged_1960 <- merge(dataset, df_1960, by.x = "Country.Code", by.y = "Country_Code")
merged_2020 <- merge(dataset, df_2020, by.x = "Country.Code", by.y = "Country_Code")

# filter data by year 
# 1960
df_1960 <- merged_1960[merged_1960$Year==1960,]
head(df_1960, 10)

# 2020
df_2020 <- merged_2020[merged_2020$Year==2020,]
head(df_2020, 10)


# draw a scatter plot with Fertility Rate on X-axis and Life Expectancy on Y-axis
# 1960
ggplot(data=df_1960, aes(x=Fertility.Rate,y=Life_Expectancy_At_Birth_1960, colour=Region)) + geom_point() + labs(title = "Life Expectancy vs Fertility Rate in 1960", x = "Fertility Rate", y = "Life Expectancy at Birth")

# 2020
ggplot(data=df_2020, aes(x=Fertility.Rate,y=Life_Expectancy_At_Birth_2020, colour=Region)) + geom_point() + labs(title = "Life Expectancy vs Fertility Rate in 2020", x = "Fertility Rate", y = "Life Expectancy at Birth")



# using facets for further visualization 
# 1960 fertility rate
f<- ggplot(data=df_1960, aes(x=Fertility.Rate))
f+geom_histogram(binwidth=0.5, aes(fill=Region), colour="Black") +
  facet_grid(Region~.)

# 2020 fertility rate
f1<- ggplot(data=df_2020, aes(x=Fertility.Rate))
f1+geom_histogram(binwidth=0.5, aes(fill=Region), colour="Black") +
  facet_grid(Region~.)

# 1960 life expectancy at birth
f2<- ggplot(data=df_1960, aes(x=Life_Expectancy_At_Birth_1960))
f2+geom_histogram(binwidth=0.5, aes(fill=Region), colour="Black") +
  facet_grid(Region~.)

# 2020 life expectancy at birth
f3<- ggplot(data=df_2020, aes(x=Life_Expectancy_At_Birth_2020))
f3+geom_histogram(binwidth=0.5, aes(fill=Region), colour="Black") +
  facet_grid(Region~.)



# doing further analysis to examine certain values

# get country of Europe with lowest life expectancy
library(dplyr)
filtered_df_1960 <- df_1960 %>%
  filter(Life_Expectancy_At_Birth_1960 < 50, Region == "Europe")
print(filtered_df_1960) # result is Turkey which is mainly part of Asia instead of Europe

# get country of Africa with lowest life expectancy
filtered_df_1960_1 <- df_1960 %>%
  filter(Life_Expectancy_At_Birth_1960 < 30, Region == "Africa")
print(filtered_df_1960_1) # result is Mali which had to suffer politically & economically during the 50s and 60s

# get two outliers of Africa with highest and lowest fertility rate
filtered_df_1960_3 <- df_1960 %>%
  filter(Fertility.Rate < 5, Region == "Africa")
print(filtered_df_1960_3)

filtered_df_1960_4 <- df_1960 %>%
  filter(Fertility.Rate > 8, Region == "Africa")
print(filtered_df_1960_4)

# get countries of America and see if there are differences between North and South America
filtered_df_1960_2 <- df_1960 %>%
  filter(Region == "The Americas")
print(filtered_df_1960_2)

# sort the americas by life expectancy in ascending order
sorted_df_1960 <- filtered_df_1960_2 %>%
  arrange(Life_Expectancy_At_Birth_1960)
print(sorted_df_1960)

# get number of countries in 2020 with fertility rate < 2
count_fertility_lower_2 <- df_2020 %>%
  summarize(count = sum(Fertility.Rate < 2))
print(count_fertility_lower_2$count) # result is 70 countries

# get number of countries in 2020 with life expectancy > 80
count_high_life_expectancy <- df_2020 %>%
  summarize(count = sum(Life_Expectancy_At_Birth_2020 > 80))
print(count_high_life_expectancy$count) # result is 30 countries

# get highest life expectancy from 1960 and 2020
filtered_df_1960_6 <- df_1960 %>%
  filter(Life_Expectancy_At_Birth_1960 > 73)
print(filtered_df_1960_6) # result is Norway

filtered_df_2020_7 <- df_2020 %>%
  filter(Life_Expectancy_At_Birth_2020 > 83)
print(filtered_df_2020_7) # result is Hong Kong



# insights and analysis

# The scatter plot from 1960 shows severe differences between the regions in life expectancy at birth as well as
# in fertility rate. However, it visualizes a clear trend which says: the higher the fertility rate, the lower the
# life expectancy at birth. The region with the highest life expectancy and the lowest fertility rate in 1960 is
# Europe, which is mainly caused by the high health standards that Europe already had back then. One outlier is 
# noticeable from the Europe region and that is the country of Turkey which is the only country of the region that has
# a life expectancy of less than 60 (45.38 years). The reason for that is that Turkey mainly belongs to Asia and if
# you would change the region to Asia it would not be an outlier, in fact it would fit perfectly in the average of 
# Asia.The countries of America are spread all over the scatter plot. There are countries like Canada and the US 
# that are within the values of the European countries but there are also many countries that have a life expectancy
# of less than 50 and a fertility rate above 6. By taking a second look at the values of the Americas, it becomes 
# obvious that the countries of South America are mainly the ones that can be found in the lower right half of the
# scatter plot. This is due to the bad development that most of the countries had 64 years ago.
# On the other hand, Africa has on average the lowest life expectancy but the highest fertility rate. The lowest 
# life expectancy belongs to Mali, a country that had a really bad time during the 50s and 60s.
# There are two more noticeable outliers from the Africa region. One has the highest fertility rate out of all 
# countries and the other one has the lowest fertility rate by far out of all African countries. The highest 
# fertility rate belongs to the country of Rwanda with an average of 8.19 and the lowest one of Africa is Gabon 
# with an average of 4.38. The regions of Oceania and the Middle East for the most part represent the average of 
# all regions. 
# 
# The scatter plot from 2020 shows lower differences in both, the life expectancy at birth as well as in the fertility
# rate. The difference between the highest and lowest life expectancy is now about 35 years, and the difference 
# between the highest and lowest fertility rate is only from below two to 7 instead of more than 8 in 1960. It is 
# noticeable that by 2020 many Asian countries have increased their life expectancy and are now together with Europe 
# in the top tier. Actually, on average every country increased their life expectancy and lowered their fertility rate.
# The highest life expectancy in 1960 was from Norway in Europe, in 2020 it now is Hong Kong in Asia. Now two of 
# the top three life expectancies are from Asia. The biggest development was made by the Americas region who could
# not only increase their life expectancy by far but also heavily lowered their average fertility rates by almost
# half.
# 
# It is remarkable that in 1960 there were 30 countries with a life expectancy of less than 40, whereas in 2020 there
# were only two countries with a lower life expectancy than 50! In 1960 more than 20 countries had a fertility rate
# of more than 7, in 2020 it was only 1. The highest life expectancy was around 74 (in 1960) and increased to 30 
# countries having a higher life expectancy at birth than 80 years. The biggest evolutions were made in terms of
# the fertility rate. In 1960 only three countries had a fertility rate lower than 2, in 2020 there were 70 countries.
# Most of these changes can be explained by an economic boom and major developments in the healthcare. 
















