# Code Book for variables Description 

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities that are WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, and LAYING wearing a smartphone (Samsung Galaxy S) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. 

##### Attribute Information 

Each record in the dataset provided: 
* Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
* Triaxial Angular velocity from the gyroscope. 
* A 561-feature vector with time and frequency domain variables. 
* Its activity label. 
* An identifier of the subject who carried out the experiment.

##### Databases uses 

On the 'README.txt' file given for couse project, we find all databases uses to compute tidy.txt. 

README.md file gives details on script writing for the project. 

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

All the variables in tidy dataset are list here:

 [1]"Activity"                          
 [2] "Subject"                           
 [3] "tBodyAccMeanX"                     
 [4] "tBodyAccMeanY"                     
 [5] "tBodyAccMeanZ"                     
 [6] "tBodyAccStdX"                      
 [7] "tBodyAccStdY"                      
 [8] "tBodyAccStdZ"                      
 [9] "tGravityAccMeanX"                  
[10] "tGravityAccMeanY"                  
[11] "tGravityAccMeanZ"                  
[12] "tGravityAccStdX"                   
[13] "tGravityAccStdY"                   
[14] "tGravityAccStdZ"                   
[15] "tBodyAccJerkMeanX"                 
[16] "tBodyAccJerkMeanY"                 
[17] "tBodyAccJerkMeanZ"                 
[18] "tBodyAccJerkStdX"                  
[19] "tBodyAccJerkStdY"                  
[20] "tBodyAccJerkStdZ"                  
[21] "tBodyGyroMeanX"                    
[22] "tBodyGyroMeanY"                    
[23] "tBodyGyroMeanZ"                    
[24] "tBodyGyroStdX"                     
[25] "tBodyGyroStdY"                     
[26] "tBodyGyroStdZ"                     
[27] "tBodyGyroJerkMeanX"                
[28] "tBodyGyroJerkMeanY"                
[29] "tBodyGyroJerkMeanZ"                
[30] "tBodyGyroJerkStdX"                 
[31] "tBodyGyroJerkStdY"                 
[32] "tBodyGyroJerkStdZ"                 
[33] "tBodyAccMagMean"                   
[34] "tBodyAccMagStd"                    
[35] "tGravityAccMagMean"                
[36] "tGravityAccMagStd"                 
[37] "tBodyAccJerkMagMean"               
[38] "tBodyAccJerkMagStd"                
[39] "tBodyGyroMagMean"                  
[40] "tBodyGyroMagStd"                   
[41] "tBodyGyroJerkMagMean"              
[42] "tBodyGyroJerkMagStd"               
[43] "fBodyAccMeanX"                     
[44] "fBodyAccMeanY"                     
[45] "fBodyAccMeanZ"                     
[46] "fBodyAccStdX"                      
[47] "fBodyAccStdY"                      
[48] "fBodyAccStdZ"                      
[49] "fBodyAccMeanFreqX"                 
[50] "fBodyAccMeanFreqY"                 
[51] "fBodyAccMeanFreqZ"                 
[52] "fBodyAccJerkMeanX"                 
[53] "fBodyAccJerkMeanY"                 
[54] "fBodyAccJerkMeanZ"                 
[55] "fBodyAccJerkStdX"                  
[56] "fBodyAccJerkStdY"                  
[57] "fBodyAccJerkStdZ"                  
[58] "fBodyAccJerkMeanFreqX"             
[59] "fBodyAccJerkMeanFreqY"             
[60] "fBodyAccJerkMeanFreqZ"             
[61] "fBodyGyroMeanX"                    
[62] "fBodyGyroMeanY"                    
[63] "fBodyGyroMeanZ"                    
[64] "fBodyGyroStdX"                     
[65] "fBodyGyroStdY"                     
[66] "fBodyGyroStdZ"                     
[67] "fBodyGyroMeanFreqX"                
[68] "fBodyGyroMeanFreqY"                
[69] "fBodyGyroMeanFreqZ"                
[70] "fBodyAccMagMean"                   
[71] "fBodyAccMagStd"                    
[72] "fBodyAccMagMeanFreq"               
[73] "fBodyBodyAccJerkMagMean"           
[74] "fBodyBodyAccJerkMagStd"            
[75] "fBodyBodyAccJerkMagMeanFreq"       
[76] "fBodyBodyGyroMagMean"              
[77] "fBodyBodyGyroMagStd"               
[78] "fBodyBodyGyroMagMeanFreq"          
[79] "fBodyBodyGyroJerkMagMean"          
[80] "fBodyBodyGyroJerkMagStd"           
[81] "fBodyBodyGyroJerkMagMeanFreq"      
[82] "angletBodyAccMean,gravity"         
[83] "angletBodyAccJerkMean,gravityMean" 
[84] "angletBodyGyroMean,gravityMean"    
[85] "angletBodyGyroJerkMean,gravityMean"
[86] "angleX,gravityMean"                
[87] "angleY,gravityMean"                
[88] "angleZ,gravityMean"