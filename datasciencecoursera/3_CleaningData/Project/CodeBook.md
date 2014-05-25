## CodeBook for run_analysis.R

#### There is only one file 'run_analysis.R' which contains all the code.
#### The steps are provided below

* read the training features into variable X_train

* read the test features into variable X_test

* combine the train and test features into variable all_x

* read the training labels into variable Y_train

* read the test labels into variable Y_test

* combine the train and tes labels into variable all_y

* read the subjects in training into variable Subject_train

* read the subjects in testing into variable Subject_test

* combine the subjects into variable all_subject

* combine the features, labels and subjects into variable all

* read the names of features into the variable 'titles'

* add the column names 'class' and 'subject' to the variable 'titles'

* name the columns  of variable all_x

* extract the column indices containing measurements on mean  into variable mean_cols

* extracts the column indices containing mesurements on standard deviation into variable std_cols

* combine the indices into variable meanNstd_cols

* get the features corresponding to those column indices 

* read the column headings 

* convert the headings to lowercase 

* remove the character '-' from headings

* remove the characters '(' and ')' 

* replace the character 'f' in 'fbody' with word 'frequency' 

* replace the character 't' in 'tbody' with word 'time'

* replace the characters 'acc' with word 'acceleration'

* replace the character 'std' with word 'standarddeviation'

* replace the character 'sma' with word 'signalmagnitudearea'

* replace the character 'mad' with word 'medianabsolutedeviation'

* replace the character 'iqr' with word 'interquartilerange'

* make a combined data set with the mean and std columns along with labels and subjects 

* make the column names for the combined data 

* group the combined data set by both subject and activity type into another dataset named tidy_data

* export the tidy_data into a text file of same name 

