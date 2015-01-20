## Install required packages and libraries.
install.packages("dplyr")
library(dplyr)
install.packages("tidyr")
library(tidyr)

## Read the files into R.
features <- read.table("./UCI HAR Dataset/features.txt", stringsAsFactors=FALSE)
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt", stringsAsFactors=FALSE)
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", stringsAsFactors=FALSE)
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt", stringsAsFactors=FALSE)
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt", stringsAsFactors=FALSE)
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", stringsAsFactors=FALSE)
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt", stringsAsFactors=FALSE)
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt", stringsAsFactors=FALSE)

## For test set:
## Use descriptive activity names to name to name the activities.
activities_test <- activity_labels[unlist(y_test),2]
## Label measurements with descriptive variable names.
colnames(X_test) <- c(features[, 2])
## Extract only mean and standard deviation measurements.
X_test_subset <- X_test[,grepl("mean\\(\\)|std\\(\\)", features[,2])]
## Create a data frame with subject and activity.
big_test <- cbind(subject_test, activities_test) 
## Label columns subject and activity.            
names(big_test) <- c("subjects", "activities")
## Add measurements to data frame.
big_test <- cbind(big_test, X_test_subset)

## Repeat for train set.
activities_train <- activity_labels[unlist(y_train),2]
colnames(X_train) <- c(features[, 2])
X_train_subset <- X_train[,grepl("mean\\(\\)|std\\(\\)", features[,2])]
big_train <- cbind(subject_train, activities_train)
names(big_train) <- c("subjects", "activities")
big_train <- cbind(big_train, X_train_subset)

## Join test and train data sets to create one data set.
big <- rbind(big_test, big_train)

## Create a second independent tidy data set with the average of each variable for each activity
## and each subject.



