# Getting-and-Cleaning-Data
Coursera class course project repo
Course project object are describing below. The principal goal is to prepare a tidy data set that can be used for later analysis. 

###Description 

For the project, it consist of study of Human Activity Recognition Using Smartphones Data Set. As he is seen on website, 30 selected subjects within an age bracket of 19-48 years performing activities of daily living while carrying a waist-mounted smartphone with embedded inertial sensors.
Project data is find here https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip .
We loaded via the link the zip data before unzip it with all files on it. So, as recommended, i load train and test datasets ".txt" and adding txo columns with the y file and the subject. 
We also read the activity labels which are 6 and features of given data. 
So that, after for the gsub fonction, we replace "mean" BY "Mean" and delete names withe "-()" on their writing.
After that, with cbind(), we merge the two datasets (train and test) to get one named dataset. 
