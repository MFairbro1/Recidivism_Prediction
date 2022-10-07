# Project Topic: Recidivism Prediction

## Slide Deck
https://docs.google.com/presentation/d/1HaA6PtNu0cqoJP5Ie7yaM3Us6LniiZSy9C61f8DLYUg/edit#slide=id.g15f1e756293_1_0

## Tableau Dashboard
https://public.tableau.com/views/RecidivismAnalysis_16651037664290/RecidivismGroups?:language=en-US&publish=yes&:display_count=n&:origin=viz_share_link

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

<img width="800" alt="image" src="https://user-images.githubusercontent.com/104597335/191867368-470f1705-b46a-466a-ae7f-1e789ecb2ec2.png">

### ERD of the database

<img width="900" alt="image" src="https://user-images.githubusercontent.com/104597335/193155505-d6a71278-4a24-4620-8d1b-2d51b57d2198.png">

### Loaded data into the tables in the database

<img width="739" alt="image" src="https://user-images.githubusercontent.com/104597335/193159269-504785c8-175c-43ce-b09d-f3dd33e2f3a4.png">

<img width="739" alt="image" src="https://user-images.githubusercontent.com/104597335/193159327-476eee7c-9383-4281-8f6f-3b2ef4479f2b.png">

<img width="739" alt="image" src="https://user-images.githubusercontent.com/104597335/193160562-546f49f1-5952-4ed8-9945-4d1bff3e7052.png">

### Output of the "join" in database

<img width="739" alt="image" src="https://user-images.githubusercontent.com/104597335/193175597-f01e475e-1f5c-4563-a8ca-440d00314ffb.png">

## Data Preprocessing
- Dropped unnecessary columns
- Dropped rows with blanks for race and/or age columns
- Simplified racial categories by combining hispanic categories into single category, non-hispanic white and black prisoners into separate single categories, and combining blanks and N/A races into single "Other" category
- Simplified column titles, changing "Recidivism - Return to Prison numeric" to just "Recidivism"
- Combined "Paroled to Detainer" categories into single category under "Release Type"
- Replaced blanks in "Release Type" with "Other"
- Used get_dummies method to convert categorical variables into dummies for machine learning
