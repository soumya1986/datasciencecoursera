## CodeBook for run_analysis.R

#### There is only one file 'run_analysis.R' which contains all the code.
#### The steps are provided below

* read the training features 

* read the test features

* combine the train and test features 

* read the training labels 

* read the test labels 

* combine the train and tes labels 

* read the subjects in training 

* read the subjects in testing

* combine the subjects 

* combine the features, labels and subjects 

* read the names of features into the variable 'titles'

* add the column names 'class' and 'subject' 

* name the columns  

* extract the column indices containing measurements on mean  

* extracts the column indices containing mesurements on standard deviation 

* combine the indices 

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
