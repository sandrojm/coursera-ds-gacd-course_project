# Getting and Cleaning Data Course Project

## Script objective

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Data Source

- Original: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
- Coursera: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Requirements

The script file [run_analysis.R](https://github.com/sandrojm/coursera-ds-gacd-course_project/blob/master/run_analysis.R) requires the installation of the following packages: 

- data.table (https://cran.r-project.org/web/packages/data.table/index.html)
- reshape2 (https://cran.r-project.org/web/packages/reshape2/index.html)

The installation steps are integrated in [run_analysis.R](https://github.com/sandrojm/coursera-ds-gacd-course_project/blob/master/run_analysis.R)

##  Script

Download and run [run_analysis.R](https://github.com/sandrojm/coursera-ds-gacd-course_project/blob/master/run_analysis.R) from this repository. The script will automatically: 

- Download the required data as a zip file into the current working directory
- Unzip the downloaded file within the specified working directory
- Intall the required packages descriped above
- Transform the data as described above
- Save a new, independent tidy data set named tidy_data.txt within the current working directory


