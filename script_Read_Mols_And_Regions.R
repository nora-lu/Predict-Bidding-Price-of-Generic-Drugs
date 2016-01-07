setwd("/Users/shushenglu/GitHub/Predict-Bidding-Price-of-Generic-Drugs/data")

molecules <- read.csv("CAX_AdditionalData/CAX_AdditionalData_Molecules.csv",
                      header = TRUE)

regions <- read.csv("CAX_AdditionalData/CAX_AdditionalData_Regions.csv",
                    header = TRUE)
columnsAAndB<-(regions[,c(2:15)])

for (i in names(columnsAAndB)) {
  regions[[i]] <-as.numeric(gsub(",","", regions[[i]]))
}