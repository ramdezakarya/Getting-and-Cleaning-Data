# Load X_test dataset containing values
dataTest<- read.table("C:/Users/zakarya.ramde/Desktop/Coursera/Data Scientist/Getting and cleaning data/Course Project/UCI HAR Dataset/test/X_test.txt",sep="", header=FALSE)

#Load y_test and Subject_test containing activity values and subject values 
dataTest[,562] <- read.table("C:/Users/zakarya.ramde/Desktop/Coursera/Data Scientist/Getting and cleaning data/Course Project/UCI HAR Dataset/test/y_test.txt",sep="", header=FALSE)
dataTest[,563] <- read.table("C:/Users/zakarya.ramde/Desktop/Coursera/Data Scientist/Getting and cleaning data/Course Project/UCI HAR Dataset/test/subject_test.txt",sep="", header=FALSE)

# Load X_train dataset containing values 
dataTrain <- read.table("C:/Users/zakarya.ramde/Desktop/Coursera/Data Scientist/Getting and cleaning data/Course Project/UCI HAR Dataset/train/X_train.txt",sep="", header=FALSE)

# Load y_train and Subject containing activity and subject values 
dataTrain[,562] <- read.table("C:/Users/zakarya.ramde/Desktop/Coursera/Data Scientist/Getting and cleaning data/Course Project/UCI HAR Dataset/train/y_train.txt",sep="", header=FALSE)
dataTrain[,563] <- read.table("C:/Users/zakarya.ramde/Desktop/Coursera/Data Scientist/Getting and cleaning data/Course Project/UCI HAR Dataset/train/subject_train.txt",sep="", header=FALSE)

#Load activity labels
activityLabels <- read.table("C:/Users/zakarya.ramde/Desktop/Coursera/Data Scientist/Getting and cleaning data/Course Project/UCI HAR Dataset/activity_labels.txt",sep="", header=FALSE)

#Load features and try to select those containing mean or std with gsub function
features <- read.csv("C:/Users/zakarya.ramde/Desktop/Coursera/Data Scientist/Getting and cleaning data/Course Project/UCI HAR Dataset/features.txt",sep="", header=FALSE)
features[,2] = gsub('-mean', 'Mean', features[,2])
features[,2] = gsub('-std', 'Std', features[,2])
features[,2] = gsub('[-()]', '', features[,2])

#Merge of training and test data sets
dataset <- rbind(dataTest,dataTrain)

# Extracts only the measurements on the mean and standard deviation for each measurement
colsDesire <- grep(".*Mean.*|.*Std.*", features[,2])
features <- features[colsDesire,]

colsDesire <- c(colsDesire, 562, 563)
dataset <- dataset[,colsDesire]

# Add the column names (features) to dataset
datasetColNames <- c(features$V2, "Activity", "Subject")
datasetColNames <- tolower(colnames(dataset))

Activity <- 1
for (ActivityLabel in activityLabels$V2) {
        dataset$Activity <- gsub(Activity, ActivityLabel, dataset$Activity)
        Activity <- Activity + 1
}

dataset$Activity <- as.factor(dataset$Activity)
dataset$Subject  <- as.factor(dataset$Subject)

# compute tidy data with merging dataset 
tidy <- aggregate(dataset, by=list(Activity = dataset$Activity, Subject=dataset$Subject), mean)

#Remove NA columns
tidy[,90] = NULL
tidy[,89] = NULL

#Write tidy.txt in working directory
write.table(tidy, "C:/Users/zakarya.ramde/Desktop/Coursera/Data Scientist/Getting and cleaning data/Course Project/UCI HAR Dataset/tidy.txt", row.names=FALSE)
