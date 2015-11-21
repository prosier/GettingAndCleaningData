
library(reshape2)

## Assumes that the zip-file is unzipped in the subfolder UCI HAR Dataset of your working directory
subFolderName <- "UCI HAR Dataset"
features <- read.table(paste(subFolderName, "features.txt", sep="/"), col.names=c('id', 'feature_name'), stringsAsFactors=FALSE)

##Extracts only the measurements on the mean and standard deviation for each measurement. 
mean_std <- grep(".*(mean|std).*", features$feature_name) 

X_train <- read.table(paste(subFolderName, "train", "X_train.txt", sep="/"))
X_train <- X_train[mean_std]

y_train <- read.table(paste(subFolderName, "train", "y_train.txt", sep="/"))
subject_train <- read.table(paste(subFolderName, "train", "subject_train.txt", sep="/"))
## column bind subject_train, y_train, X_train
result <- cbind(subject_train, y_train, X_train)

X_test <- read.table(paste(subFolderName, "test", "X_test.txt", sep="/"))
X_test <- X_test[mean_std]

y_test <- read.table(paste(subFolderName, "test", "y_test.txt", sep="/"))
subject_test <- read.table(paste(subFolderName, "test", "subject_test.txt", sep="/"))
## Row bind Train and Test
result <- rbind(result, cbind(subject_test, y_test, X_test))

label <- read.table(paste(subFolderName, "activity_labels.txt", sep="/"), col.names=c('id', 'activity_name'), stringsAsFactors=FALSE)

## first two column names
titles <- c("Subject","Activity")
## ..and add the other feature column names
titles <- c(titles, as.character(features[mean_std,]$feature_name))

##Appropriately label the data set with descriptive variable names.
titles <- gsub("-mean\\(\\)", ".Mean", titles)
titles <- gsub("-meanFreq\\(\\)", ".MeanFrequency", titles)
titles <- gsub("-std\\(\\)", ".StdDev", titles)
titles <- gsub("-", ".", titles)
titles <- gsub("BodyBody", "Body", titles)
titles <- gsub("tBody", "Time.Body", titles)
titles <- gsub("tGravity", "Time.Gravity", titles)
titles <- gsub("fBody", "FFT.Body", titles)
titles <- gsub("fGravity", "FFT.Gravity", titles)

names(result) <- titles
##Use descriptive activity names to name the activities in the data set
for (i in 1:nrow(label)) {
        result$Activity[result$Activity == i] <- as.character(label$activity_name[i])
}

normalised = melt(result, id = c("Subject", "Activity"))
meanData <- dcast(normalised, formula = Subject + Activity ~ variable, mean)

write.table(result, file = "tidy_data.txt", sep="\t", row.names = FALSE)

##From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
write.table(meanData, file = "tidy_data_mean.txt", sep="\t", row.names = FALSE)

##write.table(titles, file = "titles.txt", sep="\t")

