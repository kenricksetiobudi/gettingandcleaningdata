# Cookbook
## Purpose of the cookbook
This cookbook serves as a way to document the list of transformations performed to clean up the data into a "tidy format" data.

## Data Variables - Explanation
The submitted data table 'DataSet_Step5.txt" is referred to in the 'R' code as 'DATA' data.table.

|Revised Column Names|Initial Names|
|--------------------------------------------|--------------------------------------------|
|Subject||
|Activity||
|Activity_Details||
|TimeBodyAccelerator-mean()-X|tBodyAcc-mean()-X|
|TimeBodyAccelerator-mean()-Y|tBodyAcc-mean()-Y|
|TimeBodyAccelerator-mean()-Z|tBodyAcc-mean()-Z|
|TimeBodyAccelerator-std()-X|tBodyAcc-std()-X|
|TimeBodyAccelerator-std()-Y|tBodyAcc-std()-Y|
|TimeBodyAccelerator-std()-Z|tBodyAcc-std()-Z|
|TimeGravityAccelerator-mean()-X|tGravityAcc-mean()-X|
|TimeGravityAccelerator-mean()-Y|tGravityAcc-mean()-Y|
|TimeGravityAccelerator-mean()-Z|tGravityAcc-mean()-Z|
|TimeGravityAccelerator-std()-X|tGravityAcc-std()-X|
|TimeGravityAccelerator-std()-Y|tGravityAcc-std()-Y|
|TimeGravityAccelerator-std()-Z|tGravityAcc-std()-Z|
|TimeBodyAcceleratorJerk-mean()-X|tBodyAccJerk-mean()-X|
|TimeBodyAcceleratorJerk-mean()-Y|tBodyAccJerk-mean()-Y|
|TimeBodyAcceleratorJerk-mean()-Z|tBodyAccJerk-mean()-Z|
|TimeBodyAcceleratorJerk-std()-X|tBodyAccJerk-std()-X|
|TimeBodyAcceleratorJerk-std()-Y|tBodyAccJerk-std()-Y|
|TimeBodyAcceleratorJerk-std()-Z|tBodyAccJerk-std()-Z|
|TimeBodyGyroscope-mean()-X|tBodyGyro-mean()-X|
|TimeBodyGyroscope-mean()-Y|tBodyGyro-mean()-Y|
|TimeBodyGyroscope-mean()-Z|tBodyGyro-mean()-Z|
|TimeBodyGyroscope-std()-X|tBodyGyro-std()-X|
|TimeBodyGyroscope-std()-Y|tBodyGyro-std()-Y|
|TimeBodyGyroscope-std()-Z|tBodyGyro-std()-Z|
|TimeBodyGyroscopeJerk-mean()-X|tBodyGyroJerk-mean()-X|
|TimeBodyGyroscopeJerk-mean()-Y|tBodyGyroJerk-mean()-Y|
|TimeBodyGyroscopeJerk-mean()-Z|tBodyGyroJerk-mean()-Z|
|TimeBodyGyroscopeJerk-std()-X|tBodyGyroJerk-std()-X|
|TimeBodyGyroscopeJerk-std()-Y|tBodyGyroJerk-std()-Y|
|TimeBodyGyroscopeJerk-std()-Z|tBodyGyroJerk-std()-Z|
|TimeBodyAcceleratorMagnitude-mean()|tBodyAccMag-mean()|
|TimeBodyAcceleratorMagnitude-std()|tBodyAccMag-std()|
|TimeGravityAcceleratorMagnitude-mean()|tGravityAccMag-mean()|
|TimeGravityAcceleratorMagnitude-std()|tGravityAccMag-std()|
|TimeBodyAcceleratorJerkMagnitude-mean()|tBodyAccJerkMag-mean()|
|TimeBodyAcceleratorJerkMagnitude-std()|tBodyAccJerkMag-std()|
|TimeBodyGyroscopeMagnitude-mean()|tBodyGyroMag-mean()|
|TimeBodyGyroscopeMagnitude-std()|tBodyGyroMag-std()|
|TimeBodyGyroscopeJerkMagnitude-mean()|tBodyGyroJerkMag-mean()|
|TimeBodyGyroscopeJerkMagnitude-std()|tBodyGyroJerkMag-std()|
|FrequencyBodyAccelerator-mean()-X|fBodyAcc-mean()-X|
|FrequencyBodyAccelerator-mean()-Y|fBodyAcc-mean()-Y|
|FrequencyBodyAccelerator-mean()-Z|fBodyAcc-mean()-Z|
|FrequencyBodyAccelerator-std()-X|fBodyAcc-std()-X|
|FrequencyBodyAccelerator-std()-Y|fBodyAcc-std()-Y|
|FrequencyBodyAccelerator-std()-Z|fBodyAcc-std()-Z|
|FrequencyBodyAcceleratorJerk-mean()-X|fBodyAccJerk-mean()-X|
|FrequencyBodyAcceleratorJerk-mean()-Y|fBodyAccJerk-mean()-Y|
|FrequencyBodyAcceleratorJerk-mean()-Z|fBodyAccJerk-mean()-Z|
|FrequencyBodyAcceleratorJerk-std()-X|fBodyAccJerk-std()-X|
|FrequencyBodyAcceleratorJerk-std()-Y|fBodyAccJerk-std()-Y|
|FrequencyBodyAcceleratorJerk-std()-Z|fBodyAccJerk-std()-Z|
|FrequencyBodyGyroscope-mean()-X|fBodyGyro-mean()-X|
|FrequencyBodyGyroscope-mean()-Y|fBodyGyro-mean()-Y|
|FrequencyBodyGyroscope-mean()-Z|fBodyGyro-mean()-Z|
|FrequencyBodyGyroscope-std()-X|fBodyGyro-std()-X|
|FrequencyBodyGyroscope-std()-Y|fBodyGyro-std()-Y|
|FrequencyBodyGyroscope-std()-Z|fBodyGyro-std()-Z|
|FrequencyBodyAcceleratorMagnitude-mean()|fBodyAccMag-mean()|
|FrequencyBodyAcceleratorMagnitude-std()|fBodyAccMag-std()|
|FrequencyBodyAcceleratorJerkMagnitude-mean()|fBodyBodyAccJerkMag-mean()|
|FrequencyBodyAcceleratorJerkMagnitude-std()|fBodyBodyAccJerkMag-std()|
|FrequencyBodyGyroscopeMagnitude-mean()|fBodyBodyGyroMag-mean()|
|FrequencyBodyGyroscopeMagnitude-std()|fBodyBodyGyroMag-std()|
|FrequencyBodyGyroscopeJerkMagnitude-mean()|fBodyBodyGyroJerkMag-mean()|
|FrequencyBodyGyroscopeJerkMagnitude-std()|fBodyBodyGyroJerkMag-std()|
