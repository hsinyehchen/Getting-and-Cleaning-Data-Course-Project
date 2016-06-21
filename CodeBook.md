==================================================================
#Getting-and-Cleaning-Data-Course-Project
Hsin-Yeh Chen, 06/21/2016

This is a course project of Getting and Cleaning Data on Coursera.

The project is designed to parse data from 
[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones]

## Data Frame created by 'run_analysis.R'
The source file 'run_analysis.R' will create the tidy_data.txt. The information of variables is as follows, 

1. subject
  * The subject who performed the experiment. It ranges from 1 to 30. 

2. activity
  * The names of the activitys of each observation, including: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.  

3. Other variables
  * The rest of the variables are average of the features performed in the experiments.
  * The names of the variables follows the same convention. For example, "tBodyAcc.std...Y" means this variable is standard deviation of the Y-axis sample of measurement "tBodyAcc".
    "tBodyAccJerk.mean...Z" means this variable is the mean of the Z-axis sample of measurement "tBodyAccJerk".
  * For more info about the experiment, please refer to 
   [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones]