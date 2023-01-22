library("readxl")

# Loading the data sets
################################################

temperature <- read_excel("average_temp.xlsx")
colnames(temperature) = c("name", "last_temp", "previous_temp", "references", "unit")

################################################

bigmac_index <- read.csv("bigmac_index.csv", header = TRUE, sep = ",")

# Earliest 2016-07-01 (corr with happiness 0.73)
# Latest   2022-07-01 (corr with happiness 0.64)
bigmac_index <- bigmac_index[bigmac_index$date=="2016-07-01",]

################################################

population <- read.csv("population.csv", skip=4, sep = ",")
population <- population[,c("Country.Name","Country.Code","X2016")]
colnames(population) = c("name", "code", "population")

################################################

# GDP data set ends in 2016
gdp <-read.csv("gdp.csv")

# Rename columns to be usable in R
colnames(gdp) = c("name", "code", "year", "gdp")

# 2016 is the last year in the dataset
gdp <- gdp[gdp$year==2016,]

# Filtering anomaly rich countries, with GDP > $200B
#gdp <- gdp[gdp$gdp<2e+12,]

gdp <- merge(gdp, population)
gdp$per_capita <- gdp$gdp/gdp$population

################################################

happiness <-read.csv("happiness_2017.csv", sep=",")

colnames(happiness) = c("name",
                    "happiness_rank",
                    "happiness_score",
                    "whisker_high",
                    "whisker_low",
                    "gdp_capita",
                    "happ_family_impact",
                    "happ_healthcare_impact",
                    "happ_freedom_impact",
                    "happ_generosity_impact",
                    "happ_govtrust_impact",
                    "dystopia")

happiness <- select(happiness,
                     "name",
                     "happiness_rank",
                     "happiness_score",
                     "gdp_capita",
                     "happ_family_impact",
                     "happ_healthcare_impact",
                     "happ_freedom_impact",
                     "happ_generosity_impact",
                     "happ_govtrust_impact")

################################################

drinks <- read.csv("drinks.csv", sep = ",")
colnames(drinks) = c("name", "beer_servings", "spirit_servings", "wine_serwings", "total_liters_of_pure_alchohol")

################################################

electricity <- read.csv("electricity_consumption.csv", sep = ",")

################################################

suicide <- read.csv("suicide.csv", sep = ",", skip=4)

################################################

obesity <- read.csv("obesity.csv", sep=",")
obesity <- obesity[,c("country", "Rank", "rank", "obesityRate")]
colnames(obesity) = c("name", "rank")

################################################

depression_rate <- read_excel("depression_rate.xlsx")

################################################


obesity_level <- read_excel("obesity.xlsx")

################################################

mcdonalds <- read.csv("mcdonald.csv")
colnames(mcdonalds) = c("NAME", "Restaurants", "Data_Date", "First_Opening_Date", "Rest_Per_Capita")

