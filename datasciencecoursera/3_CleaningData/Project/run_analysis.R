# read the training features 
X_train <- read.table("UCI HAR Dataset//train//X_train.txt")
# read the test features
X_test <- read.table("UCI HAR Dataset//test//X_test.txt")
# combine the train and test features 
all_x <- rbind(X_train,X_test)

# read the training labels 
Y_train <- read.table("UCI HAR Dataset//train//y_train.txt")
# read the test labels 
Y_test <- read.table("UCI HAR Dataset//test//y_test.txt")
# combine the train and tes labels 
all_y <- rbind(Y_train,Y_test)

# read the subjects in training 
Subject_train <- read.table("UCI HAR Dataset//train//subject_train.txt")
# read the subjects in testing
Subject_test <- read.table("UCI HAR Dataset//test//subject_test.txt")
# combine the subjects 
all_subject <- rbind(Subject_train,Subject_test)

# combine the features, labels and subjects 
all <- cbind(all_x,all_y,all_subject)

# read the names of features into the variable 'titles'
colnames <- read.table("UCI HAR Dataset//features.txt")
titles <- colnames[,2] 
# add the column names 'class' and 'subject' 
titles <- rbind(titles,"class","subject")
# name the columns  
names(all_x) <- colnames[,2] 

# extract the column indices containing measurements on mean  
mean_cols = grep("mean()", names(all_x), fixed=TRUE)
# extracts the column indices containing mesurements on standard deviation 
std_cols = grep("std()", names(all_x), fixed=TRUE)
# combine the indices 
meanNstd_cols <- rbind(as.matrix(mean_cols),as.matrix(std_cols))
# get the features corresponding to those column indices 
meanNstd_x <- all_x[,meanNstd_cols] 

# read the column headings 
headings <- names(meanNstd_x)
# convert the heading to lowercase 
headings <- tolower(headings)
# remove the character '-' 
headings <- gsub("-","",headings)
# remove the characters '(' and ')' 
headings <- gsub("\\(\\)","",headings)
# replace the character 'f' in 'fbody' with word 'frequency' 
headings <- sub("fbody","frequencybody",headings)
# replace the character 't' in 'tbody' with word 'time'
headings <- sub("tbody","timebody",headings)
# replace the characters 'acc' with word 'acceleration'
headings <- sub("acc","acceleration",headings)
# replace the character 'std' with word 'standarddeviation'
headings <- sub("std","standarddeviation",headings)
# replace the character 'sma' with word 'signalmagnitudearea'
headings <- sub("sma","signalmagnitudearea",headings)
# replace the character 'mad' with word 'medianabsolutedeviation'
headings <- sub("mad","medianabsolutedeviation",headings)
# replace the character 'iqr' with word 'interquartilerange'
headings <- sub("iqr","interquartilerange",headings)

# make a combined data set with the mean and std columns along with labels and subjects 
combined_data <- cbind(meanNstd_x,all_y,all_subject )
# make the column names for the combined data 
combined_data_headings <- c(headings, "class","subject")
names(combined_data) <- combined_data_headings

# group the combined data set by both subject and activity type into another dataset named tidy_data
attach(combined_data)
tidy_data <-aggregate(combined_data, by=list(class,subject), FUN=mean, na.rm=TRUE)
tidy_data <- tidy_data[,3:70]
# export the tidy_data into a text file of same name 
write.table(tidy_data, "tidy_data.txt", sep="\t")
