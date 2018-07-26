# Richard Wen (rwenite@gmail.com)
# Source code for generating nbc4vaData.

# nbc4vaData
# Random clean verbal autopsy data generated with the sample function.
set.seed(1)
ids <- sample(paste(tolower(LETTERS), 1:100, sep=""), 100)
symptoms <- data.frame(matrix(sample(0:1, 100*500, replace=T), 100, 100))
names(symptoms) <- paste("symptom", 1:100, sep="")
causes <- sample(paste("cause", 1:15, sep=""), 100, replace=T)
nbc4vaData <- data.frame(id=ids,
                         cause=causes,
                         symptoms)
nbc4vaData$cause <- as.character(nbc4vaData$cause)
nbc4vaData$id <- as.character(nbc4vaData$id)
nbc4vaData$symptoms[3:102] <- sapply(nbc4vaData$symptoms, as.integer)
devtools::use_data(nbc4vaData, overwrite=TRUE)

