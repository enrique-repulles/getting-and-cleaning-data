library(dplyr)


# Execute this function to generate the tidy dataset 
run_analysis <- function ()
{
  # Data download
  data.path <- "./data-cleaning-project-data"  
  data.url <- "http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  data.file <- paste0(data.path, "/Dataset.zip")
  
  if (!file.exists(data.path)) {
    dir.create(data.path)
    download.file(url = data.url, destfile = data.file)
    unzip (data.file, exdir = data.path)
  }  

  #Step 1: Creating the dataset merging test and training sets
  
  train.file1 <-paste0(data.path,"/UCI HAR Dataset/train/subject_train.txt")
  train.file2 <-paste0(data.path,"/UCI HAR Dataset/train/X_train.txt")
  train.file3 <-paste0(data.path,"/UCI HAR Dataset/train/y_train.txt")
  
  train.df1 <- read.table(train.file1, sep = "", col.names = "subject")
  train.df2 <- read.table(train.file2, sep = "")
  train.df3 <- read.table(train.file3, sep = "", col.names = "activity")
  
  test.file1 <-paste0(data.path,"/UCI HAR Dataset/test/subject_test.txt")
  test.file2 <-paste0(data.path,"/UCI HAR Dataset/test/X_test.txt")
  test.file3 <-paste0(data.path,"/UCI HAR Dataset/test/y_test.txt")  
  
  
  test.df1 <- read.table(test.file1, sep = "", col.names = "subject")
  test.df2 <- read.table(test.file2, sep = "")
  test.df3 <- read.table(test.file3, sep = "", col.names = "activity")
  
  train.fulldf<-cbind(train.df1,train.df2,train.df3)
  test.fulldf <-cbind(test.df1,test.df2,test.df3)
  
  raw.df <- rbind (train.fulldf,test.fulldf)

  # Step 2: Extracts only the features involving mean or standard deviation
  
  feature.data <- read.table(paste0(data.path,"/UCI HAR Dataset/features.txt"), col.names = c("position","featurename"))
  feature.names <- feature.data$featurename
  selected_measurements <-sort(c(grep("mean()", feature.names), grep("std()", feature.names)))
  selected_columns <- c("subject",paste0("V",selected_measurements),"activity")
  clean.df<-raw.df[,selected_columns]
  
  
  # Step 3: Using activity names 
  
  # The activity labels are from file "activity_labels.txt"
  activity.labels <- c("walking","walkingupstairs","walkingdownstairs","sitting","standing","laying")
  clean.df[,"activity"] <- factor(clean.df[,"activity"],labels=activity.labels)
  
  # Step4: clean the variable names
  
  clean.feature.names <- gsub("\\(","",feature.names)
  clean.feature.names <- gsub("\\)","",clean.feature.names)
  clean.feature.names <- gsub("^t","time-",clean.feature.names)
  clean.feature.names <- gsub("^fBody","fourier-",clean.feature.names)
  clean.feature.names <- gsub("meanFreq","freq-mean",clean.feature.names)
  clean.feature.names <- gsub("Body","-body-",clean.feature.names)
  clean.feature.names <- gsub("Acc", "-accelerometer-",clean.feature.names)
  clean.feature.names <- gsub("Gyro","-gyroscope-",clean.feature.names)
  clean.feature.names <- gsub("Jerk","-jerk-",clean.feature.names)
  clean.feature.names <- gsub("Mag","-magnitude-",clean.feature.names)
  clean.feature.names <- gsub("Gravity","-gravity-",clean.feature.names)
  clean.feature.names <- gsub("--","-",clean.feature.names)
  clean.feature.names <- tolower(clean.feature.names)
  
  
  clean.names <- clean.feature.names[selected_measurements]
  names(clean.df) <-  c("subject",clean.names,"activity")
  
  #Step 5: average variables for each activity and each subject 
  
  grouped.data <- group_by(clean.df, activity, subject )
  result<-summarize_each(grouped.data, funs(mean))
  result
}

# For writing the results to the tidy.csv file: 
# write.csv(x=mydf,file = "tidy.csv", row.names=FALSE)
