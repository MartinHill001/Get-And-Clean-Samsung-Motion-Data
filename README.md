## Introduction

This repo uses data sourced from the <a href="http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones"</a>
Human Activity Recognition Using Smartphones Data Set as part of the Coursera Course "Getting and Cleaning Data". A script called
"run_analysis.R" performs the task of getting and cleaning data and outputs a tidy aggregated table written to "samsung_motions.txt".


The course web site:

* <b>Assignment</b>: <a href=https://www.coursera.org/learn/data-cleaning/peer/FIZtT/getting-and-cleaning-data-course-project"</a>Getting and cleaning data course project.

* <b>Dataset Provided</b>: <a href="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"</a> [59.6MB]

* <b>Dataset Description</b>: A full description of the data is contained in the aforementioned zipfile, but what follows is a brief outline.

Experiments had been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.
Motion measuements were taken in all 3 direction (X,Y & Z). This data was partitioned in 2 sets; a training set and a test set.


## Source Data
By extracting and placing the 'UCI HAR Dataset' folder and it's contents in the repo directory the following source files can be referenced.

<ol>
<li><b>UCI HAR Dataset/features.txt</b>: The measurement names </li>
<li><b>UCI HAR Dataset/activity_labels.txt</b>: Key-Value pairs for the six activities </li>
<li><b>UCI HAR Dataset/train/X_train.txt</b>: The train set measurements </li>
<li><b>UCI HAR Dataset/train/y_train.txt</b>: The train set activities</li>
<li><b>UCI HAR Dataset/train/subject_train.txt</b>: The train set subjects </li>
<li><b>UCI HAR Dataset/test/X_train.txt</b>: The test set measurements </li>
<li><b>UCI HAR Dataset/test/y_train.txt</b>: The test set activities</li>
<li><b>UCI HAR Dataset/test/subject_train.txt</b>: The test set subjects </li>
</ol>


## Running the "run_analysis.R" script

* 1 Load and merge data 
* 2 Extract mean & std measurements
* 3 Add activity names 
* 4 Tidy measurement names 
* 5 Aggregate data - writing it out to "samsung_motions.txt"
