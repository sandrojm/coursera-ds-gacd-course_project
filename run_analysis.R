# Date created: 08.05.2016
# Created by: Sandro Jean-Mairet

# Project target:
## 1. merge test and training set
## 2. extract only measurements on the mean and standard dev. for each measurement
## 3. use descriptive activity names to name the variables in data set
## 4. appropriate label the data set with descriptive activity names
## 5. create second, independent tidy data set with the average of each variable for each activity and each subject

# LOAD / INSTALL PACKAGES
install.packages("data.table")
install.packages("reshape2")
library("data.table")
library("reshape2")


# load activity labels and features
activityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt")[,2]
features <- read.table("./UCI HAR Dataset/features.txt")[,2]


# create logical vector for the measurements containing the mean and standard deviation
featuresMeanStd <- grepl("mean|std", features)


# LOADING TEST AND TRAINING DATA
## test
xTest <- read.table("./UCI HAR Dataset/test/X_test.txt")
yTest <- read.table("./UCI HAR Dataset/test/y_test.txt")
subjectTest <- read.table("./UCI HAR Dataset/test/subject_test.txt")

## train 
xTrain <- read.table("./UCI HAR Dataset/train/X_train.txt")
yTrain <- read.table("./UCI HAR Dataset/train/y_train.txt")
subjectTrain <- read.table("./UCI HAR Dataset/train/subject_train.txt")


# SET NAMES FOR TEST AND TRAINING DATA
## xTest
names(xTest) <- features

## xTrain
names(xTrain) <- features


# EXTRACT MEASUREMENTS FOR MEAN AND STDEV
## Test
xTest <- xTest[,featuresMeanStd]

## Train
xTrain <- xTrain[,featuresMeanStd]


# LOAD ACTIVITY LABELS
## Test
yTest[,2] <- activityLabels[yTest[,1]]
names(yTest) <- c("activityID", "activityLabel")
names(subjectTest) <- "subject"

## Train
yTrain[,2] <- activityLabels[yTrain[,1]]
names(yTrain) <- c("activityID", "activityLabel")
names(subjectTrain) <- "subject"


# COMBINE COLUMS FOR TEST AND TRAIN DATA
## Test
testData <- cbind(subjectTest, yTest, xTest)

## Train
trainData <- cbind(subjectTrain, yTrain, xTrain)


# CREATE COMPLETE DATA SET
## merge rows of test and train data set
completeData <- rbind(testData, trainData)


# CREATE TIDY DATA SET
## specify identifiers for melt function
idLabels <- c("subject", "activityID", "activityLabel")
dataLabels <- setdiff(colnames(completeData), idLabels)

## stack activity variables
meltData <- melt(completeData, id = idLabels, measure.vars = dataLabels)

## creates independent tidy data set with the mean of each variable for each activity and each subject.
tidyData <- dcast(meltData, subject + activityLabel ~ variable, mean)

## save tidy data set as independent file in working directory
write.table(tidyData, file = "./tidy_data.txt", row.name=FALSE)
