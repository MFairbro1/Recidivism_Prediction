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

