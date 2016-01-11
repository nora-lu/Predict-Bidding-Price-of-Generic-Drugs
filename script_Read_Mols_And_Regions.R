setwd("./Predict-Bidding-Price-of-Generic-Drugs/data")

molecules <- read.csv("CAX_AdditionalData/CAX_AdditionalData_Molecules.csv",
                      header = TRUE)

regions <- read.csv("CAX_AdditionalData/CAX_AdditionalData_Regions.csv",
                    header = TRUE)

trainMol345 <- read.csv("CAX_Bidding_TRAIN_Molecule_3_4_5.csv")

testMol6Pre <- read.csv("CAX_Bidding_TEST_Molecule_6_Pre_LOE.csv")

testMol6Post <- read.csv("CAX_Bidding_TEST_Molecule_6_Post_LOE.csv")

columnsAAndB<-(regions[,c(2:15)])

for (i in names(columnsAAndB)) {
  regions[[i]] <-as.numeric(gsub(",","", regions[[i]]))
}

write.csv(regions, file = "CAX_AdditionalData/CAX_AdditionalData_Regions.csv")