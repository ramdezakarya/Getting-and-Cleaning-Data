# Getting-and-Cleaning-Data
Coursera class course project repo
Course project object are describing below. The principal goal is to prepare a tidy data set that can be used for later analysis. 

###Merge of training and test data sets (Description) 

For the project, it consist of study of Human Activity Recognition Using Smartphones Data Set. As he is seen on website, 30 selected subjects within an age bracket of 19-48 years performing activities of daily living while carrying a waist-mounted smartphone with embedded inertial sensors.
Project data is find here https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip .
We loaded via the link the zip data before unzip it with all files on it. So, as recommended, i load train and test datasets ".txt" and adding txo columns with the y file and the subject. 
We also read the activity labels which are 6 and features of given data. 
So that, after for the gsub fonction, we replace "mean" BY "Mean" and delete names withe "-()" on their writing.
After that, with cbind(), we merge the two datasets (train and test) to get one named dataset. 

###Extracts only the measurements on the mean and standard deviation for each measurement

With grep function, we selected only variables with Mean and Std on theirs labels and create a new dataset.
After, the column names are add to the global dataset. 

### Tidy Data

And atteining this step, tidy data is done by adding the average of each variable for the determine activity and its subject. 

We create the final dataset in text format in our workong directory. 

### Course project lines 

Created one R script called run_analysis.R that does the following. 
1.Merges the training and the test sets to create one data set.
2.Extracts only the measurements on the mean and standard deviation for each measurement. 
3.Uses descriptive activity names to name the activities in the data set
4.Appropriately labels the data set with descriptive variable names. 
5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

