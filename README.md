Getting and Cleaning Data Course Project
========================================

### Introduction

The run_analysis.R script will perform the following steps:

* Requires reshape2 library (for the melt() function)
* Assumes that the data set archive was already downloaded and unzipped
* Reads feature names and only keeps the mean and standard deviation columns
* Reads training & test files
* Appends the training and test data set rows
* Reads the activity labels
* Creates the label names Subject and Activity and the filtered features labels
* Appropriately labels the data set with descriptive variable names
* Uses descriptive activity names to name the activities in the data set
* Melts the data set
* Creates a second, independent, tidy data set which contains the average of each variable for each activity and subject
* Saves the resulting tidy data set to file

### Execution

Execute this program as follows:

1. Set your working directory to the directory that contains the raw data sets (subfolder UCI HAR Dataset).
2. Package 'reshape2' must be installed. 
3. Run 'run_analysis.R'.





