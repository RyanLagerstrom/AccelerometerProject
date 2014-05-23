RunAnalysis <- function() {
  
  # This function produces a tidy data set from the Samsung Galaxy accelerometer data
  # available at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
  # It assumes that the above zip file is unpacked and in the users working directory.
  
  # The tidy data set contains information for 79 variables associated with mean and standard
  # deviation measures from accelerometers over 30 different subjects engaged in 6 different activities.
  # The output data set provides the mean of each of the variables for each subject / activity combination
  
  # Set up directory labels for the test and training sets
  testDir <- "./UCI HAR Dataset/test/"
  trainDir <- "./UCI HAR Dataset/train/"
  
  # Read in all the training data
  trainx <- read.table(paste(trainDir, "X_train.txt", sep = ""), colClasses = "numeric")
  trainY <- read.table(paste(trainDir, "y_train.txt", sep = ""))
  trainSubject <- read.table(paste(trainDir, "subject_train.txt", sep = ""))
  trainingData <- cbind(trainSubject, trainY, trainx)
  
  # Read in all the test data
  testx <- read.table(paste(testDir, "X_test.txt", sep = ""), colClasses = "numeric")
  testY <- read.table(paste(testDir, "y_test.txt", sep = ""))
  testSubject <- read.table(paste(testDir, "subject_test.txt", sep = ""))
  testingData <- cbind(testSubject, testY, testx)
  
  # Merge the training an test sets
  allData <- rbind(trainingData, testingData)
  
  # Read in all the varialbe names and pre-pend "subject" and "activity" as names
  features <- read.table("./UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)[,2]
  features <- c("subject", "activity", features)  
  names(allData) <- features
  
  # extract only measurements on the mean and standard deviation of each measurement
  patterns <- list("mean()", "std()")
  indicator <- unlist(lapply( patterns, grep, features))
  meanAndStdData <- allData[,c(1,2,indicator)]
  
  # use descriptive names to name the activities in the data set
  temp <- read.table("./UCI HAR Dataset/activity_labels.txt", stringsAsFactors = FALSE)
  temp <- tolower(temp[,2])
  temp <- gsub("_u", "U", temp)
  activityLabels <- gsub("_d", "D", temp)
  meanAndStdData$activity <- activityLabels[meanAndStdData$activity]
  
  # label the data with descriptive activity names 
  variableNames <- names(meanAndStdData)
  variableNames <-gsub("\\()", "", variableNames)
  variableNames <-gsub("-", "", variableNames)
  variableNames <-gsub("mean", "Mean", variableNames)
  variableNames <-gsub("std", "Std", variableNames)
  names(meanAndStdData) <- variableNames
  
  # this is the output - variable mean for each subject - activity combo
  tidyData <- aggregate(meanAndStdData[,-c(1,2)], list(subject = meanAndStdData$subject, activity = meanAndStdData$activity), mean)
  
  tidyData
  
}