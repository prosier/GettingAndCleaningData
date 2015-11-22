Introduction
------------
The Smartlab has developed a new publicly available database of daily human activities that has been recorded using accelerometer and gyroscope data from a waist-mounted Android-OS smartphone (Samsung Galaxy S II).  
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.  

[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

### Contained features

The tidy data set contains the following Time and FFT features.

1	Subject  
2	Activity  
3	Time_BodyAcc_Mean_X  
4	Time_BodyAcc_Mean_Y  
5	Time_BodyAcc_Mean_Z  
6	Time_BodyAcc_StdDev_X  
7	Time_BodyAcc_StdDev_Y  
8	Time_BodyAcc_StdDev_Z  
9	Time_GravityAcc_Mean_X  
10	Time_GravityAcc_Mean_Y  
11	Time_GravityAcc_Mean_Z    
12	Time_GravityAcc_StdDev_X  
13	Time_GravityAcc_StdDev_Y  
14	Time_GravityAcc_StdDev_Z  
15	Time_BodyAccJerk_Mean_X  
16	Time_BodyAccJerk_Mean_Y  
17	Time_BodyAccJerk_Mean_Z  
18	Time_BodyAccJerk_StdDev_X  
19	Time_BodyAccJerk_StdDev_Y  
20	Time_BodyAccJerk_StdDev_Z  
21	Time_BodyGyro_Mean_X  
22	Time_BodyGyro_Mean_Y  
23	Time_BodyGyro_Mean_Z  
24	Time_BodyGyro_StdDev_X  
25	Time_BodyGyro_StdDev_Y  
26	Time_BodyGyro_StdDev_Z  
27	Time_BodyGyroJerk_Mean_X  
28	Time_BodyGyroJerk_Mean_Y  
29	Time_BodyGyroJerk_Mean_Z  
30	Time_BodyGyroJerk_StdDev_X  
31	Time_BodyGyroJerk_StdDev_Y  
32	Time_BodyGyroJerk_StdDev_Z  
33	Time_BodyAccMag_Mean  
34	Time_BodyAccMag_StdDev  
35	Time_GravityAccMag_Mean  
36	Time_GravityAccMag_StdDev  
37	Time_BodyAccJerkMag_Mean  
38	Time_BodyAccJerkMag_StdDev  
39	Time_BodyGyroMag_Mean  
40	Time_BodyGyroMag_StdDev  
41	Time_BodyGyroJerkMag_Mean  
42	Time_BodyGyroJerkMag_StdDev  
43	FFT_BodyAcc_Mean_X  
44	FFT_BodyAcc_Mean_Y  
45	FFT_BodyAcc_Mean_Z  
46	FFT_BodyAcc_StdDev_X  
47	FFT_BodyAcc_StdDev_Y  
48	FFT_BodyAcc_StdDev_Z  
49	FFT_BodyAcc_MeanFrequency_X  
50	FFT_BodyAcc_MeanFrequency_Y  
51	FFT_BodyAcc_MeanFrequency_Z  
52	FFT_BodyAccJerk_Mean_X  
53	FFT_BodyAccJerk_Mean_Y  
54	FFT_BodyAccJerk_Mean_Z  
55	FFT_BodyAccJerk_StdDev_X  
56	FFT_BodyAccJerk_StdDev_Y  
57	FFT_BodyAccJerk_StdDev_Z  
58	FFT_BodyAccJerk_MeanFrequency_X  
59	FFT_BodyAccJerk_MeanFrequency_Y  
60	FFT_BodyAccJerk_MeanFrequency_Z  
61	FFT_BodyGyro_Mean_X  
62	FFT_BodyGyro_Mean_Y  
63	FFT_BodyGyro_Mean_Z  
64	FFT_BodyGyro_StdDev_X  
65	FFT_BodyGyro_StdDev_Y  
66	FFT_BodyGyro_StdDev_Z  
67	FFT_BodyGyro_MeanFrequency_X  
68	FFT_BodyGyro_MeanFrequency_Y  
69	FFT_BodyGyro_MeanFrequency_Z  
70	FFT_BodyAccMag_Mean  
71	FFT_BodyAccMag_StdDev  
72	FFT_BodyAccMag_MeanFrequency  
73	FFT_BodyAccJerkMag_Mean  
74	FFT_BodyAccJerkMag_StdDev  
75	FFT_BodyAccJerkMag_MeanFrequency  
76	FFT_BodyGyroMag_Mean  
77	FFT_BodyGyroMag_StdDev  
78	FFT_BodyGyroMag_MeanFrequency  
79	FFT_BodyGyroJerkMag_Mean  
80	FFT_BodyGyroJerkMag_StdDev  
81	FFT_BodyGyroJerkMag_MeanFrequency  

