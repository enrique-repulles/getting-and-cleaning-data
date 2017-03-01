---
title: "Codebook for Coursera project"
author: "Enrique Repullés"
date: "01/03/2017"
output:
 html_document:
 keep_md: yes
---

## Project Description
This dataset comes from the project assignment in the "Getting and Cleaning Data" course (Week 4). 

##Study design and data processing

###Collection of the raw data
The raw (original) data can be obtained in this URL: 

http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

from this zip file, the following files has been processed

/train/subject_train.txt
/train/X_train.txt
/train/y_train.txt
/test/subject_test.txt
/test/X_test.txt
/test/y_test.txt


###Notes on the original (raw) data 
In the original zip file, there are some files explaining the original variables: 
- features.txt: list of original features
- features_info.txt: description of the original features
- activity_labels.txt: labels for categorical variable "activity"

## Process done
From the original dataset, the following transformations has been done

1. Only the features on mean and standard deviation has been used.
2. The activities codes in the original data set has been replaced by activity names.
3. the variable names has been cleaned and formatted.
4. the measures of each activity and subject has been averaged into one single row.

to re-create the cleaning process, execute the run_analysis function in the run_analysis.R script 


###Cleaning of variable names
the variable names has been cleaned and formatted using these criteria:
- the abbreviations has been replaced by full names
- the "f" and "t" prefixes has been expanded into "time" and "fourier" 
- capital letters has been removed
- symbols like "(" and ")" has been removed



##Description of the variables in the tiny_data.txt file

The final clean dataset has the following dimensions: 
	180 obs. of 81 variables


The dataset contains the following variables:


### Variable "activity"
Activity performed. Is a categorical variable with the following categories:
- walking
- walkingupstairs
- walkingdownstairs
- sitting
- standing
- laying

### Variable "subject"
the subject performing the activity. It is an numerical identifier (1 to 30)

### Variable "time-body-accelerometer-mean-x"
- mean of body signal from accelerometer (x axis). 
- the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1] . 

### Variable "time-body-accelerometer-mean-y"
- mean of body signal from accelerometer (y axis)
- the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "time-body-accelerometer-mean-z"
- mean of body signal from accelerometer (z axis)
- the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "time-body-accelerometer-std-x"
- standard deviation of body signal from accelerometer (x axis)
- the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "time-body-accelerometer-std-y"
- standard deviation of body signal from accelerometer (y axis)
- the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "time-body-accelerometer-std-z"
- standard deviation of body signal from accelerometer (z axis)
- the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "time-gravity-accelerometer-mean-x"
- mean of gravity signal from accelerometer (x axis)
- the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "time-gravity-accelerometer-mean-y"
- mean of gravity signal from accelerometer (y axis)
- the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "time-gravity-accelerometer-mean-z"
- mean of gravity signal from accelerometer (z axis)
- the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "time-gravity-accelerometer-std-x"
- standard deviation of gravity signal from accelerometer (x axis)
- the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "time-gravity-accelerometer-std-y"
- standard deviation of gravity signal from accelerometer (y axis)
- the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "time-gravity-accelerometer-std-z"
- standard deviation of gravity signal from accelerometer (z axis)
- the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "time-body-accelerometer-jerk-mean-x"
- mean of body jerk signal from accelerometer (x axis)
- the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "time-body-accelerometer-jerk-mean-y"
- mean of body jerk signal from accelerometer (y axis)
- the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "time-body-accelerometer-jerk-mean-z"
- mean of body jerk signal from accelerometer (z axis)
- the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "time-body-accelerometer-jerk-std-x"
- standard deviation of body jerk signal from accelerometer (x axis)
- the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "time-body-accelerometer-jerk-std-y"
- standard deviation of body jerk signal from accelerometer (y axis)
- the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "time-body-accelerometer-jerk-std-z"
- standard deviation of body jerk signal from accelerometer (z axis)
- the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "time-body-gyroscope-mean-x"
- mean of body signal from gyroscope (x axis)
- the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "time-body-gyroscope-mean-y"
- mean of body signal from gyroscope (y axis)
- the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "time-body-gyroscope-mean-z"
- mean of body signal from gyroscope (z axis)
- the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "time-body-gyroscope-std-x"
- standard deviation of body signal from gyroscope (x axis)
- the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "time-body-gyroscope-std-y"
- standard deviation of body signal from gyroscope (y axis)
- the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "time-body-gyroscope-std-z"
- standard deviation of body signal from gyroscope (z axis)
- the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "time-body-gyroscope-jerk-mean-x"
- mean of body jerk signal from gyroscope (x axis)
- the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "time-body-gyroscope-jerk-mean-y"
- mean of body jerk signal from gyroscope (y axis)
- the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "time-body-gyroscope-jerk-mean-z"
- mean of body jerk signal from gyroscope (z axis)
- the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "time-body-gyroscope-jerk-std-x"
- standard deviation of body jerk signal from gyroscope (x axis)
- the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "time-body-gyroscope-jerk-std-y"
- standard deviation of body jerk signal from gyroscope (y axis)
- the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "time-body-gyroscope-jerk-std-z"
- standard deviation of body jerk signal from gyroscope (z axis)
- the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "time-body-accelerometer-magnitude-mean"
- mean of Magnitude (Euclidean norm) of body signal from accelerometer ( axis)
- the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "time-body-accelerometer-magnitude-std"
- standard deviation of Magnitude (Euclidean norm) of body signal from accelerometer ( axis)
- the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "time-gravity-accelerometer-magnitude-mean"
- mean of Magnitude (Euclidean norm) of gravity signal from accelerometer ( axis)
- the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "time-gravity-accelerometer-magnitude-std"
- standard deviation of Magnitude (Euclidean norm) of gravity signal from accelerometer ( axis)
- the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "time-body-accelerometer-jerk-magnitude-mean"
- mean of Magnitude (Euclidean norm) of body jerk signal from accelerometer ( axis)
- the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "time-body-accelerometer-jerk-magnitude-std"
- standard deviation of Magnitude (Euclidean norm) of body jerk signal from accelerometer ( axis)
- the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "time-body-gyroscope-magnitude-mean"
- mean of Magnitude (Euclidean norm) of body signal from gyroscope ( axis)
- the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "time-body-gyroscope-magnitude-std"
- standard deviation of Magnitude (Euclidean norm) of body signal from gyroscope ( axis)
- the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "time-body-gyroscope-jerk-magnitude-mean"
- mean of Magnitude (Euclidean norm) of body jerk signal from gyroscope ( axis)
- the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "time-body-gyroscope-jerk-magnitude-std"
- standard deviation of Magnitude (Euclidean norm) of body jerk signal from gyroscope ( axis)
- the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "fourier-accelerometer-mean-x"
-  mean of Fast Fourier Transform from the accelerometer (x axis)
-  the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "fourier-accelerometer-mean-y"
-  mean of Fast Fourier Transform from the accelerometer (y axis)
-  the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "fourier-accelerometer-mean-z"
-  mean of Fast Fourier Transform from the accelerometer (z axis)
-  the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "fourier-accelerometer-std-x"
-  standard deviation of Fast Fourier Transform from the accelerometer (x axis)
-  the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "fourier-accelerometer-std-y"
-  standard deviation of Fast Fourier Transform from the accelerometer (y axis)
-  the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "fourier-accelerometer-std-z"
-  standard deviation of Fast Fourier Transform from the accelerometer (z axis)
-  the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "fourier-accelerometer-freq-mean-x"
-  mean frequency of Fast Fourier Transform from the accelerometer (x axis)
-  the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "fourier-accelerometer-freq-mean-y"
-  mean frequency of Fast Fourier Transform from the accelerometer (y axis)
-  the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "fourier-accelerometer-freq-mean-z"
-  mean frequency of Fast Fourier Transform from the accelerometer (z axis)
-  the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "fourier-accelerometer-jerk-mean-x"
-  mean frequency of Fast Fourier Transform from the accelerometer (x axis)
-  the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "fourier-accelerometer-jerk-mean-y"
-  mean frequency of Fast Fourier Transform from the accelerometer (y axis)
-  the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "fourier-accelerometer-jerk-mean-z"
-  mean frequency of Fast Fourier Transform from the accelerometer (z axis)
-  the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "fourier-accelerometer-jerk-std-x"
-  standard deviation of Fast Fourier Transform from the accelerometer (x axis)
-  the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "fourier-accelerometer-jerk-std-y"
-  standard deviation of Fast Fourier Transform from the accelerometer (y axis)
-  the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "fourier-accelerometer-jerk-std-z"
-  standard deviation of Fast Fourier Transform from the accelerometer (z axis)
-  the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "fourier-accelerometer-jerk-freq-mean-x"
-  mean frequency of Fast Fourier Transform from the accelerometer (x axis)
-  the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "fourier-accelerometer-jerk-freq-mean-y"
-  mean frequency of Fast Fourier Transform from the accelerometer (y axis)
-  the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "fourier-accelerometer-jerk-freq-mean-z"
-  mean frequency of Fast Fourier Transform from the accelerometer (z axis)
-  the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "fourier-gyroscope-mean-x"
-  mean of Fast Fourier Transform from the gyroscope (x axis)
-  the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "fourier-gyroscope-mean-y"
-  mean of Fast Fourier Transform from the gyroscope (y axis)
-  the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "fourier-gyroscope-mean-z"
-  mean of Fast Fourier Transform from the gyroscope (z axis)
-  the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "fourier-gyroscope-std-x"
-  standard deviation of Fast Fourier Transform from the gyroscope (x axis)
-  the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "fourier-gyroscope-std-y"
-  standard deviation of Fast Fourier Transform from the gyroscope (y axis)
-  the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "fourier-gyroscope-std-z"
-  standard deviation of Fast Fourier Transform from the gyroscope (z axis)
-  the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "fourier-gyroscope-freq-mean-x"
-  mean of Fast Fourier Transform from the gyroscope (x axis)
-  the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "fourier-gyroscope-freq-mean-y"
-  mean of Fast Fourier Transform from the gyroscope (y axis)
-  the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "fourier-gyroscope-freq-mean-z"
-  mean of Fast Fourier Transform from the gyroscope (z axis)
-  the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "fourier-accelerometer-magnitude-mean"
-  mean of Fast Fourier Transform Magnitude from the accelerometer
-  the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "fourier-accelerometer-magnitude-std"
-  standard deviation of Fast Fourier Transform Magnitude from the accelerometer
-  the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "fourier-accelerometer-magnitude-freq-mean"
-  mean frequency of Fast Fourier Transform Magnitude from the accelerometer
-  the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "fourier-body-accelerometer-jerk-magnitude-mean"
-  mean of Fast Fourier Transform Magnitude of jerk from the accelerometer
-  the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "fourier-body-accelerometer-jerk-magnitude-std"
-  standard deviation of Fast Fourier Transform Magnitude of jerk from the accelerometer
-  the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "fourier-body-accelerometer-jerk-magnitude-freq-mean"
-  mean frequency of Fast Fourier Transform Magnitude of jerk from the accelerometer
-  the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "fourier-body-gyroscope-magnitude-mean"
-  mean of Fast Fourier Transform Magnitude from gyroscope
-  the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "fourier-body-gyroscope-magnitude-std"
-  standard deviation of Fast Fourier Transform Magnitude from gyroscope
-  the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "fourier-body-gyroscope-magnitude-freq-mean"
-  mean frequency of Fast Fourier Transform Magnitude from gyroscope
-  the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "fourier-body-gyroscope-jerk-magnitude-mean"
-  mean of Fast Fourier Transform Magnitude of jerk from gyroscope
-  the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "fourier-body-gyroscope-jerk-magnitude-std"
-  standard deviation of Fast Fourier Transform Magnitude of jerk from gyroscope
-  the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]

### Variable "fourier-body-gyroscope-jerk-magnitude-freq-mean"
-  mean frequency of Fast Fourier Transform Magnitude of jerk from gyroscope
-  the value is the average of measurements for each activity and subject, and is normalized and bounded within [-1,1]




