# Richard Wen (rwenite@gmail.com)
# Source code for generating nbc4vaData.

# nbc4vaDataRaw
# Random unclean verbal autopsy data generated with the sample function.
set.seed(1)
ids <- sample(paste(tolower(LETTERS), 1:100, sep=""), 100)
symptoms <- data.frame(matrix(sample(c(0, 1, 99), 100*500, replace=T, prob=c(0.45, 0.45, 0.1)), 100, 100))
names(symptoms) <- paste("symptom", 1:100, sep="")
causes <- sample(paste("cause", 1:15, sep=""), 100, replace=T)
nbc4vaDataRaw <- data.frame(id=ids,
                            cause=causes,
                            symptoms)
nbc4vaDataRaw$cause <- as.character(nbc4vaData$cause)
nbc4vaDataRaw$id <- as.character(nbc4vaDataRaw$id)
nbc4vaDataRaw$symptoms[3:102] <- sapply(nbc4vaDataRaw$symptoms, as.integer)
devtools::use_data(nbc4vaDataRaw, overwrite=TRUE)

