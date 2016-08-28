## Introduction

A tidy aggregated table written to "samsung_motions.txt" using script "run_analysis.R" that gets and cleans the data 
sourced from the <a href="http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones"</a>The UCI Machine Learning Repository.

Experiments had been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.
Motion measuements were taken in all 3 direction (X,Y & Z).

##Variables

1	subjectid
2	activity
3	tBodyAcc_mean_X
4	tBodyAcc_mean_Y
5	tBodyAcc_mean_Z
6	tGravityAcc_mean_X
7	tGravityAcc_mean_Y
8	tGravityAcc_mean_Z
9	tBodyAccJerk_mean_X
10	tBodyAccJerk_mean_Y
11	tBodyAccJerk_mean_Z
12	tBodyGyro_mean_X
13	tBodyGyro_mean_Y
14	tBodyGyro_mean_Z
15	tBodyGyroJerk_mean_X
16	tBodyGyroJerk_mean_Y
17	tBodyGyroJerk_mean_Z
18	tBodyAccMag_mean
19	tGravityAccMag_mean
20	tBodyAccJerkMag_mean
21	tBodyGyroMag_mean
22	tBodyGyroJerkMag_mean
23	fBodyAcc_mean_X
24	fBodyAcc_mean_Y
25	fBodyAcc_mean_Z
26	fBodyAcc_meanFreq_X
27	fBodyAcc_meanFreq_Y
28	fBodyAcc_meanFreq_Z
29	fBodyAccJerk_mean_X
30	fBodyAccJerk_mean_Y
31	fBodyAccJerk_mean_Z
32	fBodyAccJerk_meanFreq_X
33	fBodyAccJerk_meanFreq_Y
34	fBodyAccJerk_meanFreq_Z
35	fBodyGyro_mean_X
36	fBodyGyro_mean_Y
37	fBodyGyro_mean_Z
38	fBodyGyro_meanFreq_X
39	fBodyGyro_meanFreq_Y
40	fBodyGyro_meanFreq_Z
41	fBodyAccMag_mean
42	fBodyAccMag_meanFreq
43	fBodyBodyAccJerkMag_mean
44	fBodyBodyAccJerkMag_meanFreq
45	fBodyBodyGyroMag_mean
46	fBodyBodyGyroMag_meanFreq
47	fBodyBodyGyroJerkMag_mean
48	fBodyBodyGyroJerkMag_meanFreq
49	tBodyAcc_std_X
50	tBodyAcc_std_Y
51	tBodyAcc_std_Z
52	tGravityAcc_std_X
53	tGravityAcc_std_Y
54	tGravityAcc_std_Z
55	tBodyAccJerk_std_X
56	tBodyAccJerk_std_Y
57	tBodyAccJerk_std_Z
58	tBodyGyro_std_X
59	tBodyGyro_std_Y
60	tBodyGyro_std_Z
61	tBodyGyroJerk_std_X
62	tBodyGyroJerk_std_Y
63	tBodyGyroJerk_std_Z
64	tBodyAccMag_std
65	tGravityAccMag_std
66	tBodyAccJerkMag_std
67	tBodyGyroMag_std
68	tBodyGyroJerkMag_std
69	fBodyAcc_std_X
70	fBodyAcc_std_Y
71	fBodyAcc_std_Z
72	fBodyAccJerk_std_X
73	fBodyAccJerk_std_Y
74	fBodyAccJerk_std_Z
75	fBodyGyro_std_X
76	fBodyGyro_std_Y
77	fBodyGyro_std_Z
78	fBodyAccMag_std
79	fBodyBodyAccJerkMag_std
80	fBodyBodyGyroMag_std
81	fBodyBodyGyroJerkMag_std


##Data (modified from source "features_info.txt" as described in the "Data Transformations" section below)

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean: Mean value
std: Standard deviation


Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean


## Data Transformations
Removed brackets from variable names.
