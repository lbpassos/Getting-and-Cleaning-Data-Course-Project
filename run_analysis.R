library(tidyr)
library(dplyr)

##Working directory must contain:
##           UCI_HAR_Dataset
##             /         \
##           test       train

oldDir <- getwd();

mydir_test <- "./UCI_HAR_Dataset/test"
setwd(mydir_test)
mydata_test_id <- read.table("subject_test.txt");
mydata_test_func <- read.table("y_test.txt");
mydata_test <- read.table("X_test.txt");

setwd(oldDir)

##Read identification of the subject and name the column as "id"
#test_data <- mydata_test_id
test_data <- dplyr::rename(mydata_test_id, id=V1)

##Read the activity identification and name the column as "activities"
test_data <- cbind(test_data, mydata_test_func)
test_data <- dplyr::rename(test_data, activities=V1)
test_data <- cbind(test_data, mydata_test)



mydir_test <- "./UCI_HAR_Dataset/train"
setwd(mydir_test)
mydata_train_id <- read.table("subject_train.txt");
mydata_train_func <- read.table("y_train.txt");
mydata_train <- read.table("X_train.txt");

setwd(oldDir)

##Read identification of the subject and name the column as "id"
train_data <- mydata_train_id
train_data <- dplyr::rename(train_data, id=V1)

##Read the activity identification and name the column as "activities"
train_data <- cbind(train_data, mydata_train_func)
train_data <- dplyr::rename(train_data, activities=V1)
train_data <- cbind(train_data, mydata_train)

##Merge the two data frames
merged_data <- rbind(test_data, train_data)

##In the features vector select only the mean() and the std()
newMerged_data <- select(merged_data, c(id:V6, V41:V46, V81:V86, V121:V126, V161:V166, V201:V202, V214:V215, V227:V228, V240:V241, V253:V254, V266:V271, V345:V350, V424:V429, V503:V504, V516:V517, V529:V530, V542:V543))

##Using descriptive activity names to name the activities in the data set
for(i in 1:nrow(newMerged_data)){
	tmp <- newMerged_data[i,"activities"];
	if( tmp==1 ){
		newMerged_data[i,"activities"] <- "WALKING"
	}
	else
		if( tmp==2 ){
			newMerged_data[i,"activities"] <- "WALKING_UPSTAIRS"
		}
		else
			if( tmp==3 ){
				newMerged_data[i,"activities"] <- "WALKING_DOWNSTAIRS"
			}
			else
				if( tmp==4 ){
					newMerged_data[i,"activities"] <- "SITTING"
				}
				else
					if( tmp==5 ){
						newMerged_data[i,"activities"] <- "STANDING"
					}
					else
						if( tmp==6 ){
							newMerged_data[i,"activities"] <- "LAYING"
						}
}

##Sort data by id and by activities
newMerged_data<-dplyr::arrange(newMerged_data, id, activities)


mydir_test <- "./UCI_HAR_Dataset"
setwd(mydir_test)
featuresNames <- read.table("features.txt");
setwd(oldDir)

##Reading the new features vector
namesin_mergedata <- names(newMerged_data)
namesin_mergedata <- namesin_mergedata[3:length(namesin_mergedata)]

##Eliminating the "V" character for indexing (numeric)
numeric_names <- gsub("V", "", namesin_mergedata)
numeric_names <- as.numeric(numeric_names)

j <- 1
for(i in 3:length(names(newMerged_data)) ){
	t2 <- as.character(featuresNames[numeric_names[j],"V2"])
	
	##Replace the '-' for '.' in order for the variable name to be more readable
	names(newMerged_data)[i] <- gsub("-",".",t2)
	names(newMerged_data)[i] <- gsub("\\(\\)","",names(newMerged_data)[i])
	
	j <- j + 1
}

##Create the final dataset by grouping by id and summarising each column
final_dataset <- newMerged_data %>%
				group_by(id, activities) %>%
				summarise_each( funs(mean) )

##Create file for submission
write.table(final_dataset, file = "finalproj_res.txt", row.names = FALSE )









