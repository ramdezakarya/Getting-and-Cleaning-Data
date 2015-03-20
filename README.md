# Getting-and-Cleaning-Data

Course project object are describing below. The principal goal is to prepare a tidy data set that can be used for later analysis. 

###Merge of training and test data sets (Description) 

For the project, it consist of study of Human Activity Recognition Using Smartphones Data Set. As he is seen on website, 30 selected subjects within an age bracket of 19-48 years performing activities of daily living while carrying a waist-mounted smartphone with embedded inertial sensors.
Project data is find here https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

We loaded via the link the zip data before unzip it with all files on it. So, as recommended, we load train and test datasets ".txt" and adding two columns with the y file and the subject. 
So for eqch test and train data set, we create one database contain the X file plus the y file (activities numbers) and the subject file.

To another step, we merge the test and train dataset.
We also read the activity labels which are 6 and features of given data. 


###Extracts only the measurements on the mean and standard deviation for each measurement

With grep function, we selected separately only variables with mean and std on theirs labels which are put on two news dataset. After that, i merge the two dataset to get one. 

### Tidy Data

We add columns names with features data previously loaded and try to replace by the "for" and "if" functions,
tidydata Activities (which are numbers 1 to 6) by theirs labels (WALKING, WALKING_UPSTAIRS, WALKING_DONSTAIRS, 
SITTING, STANDING and LAYING).

And atteining this step, tidy data is done by adding the average of each variable for the determine activity and its subject by aggregate function.

We create the final dataset in text format in our workong directory with the write.table fucntion.

### Course project lines 

Created one R script called run_analysis.R that does the following. 

1. Merges the training and the test sets to create one data set; 

2. Extracts only the measurements on the mean and standard deviation for each measurement; 

3. Uses descriptive activity names to name the activities in the data set;

4. Appropriately labels the data set with descriptive variable names;

5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

