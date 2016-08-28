#########################################
#  1 Load and merge data                #
#########################################

#use read.table to correctly read in data!

#Get the fact names
measure_names<-read.table('UCI HAR Dataset/features.txt')
measure_names<-measure_names[,2]

#Get activity names
activity_names = read.table('UCI HAR Dataset/activity_labels.txt')
colnames(activity_names)<-c("activityid", "activity")

#Get the training data & label columns
train_measurements<-read.table("UCI HAR Dataset/train/X_train.txt")
colnames(train_measurements)<-measure_names
train_activities<-read.table("UCI HAR Dataset/train/y_train.txt")
colnames(train_activities)<-"activityid"
train_subjects<-read.table("UCI HAR Dataset/train/subject_train.txt")
colnames(train_subjects)<-"subjectid"

#combine into train set
train_set<-cbind(train_activities, train_subjects, train_measurements)


#Get the test data
test_measurements<-read.table("UCI HAR Dataset/test/X_test.txt")
#Label measure names
colnames(test_measurements)<-measure_names
test_activities<-read.table("UCI HAR Dataset/test/y_test.txt")
colnames(test_activities)<-"activityid"
test_subjects<-read.table("UCI HAR Dataset/test/subject_test.txt")
colnames(test_subjects)<-"subjectid"

#combine into train set
test_set<-cbind(test_activities, test_subjects, test_measurements)

#add test set to train set
all_data<-rbind(train_set,test_set)


#########################################
#  2 Extract mean & std measurements    #
#########################################

mean_cols<-grep("mean", colnames(all_data))
std_cols<-grep("std",colnames(all_data))
mean_std_data<-all_data[, c(1,2, mean_cols, std_cols)]

#########################################
#  3 Add activity names                 #
#########################################

mean_std_data<-merge(activity_names, mean_std_data, by.x = "activityid", by.y = "activityid")
mean_std_data<-mean_std_data[,2:82]

#########################################
#  4 Tidy measurement names             #
#########################################

colnames(mean_std_data)<-gsub("\\(\\)","",colnames(mean_std_data))
colnames(mean_std_data)<-gsub("-","_",colnames(mean_std_data))

#########################################
#  5 Aggregate data                     #
#########################################

aggegated_data<-aggregate(. ~subjectid+activity, mean_std_data, mean)
write.table(aggegated_data, file='samsung_motions.txt', row.name=FALSE)