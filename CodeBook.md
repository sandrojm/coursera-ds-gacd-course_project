# Codebook

## 0 - Data Sources

- Original: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
- Coursera: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## 1 - Data Set Information

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Source: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## 2 - Files

File | Description
------------ | -------------
activity_labels.txt | connects class lables and activity names
features_info.txt |  information on the variables used on the feature vector.
features.txt | list of all features
README.txt | read me file with detailed information regarding the dataset
test/X_test.txt | raw data test
test/y_test.txt | raw data test labels
train/Inertial Signals/body_acc_x_train.txt |  the body acceleration signal obtained by subtracting the gravity from the total acceleration.
train/Inertial Signals/body_gyro_x_train.txt |  the angular velocity vector measured by the gyroscope for Each window sample. the units are radians/second.
train/Inertial Signals/total_acc_x_train.txt |  The acceleration signal from the smartphone accelerometer X axis in standard gravity units g. Every row shows a 128 element vector. The same description applies for the total_acc_x_train.txt and total_acc_z_train.txt files for the Y and Z axis.
train/subject_train.txt |  Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
train/X_train.txt | raw data training
train/y_train.txt | raw data training labels

## 3 - Variables

## 4 - Structure

## 5 - Transformation

## 6 - Process


