library(dplyr)

# read feature names
feature <- read.table("UCI HAR Dataset/features.txt")
feature <- feature$V2

# read activity lables
act_label <- read.table("UCI HAR Dataset/activity_labels.txt")
act_label <- act_label$V2
func_label <- function(x) act_label[x]

# read test data set
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt", col.names = "subject")
activity_test <- read.table("UCI HAR Dataset/test/y_test.txt", col.names = "activity")
activity_test$activity <- func_label(activity_test$activity)
data_test <- read.table("UCI HAR Dataset/test/X_test.txt", col.names = feature)

#remove non- mean or std measurements
rmset <- names(data_test)
rmset <- rmset[grep( "mean|std", rmset)]
data_test <- data_test[rmset]

# construct the data frame for test data set
df_test <- cbind(subject_test, activity_test)
df_test <- mutate(df_test, set ="test")
df_test <- cbind(df_test,  data_test)


# read test data set
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt", col.names = "subject")
activity_train <- read.table("UCI HAR Dataset/train/y_train.txt", col.names = "activity")
activity_train$activity <- func_label(activity_train$activity)
data_train <- read.table("UCI HAR Dataset/train/X_train.txt", col.names = feature)

#remove non- mean or std measurements
rmset <- names(data_train)
rmset <- rmset[grep( "mean|std", rmset)]
data_train <- data_train[rmset]

# construct the data frame for train data set
df_train <- cbind(subject_train, activity_train)
df_train <- mutate(df_train, set ="train")
df_train <- cbind(df_train,  data_train)



data_set <- rbind(df_train, df_test)


# calculate new data set of mean and variance on each activity/subject
data_avg <- unique(select(data_set, subject, activity))
data_avg <- data_set[row.names(data_avg),]
row.names(data_avg) <- seq(length(row.names(data_avg)))
data_avg<-arrange(data_avg, subject,activity)

for(su in seq(1:30)){
  for(ac in act_label){
    data_toCount <- filter(data_set,subject == su & activity==ac)
    data_toCount <- select(data_set,-(subject:set))
    co <- colMeans(data_toCount)
    tmp <- which(data_avg$subject == su & data_avg$activity==ac)
    data_avg[tmp,4:82] <- co
  }
}
data_avg <- select(data_avg,-set)

# write to file
write.table(data_avg, file = "tidy_data.txt",row.names = F)
