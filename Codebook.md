---
output:
  html_document: default
---
Codebook
========

###This codebook describes the variables in the tidy data set generated by the run_analysis.R program.

###The 30 subjects are labeled in this analysis as "subject".

###The 6 activities are labeled in this analysis as "activity".
1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING

###Only the mean and standard deviation of the features were extracted from the original data set, yielding a total of 66 features.  These features are labeled as:
 1. "tBodyAcc-mean()-X"
 2. "tBodyAcc-mean()-Y"
 3. "tBodyAcc-mean()-Z"          
 4. "tBodyAcc-std()-X"
 5. "tBodyAcc-std()-Y"
 6. "tBodyAcc-std()-Z"           
 7. "tGravityAcc-mean()-X"        
 8. "tGravityAcc-mean()-Y"       
 9. "tGravityAcc-mean()-Z"       
 10. "tGravityAcc-std()-X"         
 11. "tGravityAcc-std()-Y"         
 12. "tGravityAcc-std()-Z"        
 13. "tBodyAccJerk-mean()-X"       
 14. "tBodyAccJerk-mean()-Y"      
 15. "tBodyAccJerk-mean()-Z"      
 16. "tBodyAccJerk-std()-X"        
 17. "tBodyAccJerk-std()-Y"        
 18. "tBodyAccJerk-std()-Z"       
 19. "tBodyGyro-mean()-X"          
 20. "tBodyGyro-mean()-Y"          
 21. "tBodyGyro-mean()-Z"         
 22. "tBodyGyro-std()-X"           
 23. "tBodyGyro-std()-Y"           
 24. "tBodyGyro-std()-Z"          
 25. "tBodyGyroJerk-mean()-X"      
 26. "tBodyGyroJerk-mean()-Y"      
 27. "tBodyGyroJerk-mean()-Z"     
 28. "tBodyGyroJerk-std()-X"       
 29. "tBodyGyroJerk-std()-Y"       
 30. "tBodyGyroJerk-std()-Z"      
 31. "tBodyAccMag-mean()"          
 32. "tBodyAccMag-std()"           
 33. "tGravityAccMag-mean()"      
 34. "tGravityAccMag-std()"        
 35. "tBodyAccJerkMag-mean()"      
 36. "tBodyAccJerkMag-std()"      
 37. "tBodyGyroMag-mean()"         
 38. "tBodyGyroMag-std()"          
 39. "tBodyGyroJerkMag-mean()"    
 40. "tBodyGyroJerkMag-std()"      
 41. "fBodyAcc-mean()-X"           
 42. "fBodyAcc-mean()-Y"          
 43. "fBodyAcc-mean()-Z"           
 44. "fBodyAcc-std()-X"            
 45. "fBodyAcc-std()-Y"           
 46. "fBodyAcc-std()-Z"            
 47. "fBodyAccJerk-mean()-X"       
 48. "fBodyAccJerk-mean()-Y"      
 49. "fBodyAccJerk-mean()-Z"       
 50. "fBodyAccJerk-std()-X"        
 51. "fBodyAccJerk-std()-Y"       
 52. "fBodyAccJerk-std()-Z"       
 53. "fBodyGyro-mean()-X"          
 54. "fBodyGyro-mean()-Y"         
 55. "fBodyGyro-mean()-Z"          
 56. "fBodyGyro-std()-X"           
 57. "fBodyGyro-std()-Y"          
 58. "fBodyGyro-std()-Z"           
 59. "fBodyAccMag-mean()"          
 60. "fBodyAccMag-std()"          
 61. "fBodyBodyAccJerkMag-mean()"  
 62. "fBodyBodyAccJerkMag-std()"   
 63. "fBodyBodyGyroMag-mean()"    
 64. "fBodyBodyGyroMag-std()"      
 65. "fBodyBodyGyroJerkMag-mean()" 
 66. "fBodyBodyGyroJerkMag-std()" 

###The units for these features vary as follows:
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

###The data was presented as tidy data in a data frame called "big", with one variable per column and one observation per row.  Thus, the tidy data set was comprised of 68 columns (subject + activity + 66 features) and 10299 rows (2947 from the test data set + 7352 rows from the train data set).

###This tidy data set was then used to create a data table called "tidydata_summary" with the average of each feature for each activity and each subject. This table is comprised of 4 columns (subject + activity + feature + average) and 11880 rows (30 subjects x 6 activities x 66 features).
