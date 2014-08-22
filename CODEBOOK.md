tidy_data.txt Codebook
======================

Activity
--------

* Type: string
* Definition: The activity the subject was doing when these observations were made
* Values: `WALKING`, `WALKING_UPSTAIRS`, `WALKING_DOWNSTAIRS`, `SITTING`, `STANDING`, `LAYING`

Subject
-------

* Type: integer
* Definition: Which of the 30 subjects the observations pertain to
* Values: integers between 1 and 30 inclusive

Samsung Data
------------

All remaining columns are means of data pulled collected by the Samsung Galaxy S sensors, and are *means* of observations pertaining to the relevant Activity/Subject factor pair.  As such, all are `numeric` data.  We give simply a list of the definitions of each, taken from Samsungs own codebook (cf. `README.txt` in the downloaded data at the link given in `README.md`).

* `tBodyAcc-mean()-X|Y|Z`: mean of the body component of the raw data given by the accelerometer in each of the three coordinates
* `tBodyAcc-std()-X|Y|Z`: standard deviation of the above
* `tGravityAcc-mean()-X|Y|Z`: mean of the gravity component of the raw data given by the accelerometer in each of the three coordinates
* `tGravityAcc-std()-X|Y|Z`: standard deviation of the above
* `tBodyAccJerk-mean()-X|Y|Z`: mean of the derivative of `tBodyAcc-mean()` in each of the three coordinates
* `tBodyAccJerk-std()-X|Y|Z`: standard deviation of the derivative of `tBodyAcc-mean()` in each of the three coordinates
* `tBodyGyro-mean()-X|Y|Z`: mean of the body component of the raw data given by the gyroscope in each of the three coordinates
* `tBodyGyro-std()-X|Y|Z`: standard deviation of the above
* `tBodyGyroJerk-mean()-X|Y|Z`: mean of the derivative of `tBodyGyro-mean()` in each of the three coordinates
* `tBodyGyroJerk-std()-X|Y|Z`: standard deviation of the derivative of `tBodyGyro-mean()` in each of the three coordinates
* `tBodyAccMag-mean()`: magnitude of the three-dimensional vector given by the `tBodyAcc-mean()-X|Y|Z` values
* `tBodyAccMag-std()`: magnitude of the three-dimensional vector given by the `tBodyAcc-std()-X|Y|Z` values
* `tGravityAccMag-mean()`: magnitude of the three-dimensional vector given by the `tGravityAcc-mean()-X|Y|Z` values
* `tGravityAccMag-std()`: magnitude of the three-dimensional vector given by the `tGravityAcc-std()-X|Y|Z` values
* `tBodyAccJerkMag-mean()`: magnitude of the three-dimensional vector given by the `tBodyAccJerk-mean()-X|Y|Z` values
* `tBodyAccJerkMag-std()`: magnitude of the three-dimensional vector given by the `tBodyAccJerk-std()-X|Y|Z` values
* `tBodyGyroMag-mean()`: magnitude of the three-dimensional vector given by the `tBodyGyro-mean()-X|Y|Z` values
* `tBodyGyroMag-std()`: magnitude of the three-dimensional vector given by the `tBodyGyro-mean()-X|Y|Z` values
* `tBodyGyroJerkMag-mean()`: magnitude of the three-dimensional vector given by the `tBodyGyroJerk-mean()-X|Y|Z` values
* `tBodyGyroJerkMag-std()`: magnitude of the three-dimensional vector given by the `tBodyGyroJerk-mean()-X|Y|Z` values
* `fBodyAcc-mean()-X|Y|Z`: mean of *Fast Fourier Transform* (FFT) of the signals given by `tBodyAcc-mean()` in each coordinate
* `fBodyAcc-std()-X|Y|Z`: standard deviation of the above
* `fBodyAcc-MeanFreq()-X|Y|Z`: mean frequency of the above
* `fBodyAccJerk-mean()-X|Y|Z`: mean of the FFT of the signals given by `tBodyAccJerk-mean()` in each coordinate
* `fBodyAccJerk-std()-X|Y|Z`: standard deviation of the above
* `fBodyAccJerk-MeanFreq()-X|Y|Z`: mean frequency of the above
* `fBodyGyro-mean()-X|Y|Z`: mean of the FFT of the signals given by `tBodyGyro-mean()` in each coordinate
* `fBodyGyro-std()-X|Y|Z`: standard deviation of the above
* `fBodyGyro-MeanFreq()-X|Y|Z`: mean frequency of the above
* `fBodyAccMag-mean()`: mean of the FFT of the vector magnitudes given by `tBodyAccMag-mean()`
* `fBodyAccMag-std()`: standard deviation of the above
* `fBodyAccMag-MeanFreq()`: mean frequency of the above
* `fBodyBodyAccJerkMag-mean()`: mean of the FFT of the vector magnitudes given by `tBodyAccJerkMag-mean()`
* `fBodyBodyAccJerkMag-std()`: standard deviation of the above
* `fBodyBodyAccJerkMag-MeanFreq()`: mean frequency of the above
* `fBodyBodyGyroMag-mean()`: mean of the FFT of the vector magnitudes given by `tBodyGyroMag-mean()`
* `fBodyBodyGyroMag-std()`: standard deviation of the above
* `fBodyBodyGyroMag-MeanFreq()`: mean frequency of the above
* `fBodyBodyGyroJerkMag-mean()`: mean of the FFT of the vector magnitudes given by `tBodyGyroJerkMag-mean()`
* `fBodyBodyGyroJerkMag-std()`: standard deviation of the above
* `fBodyBodyGyroJerkMag-MeanFreq()`: mean frequency of the above
