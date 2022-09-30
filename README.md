# Project Topic: Recidivism Prediction 

## What is the project trying to establish:
Predicting which convicts are likely to commit crime again in order to determine rehabilitation strategies.

## Source Data:

Recidivism dataset for prisoners serving prison terms in Iowa over a three year period, after initial release from prison. Includes data for race/ethnicity, age, offense type etc. for each prisoner.

## Communication Protocols:
- Slack
  - to speak about questions and queires while working on independant parts
- Zoom
  - to work together aside from the class time

## Database Preparation

### Tools Used
- Amazon RDS
- Postgres SQL
- Google Collab notebook
- PySpark
- PgAdmin4

### Steps followed
- Used Postgres database and hosted it on AWS
- Used PgAdmin 4 and connected it with the RDS instance
- Created an S3 bucket in the AWS for storage and uploaded the data file into it
- used PySpark to load the data from the S3 bucket into the database.

At this point in time used only a single table which has the data.

### Planned ERD of the database

<img width="899" alt="image" src="https://user-images.githubusercontent.com/104597335/191867368-470f1705-b46a-466a-ae7f-1e789ecb2ec2.png">


# Machine Learning Model
### Description of preliminary data preprocessing
Data Cleaning:
  Removed data connected to new offence commited and offence subtype as it would have biased informations. 
Preprocessing:
  Chnged Year Selected, Race, Age, Offence Classification,Offense Type, Release and Return to Prison to encodded variables.
  
### Description of preliminary feature engineering and preliminary feature selection, including their decision-making process
Features are everything in the preprocessed data except for "Return to Prison". 

### Description of how data was split into training and testing sets
Data was split with 80% in training and 20% in testing. It is done in this manner as it is a smaller data set and we wanted to push more towards training than testing data set.

### Explanation of model choice, including limitations and benefits
Approach - Decision Tree Model
This was becasue it would be easier to interpret data given that the data is not too large. 
Other advantages include: 
  - Requires little data prepration. 
  - Able to handle both numerical and categorical data
  
At the same time, some limitations of the Decision Tree Model include
- Overfitting: Decision- tree model can create complex tress that goes against the data training.
