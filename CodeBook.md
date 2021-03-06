## Tidy data set for accelerometer data from the Samsung Galaxy S smartphone

This code book desrcribes the tidy dataset produced from the RunAnalysis function
in the run_analysis.R script as applied to the accelerometer data set downloadable
from the following address:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Measurements were collected on 30 subjects while engaged in 6 different activities.
The means of 79 measurements are reported on each subject and activity combination.

The 79 measurements chosen were the mean and standard deviation of signals described in the measurement section below. 

### Activities

Each subject engaged in the following activities (which are coded in the 'activity' variable in the tidy data set:

* laying
* sitting
* standing
* walking
* walking downstairs (coded as walkingDownstairs)
* walking upstairs (coded as walkingUpstairs)

### Measurements

The smartphone produces various accelerometer and gyroscope 3 axial measurements. Technical details of thes measurements appear in
the 'features_info.txt' file in the original data set. The means of the measurements are coded in 79 variables in the tidy data set,
along with subject and activity. The naming convention uses a camelCase style and a name can be broken using the following descriptions:

* 't' or 'f' at the begining refers to time or frequency measurements respectively
* 'Acc' refers to measurements from the accelerometer
* 'Gyro' refers to measurements from the gyroscope
* 'Mean' refers to the mean of a measurement
* 'Std' refers to the standard deviation of a measurement
* 'MeanFreq' refers to the weighted avarage of frequency components to obtain a mean frequency
* 'Body' refers to body based signals
* 'Gravity' refers to gravity based signals
* 'Jerk' refers jerk signals based on acceleration and angular velocity
* 'X', 'Y' and 'Z' refer to 3-axial directional signals in the X, Y and Z directions respectively
* 'Mag' refers to the magnitude of the  Euclidean norm of the X, Y and Z signals

So for example the varaibale 'tBodyGyroJerkMagMean' would be the magnitude of the mean of the jerk response of the time domain signal of gravity based gyroscope data over the 3 dimensions.

A full list of the variable appears below:

* subject
* activity
* tBodyAccMeanX
* tBodyAccMeanY
* tBodyAccMeanZ
* tGravityAccMeanX
* tGravityAccMeanY
* tGravityAccMeanZ
* tBodyAccJerkMeanX
* tBodyAccJerkMeanY
* tBodyAccJerkMeanZ
* tBodyGyroMeanX
* tBodyGyroMeanY
* tBodyGyroMeanZ
* tBodyGyroJerkMeanX
* tBodyGyroJerkMeanY
* tBodyGyroJerkMeanZ
* tBodyAccMagMean
* tGravityAccMagMean
* tBodyAccJerkMagMean
* tBodyGyroMagMean
* tBodyGyroJerkMagMean
* fBodyAccMeanX
* fBodyAccMeanY
* fBodyAccMeanZ
* fBodyAccMeanFreqX
* fBodyAccMeanFreqY
* fBodyAccMeanFreqZ
* fBodyAccJerkMeanX
* fBodyAccJerkMeanY
* fBodyAccJerkMeanZ
* fBodyAccJerkMeanFreqX
* fBodyAccJerkMeanFreqY
* fBodyAccJerkMeanFreqZ
* fBodyGyroMeanX
* fBodyGyroMeanY
* fBodyGyroMeanZ
* fBodyGyroMeanFreqX
* fBodyGyroMeanFreqY
* fBodyGyroMeanFreqZ
* fBodyAccMagMean
* fBodyAccMagMeanFreq
* fBodyBodyAccJerkMagMean
* fBodyBodyAccJerkMagMeanFreq
* fBodyBodyGyroMagMean
* fBodyBodyGyroMagMeanFreq
* fBodyBodyGyroJerkMagMean
* fBodyBodyGyroJerkMagMeanFreq
* tBodyAccStdX
* tBodyAccStdY
* tBodyAccStdZ
* tGravityAccStdX
* tGravityAccStdY
* tGravityAccStdZ
* tBodyAccJerkStdX
* tBodyAccJerkStdY
* tBodyAccJerkStdZ
* tBodyGyroStdX
* tBodyGyroStdY
* tBodyGyroStdZ
* tBodyGyroJerkStdX
* tBodyGyroJerkStdY
* tBodyGyroJerkStdZ
* tBodyAccMagStd
* tGravityAccMagStd
* tBodyAccJerkMagStd
* tBodyGyroMagStd
* tBodyGyroJerkMagStd
* fBodyAccStdX
* fBodyAccStdY
* fBodyAccStdZ
* fBodyAccJerkStdX
* fBodyAccJerkStdY
* fBodyAccJerkStdZ
* fBodyGyroStdX
* fBodyGyroStdY
* fBodyGyroStdZ
* fBodyAccMagStd
* fBodyBodyAccJerkMagStd
* fBodyBodyGyroMagStd
* fBodyBodyGyroJerkMagStd


