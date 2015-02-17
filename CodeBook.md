<center>
##Final Project *getdata-011*
</center>



###Study design


Data were collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for this project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The data presented was obtained by:
<br />
1.Merging the training and the test sets to create one data set.
<br />
2.Extracting only the measurements on the mean and standard deviation for each measurement.
<br />
3.Finally, a second, independent tidy data set with the average of each variable for each activity and each subject was created.



###Code book

+Note: Features are normalized and bounded within [-1,1].

**id**

    Identification (numeric value) of the subject who conducted the experiment.
    
    
**activities**

    Activities performed by the subject.
    
    + WALKING
    + WALKING_UPSTAIRS
    + WALKING_DOWNSTAIRS
    + SITTING
    + STANDING
    + LAYING


**tBodyAcc.mean.X**

    Average of the Mean value of the Body acceleration signal in the time domain (X axis)
    
    
**tBodyAcc.mean.Y**

    Average of the Mean value of the Body acceleration signal in the time domain (Y axis)
    
    
**tBodyAcc.mean.Z**

    Average of the Mean value of the Body acceleration signal in the time domain (Z axis)
    
    
**tBodyAcc.std.X**

    Average of the Standard deviation of the Body acceleration signal in the time domain (X axis)
    
    
**tBodyAcc.std.Y**

    Average of the Standard deviation of the Body acceleration signal in the time domain (Y axis)
    
    
**tBodyAcc.std.Z**

    Average of the Standard deviation of the Body acceleration signal in the time domain (Z axis)
    
    
**tGravityAcc.mean.X**

    Average of the Mean value of the Gravity acceleration signal in the time domain (X axis)
    
    
**tGravityAcc.mean.Y**

    Average of the Mean value of the Gravity acceleration signal in the time domain (Y axis)
    
    
**tGravityAcc.mean.Z**

    Average of the Mean value of the Gravity acceleration signal in the time domain (Z axis)
    
    
**tGravityAcc.std.X**

    Average of the Standard deviation value of the Gravity acceleration signal in the time domain (X axis)
    
    
**tGravityAcc.std.Y**

    Average of the Standard deviation value of the Gravity acceleration signal in the time domain (Y axis)
    
    
**tGravityAcc.std.Z**

    Average of the Standard deviation value of the Gravity acceleration signal in the time domain (Z axis)
    
    
**tBodyAccJerk.mean.X**

    Average of the Mean value of the Body acceleration signal derived in time to obtain a Jerk signal in the time domain (X axis)
    
  
**tBodyAccJerk.mean.Y**

    Average of the Mean value of the Body acceleration signal derived in time to obtain a Jerk signal in the time domain (Y axis)
    
    
**tBodyAccJerk.mean.Z**

    Average of the Mean value of the Body acceleration signal derived in time to obtain a Jerk signal in the time domain (Z axis)
    
    
**tBodyAccJerk.std.X**

    Average of the Standard deviation value of the Body acceleration signal derived in time to obtain a Jerk signal in the time domain (Z axis)
    
    
**tBodyAccJerk.std.Y**

    Average of the Standard deviation value of the Body acceleration signal derived in time to obtain a Jerk signal in the time domain (Z axis)
    
    
**tBodyAccJerk.std.Z**

    Average of the Standard deviation value of the Body acceleration signal derived in time to obtain a Jerk signal in the time domain (Z axis)
    
    
**tBodyGyro.mean.X**

    Average of the Mean value of the Body angular velocity signal in the time domain (X axis)
    
    
**tBodyGyro.mean.Y**

    Average of the Mean value of the Body angular velocity signal in the time domain (Y axis)
    
    
**tBodyGyro.mean.Z**

    Average of the Mean value of the Body angular velocity signal in the time domain (Z axis)
    
    
**tBodyGyro.std.X**  

    Average of the Standard deviation value of the Body angular velocity signal in the time domain (X axis)
    
    
**tBodyGyro.std.Y**

    Average of the Standard deviation value of the Body angular velocity signal in the time domain (Y axis)
    
    
**tBodyGyro.std.Z**

    Average of the Standard deviation value of the Body angular velocity signal in the time domain (Z axis)
    
    

**tBodyGyroJerk.mean.X**

    Average of the Mean value of the Body angular velocity signal derived in time to obtain a Jerk signal in the time domain (X axis)
    
    
**tBodyGyroJerk.mean.Y**

    Average of the Mean value of the Body angular velocity signal derived in time to obtain a Jerk signal in the time domain (Y axis)
    
    
**tBodyGyroJerk.mean.Z**

    Average of the Mean value of the Body angular velocity signal derived in time to obtain a Jerk signal in the time domain (Z axis)
    
    
**tBodyGyroJerk.std.X**

    Average of the Standard deviation value of the Body angular velocity signal derived in time to obtain a Jerk signal in the time domain (X axis)
    
    
**tBodyGyroJerk.std.Y**

    Average of the Standard deviation value of the Body angular velocity signal derived in time to obtain a Jerk signal in the time domain (Y axis)
    
    
**tBodyGyroJerk.std.Z**

    Average of the Standard deviation value of the Body angular velocity signal derived in time to obtain a Jerk signal in the time domain (Z axis)
    

**tBodyAccMag.mean**

    Average of the Mean value of the Magnitude of Body acceleration signal in the time domain. Calculated using the Euclidean norm.
    
    
**tBodyAccMag.std**
  
    Average of the Standard deviation value of the Magnitude of Body acceleration signal in the time domain. Calculated using the Euclidean norm.
    
    
**tGravityAccMag.mean**

     Average of the Mean value of the Magnitude of Gravity acceleration signal signal in the time domain. Calculated using the Euclidean norm.
     
     
**tGravityAccMag.std**

    Average of the Standard deviation value of the Magnitude of Gravity acceleration signal signal in the time domain. Calculated using the Euclidean norm.
    

**tBodyAccJerkMag.mean**

     Average of the Mean value of the Magnitude of the Body acceleration signal derived in time to obtain a Jerk signal in the time domain. Calculated using the Euclidean norm.
     
   
**tBodyAccJerkMag.std**

    Average of the Standard deviation value of the Magnitude of the Body acceleration signal derived in time to obtain a Jerk signal in the time domain. Calculated using the Euclidean norm.
    
    
**tBodyGyroMag.mean**

    Average of the Mean value of the Magnitude of the Body angular velocity signal in the time domain. Calculated using the Euclidean norm.
    
    
**tBodyGyroMag.std**

    Average of the Standard deviation value of the Magnitude of the Body angular velocity signal in the time domain. Calculated using the Euclidean norm.
    
    
**tBodyGyroJerkMag.mean**

    Average of the Mean value of the Magnitude of the Body angular velocity derived in time to obtain a Jerk signal in the time domain. Calculated using the Euclidean norm.
   
    
**tBodyGyroJerkMag.std**

    Average of the Standard deviation value of the Magnitude of the Body angular velocity derived in time to obtain a Jerk signal in the time domain. Calculated using the Euclidean norm.
    
    
<br />
+ Variables with the same meaning than the previous ones, except by the fact that they exist in the frequency domain (obtained using a Fast Fourier Transform - FFT)
<br />

**fBodyAcc.mean.X**

**fBodyAcc.mean.Y**

**fBodyAcc.mean.Z**

**fBodyAcc.std.X**

**fBodyAcc.std.Y**

**fBodyAcc.std.Z**     

**fBodyAccJerk.mean.X**

**fBodyAccJerk.mean.Y**

**fBodyAccJerk.mean.Z**      

**fBodyAccJerk.std.X**

**fBodyAccJerk.std.Y**

**fBodyAccJerk.std.Z**       

**fBodyGyro.mean.X**

**fBodyGyro.mean.Y**

**fBodyGyro.mean.Z**         

**fBodyGyro.std.X**

**fBodyGyro.std.Y**

**fBodyGyro.std.Z**        

**fBodyAccMag.mean**

**fBodyAccMag.std**

**fBodyBodyAccJerkMag.mean** 

**fBodyBodyAccJerkMag.std**

**fBodyBodyGyroMag.mean**

**fBodyBodyGyroMag.std**     

**fBodyBodyGyroJerkMag.mean**

**fBodyBodyGyroJerkMag.std** 