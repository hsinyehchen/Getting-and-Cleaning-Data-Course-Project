==================================================================
#Getting-and-Cleaning-Data-Course-Project
###Hsin-Yeh Chen,
###06/21/2016

This is a course project of Getting and Cleaning Data on Coursera.

The file is designed to parse data from 
[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones]


## Project files
The project includes the following files:

1. 'README.md'
...This file.

2. 'run_analysis.R' - This file has to be located with the unzipped files from the 
...https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
...The unzipped directory has to be "UCI HAR Dataset".
...The steps in the run_analysis.R are 
..1. Merges the training and the test sets to create one data set.
..2. Extracts only the measurements on the mean and standard deviation for each measurement.
..3. Uses descriptive activity names to name the activities in the data set
..4. Appropriately labels the data set with descriptive variable names.
..5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.  
...When the script is done, the "tidy_data.txt" will be created.

- 'CodeBook.md'
...Description of the variables, the data, and transformations.
