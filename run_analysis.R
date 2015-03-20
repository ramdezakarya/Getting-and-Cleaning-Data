dataTestX <- read.table("C:/Users/zakarya.ramde/Desktop/Coursera/Data Scientist/Getting and cleaning data/Course Project/UCI HAR Dataset/test/X_test.txt",sep="", header=FALSE)
dataTestA <- read.table("C:/Users/zakarya.ramde/Desktop/Coursera/Data Scientist/Getting and cleaning data/Course Project/UCI HAR Dataset/test/y_test.txt",sep="", header=FALSE)
dataTestS <- read.table("C:/Users/zakarya.ramde/Desktop/Coursera/Data Scientist/Getting and cleaning data/Course Project/UCI HAR Dataset/test/subject_test.txt",sep="", header=FALSE)
dataTest <-cbind(dataTestX,dataTestA,dataTestS)
head(dataTest)

dataTrainX <- read.table("C:/Users/zakarya.ramde/Desktop/Coursera/Data Scientist/Getting and cleaning data/Course Project/UCI HAR Dataset/train/X_train.txt",sep="", header=FALSE)
dataTrainA <- read.table("C:/Users/zakarya.ramde/Desktop/Coursera/Data Scientist/Getting and cleaning data/Course Project/UCI HAR Dataset/train/y_train.txt",sep="", header=FALSE)
dataTrainS <- read.table("C:/Users/zakarya.ramde/Desktop/Coursera/Data Scientist/Getting and cleaning data/Course Project/UCI HAR Dataset/train/subject_train.txt",sep="", header=FALSE)
dataTrain <-cbind(dataTrainX,dataTrainA,dataTrainS)
head(dataTrain)

features <- read.table("C:/Users/zakarya.ramde/Desktop/Coursera/Data Scientist/Getting and cleaning data/Course Project/UCI HAR Dataset/features.txt",sep="", header=FALSE)

#Merge Test and train data
Data <- rbind(dataTest,dataTrain)

#Extracts only measurements of means and std for each measurement
dataMeans <- grep('mean()', features[,2])
dataStd <- grep('std()', features[,2])

#columns with mean and Std on it 
featuresMeans <- features[dataMeans,]
featuresStd <- features[dataStd,]

#Merge features labels with means and std 
featuresT <-rbind(featuresMeans,featuresStd)

#Appropriately labels the data set with descriptive variable names
featuresN <-c(featuresT$V1, c(562,563))
tidydata <-Data[,featuresN]
o <- features[featuresT$V1,]

colnames(tidydata) <- c(as.character(o$V2), "Activity", "Subject")

#Uses descriptive activity names to name the activities in the data set
for (i in 1:10299) {
        if (tidydata$Activity[i]==1){
                tidydata$Activity[i]="WALKING"
        }
        if (tidydata$Activity[i]==2){
                tidydata$Activity[i]="WALKING_UPSTAIRS"
        }
        if (tidydata$Activity[i]==3) {
                tidydata$Activity[i]="WALKING_DOWNSTAIRS"
        }
        if (tidydata$Activity[i]==4) {
                tidydata$Activity[i]="SITTING"
        }
        if (tidydata$Activity[i]==5) {
                tidydata$Activity[i]="STANDING"
        }
        if (tidydata$Activity[i]==6) {
                tidydata$Activity[i]="LAYING"
        }
}

# From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject
tidy <-aggregate(tidydata, by=list(Activity=tidydata$Activity, Subject=tidydata$Subject), mean)

# Remove the last two columns
tidy[,83] = NULL
tidy[,82] = NULL

# Write tidy data into text format
write.table(tidy,"C:/Users/zakarya.ramde/Desktop/Coursera/Data Scientist/Getting and cleaning data/Course Project/UCI HAR Dataset/Getting-and-Cleaning-Data/tidy.txt",row.names=FALSE)
