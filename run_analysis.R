#run_analysis.R

library(plyr)
install.packages("dplyr")
library(dplyr)

# Step 0 - Data Preparation
setwd("~/Documents/Dropbox/Education/Coursera/Decision Science/03 - Getting and Cleaning Data")
if(!file.exists("./data")){dir.create("./data")}
fileUrl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "./data/Dataset.zip",method="curl")
unzip(zipfile = "./data/Dataset.zip", exdir="./data")

datapath <- file.path("./data", "UCI HAR Dataset")
files <- list.files(datapath, recursive = T)
files

# Read data from the downloaded datset
# Activity files
TestActivity_data <- read.table(file.path(datapath,"test","Y_test.txt"),header=F)
TrainingActivity_data <- read.table(file.path(datapath,"train","Y_train.txt"),header=F)

# Subject files
TestSubject_data <- read.table(file.path(datapath,"test","subject_test.txt"),header=F)
TrainingSubject_data <- read.table(file.path(datapath,"train","subject_train.txt"),header=F)

# Features files
TestFeatures_data <- read.table(file.path(datapath,"test","X_test.txt"),header=F)
TrainingFeatures_data <- read.table(file.path(datapath,"train","X_train.txt"),header=F)

# Step 1 - Merges the training and the test sets to create one data set.
Subject_data <- rbind(TrainingSubject_data, TestSubject_data)
Activity_data<- rbind(TrainingActivity_data, TestActivity_data)
Features_data<- rbind(TrainingFeatures_data, TestFeatures_data)

names(Subject_data) <- c("Subject")
names(Activity_data) <- c("Activity")
NamesFeatures_data <- read.table(file.path(datapath,"features.txt"), header=F)
names(Features_data) <- NamesFeatures_data$V2

datamerge <- cbind(Subject_data,Activity_data)
data <- cbind(Features_data,datamerge)

# Step 2 - Extracts only the measurements on the mean and standard deviation for each measurement. 
subdataFeaturesNames <-NamesFeatures_data$V2[grep("mean\\(\\)|std\\(\\)", NamesFeatures_data$V2)]
selectedNames<-c(as.character(subdataFeaturesNames), "Subject", "Activity" )
Data<-subset(data,select=selectedNames)

# Step 3 - Uses descriptive activity names to name the activities in the data set
ActivityNames_desc <- read.table(file.path(datapath,"activity_labels.txt"), header = F)
Data2 <- merge(Data, ActivityNames_desc, by.x = "Activity", by.y = "V1", all = TRUE)

# Step 4 - Appropriately labels the data set with descriptive variable names. 
names(Data2) <- gsub("Acc", "Accelerator", names(Data2))
names(Data2) <- gsub("BodyBody", "Body", names(Data2))
names(Data2) <- gsub("Gyro", "Gyroscope", names(Data2))
names(Data2) <- gsub("Mag", "Magnitude", names(Data2))
names(Data2) <- gsub("^t", "Time", names(Data2))
names(Data2) <- gsub("^f", "Frequency", names(Data2))
names(Data2)[69] <- "Activity_Details"
Data2 <- Data2[,c(68,1,69,2:67)]

write.table(Data2, file="DataSet_Step4.txt", row.name=F)
write.table(Data2, file="DataSet_Step4_CSVstyle.txt", row.name=F)

# Step 5 - From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
DATA<-aggregate(. ~Subject + Activity, Data2, mean)
DATA<-DATA[order(DATA$Subject,DATA$Activity, DATA$Activity_Details),]
write.table(DATA, file = "DataSet_Step5.txt",row.name=FALSE)

