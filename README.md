# Project Topic: Recidivism Prediction

## Slide Deck
https://docs.google.com/presentation/d/1HaA6PtNu0cqoJP5Ie7yaM3Us6LniiZSy9C61f8DLYUg/edit#slide=id.g15f1e756293_1_0

## Tableau Dashboard
https://msshahid21.github.io/Recidivism_Dashboard/

## What is the project trying to establish:
Predicting which convicts are likely to commit crime again in order to determine rehabilitation strategies.

## Source Data:

Recidivism dataset for prisoners serving prison terms in Iowa over a three year period, after initial release from prison. Includes data for race/ethnicity, age, offense type etc. for each prisoner.

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

### ERD of the database

<img width="900" alt="image" src="https://user-images.githubusercontent.com/104597335/193155505-d6a71278-4a24-4620-8d1b-2d51b57d2198.png">

## Machine Learning Approach
In order to tackle the problem of developing a machine learning algorithm to determine which characteristics (features) of an inmate contribute more to recidivism, the following approach will be used:

- Use a Supervised Machine Learning Algorithm with the target variable being 'Return to Prison'.
  - A Supervised Machine Learning Algorithm is used as there is a target variable that can be used to predict the accuracy of the Machine Learning Algorithm.  
  - The 'Return to Prison' variable is set as the target as it tells us whether the prisoner returned to prison within 3 years of being out of prison.

### Description of preliminary data preprocessing
Data Cleaning:
- Removed data connected to new offence committed and offence subtype as it would have biased information.

Preprocessing:
- Dropped unnecessary columns
- Dropped rows with blanks for race and/or age columns
- Simplified racial categories by combining hispanic categories into single category, non-hispanic white and black prisoners into separate single categories, and combining blanks and N/A races into single "Other" category
- Simplified column titles, changing "Recidivism - Return to Prison numeric" to just "Recidivism"
- Combined "Paroled to Detainer" categories into single category under "Release Type"
- Replaced blanks in "Release Type" with "Other"
- Used get_dummies method to convert categorical variables into dummies for machine learning

### Description of preliminary feature engineering and preliminary feature selection, including their decision-making process
Features are everything in the preprocessed data except for "Return to Prison".

### Description of how data was split into training and testing sets
Data was split with 80% in training and 20% in testing. It is done in this manner as it is a smaller data set and we wanted to push more towards training than testing data set.

### Explanation of model choice, including limitations and benefits
Approach - Decision Tree Model
This was because it would be easier to interpret data given that the data is not too large.
Other advantages include:
  - Requires little data preparation.
  - Able to handle both numerical and categorical data

At the same time, some limitations of the Decision Tree Model include
- Overfitting: Decision-tree model can create complex trees that goes against the data training.

### Explanation of changes in model choice
After the Decision Tree approach was tested, further attempts at optimization were made by using a neural network model. With some tweaking, the neural network outperformed the decision tree model in terms of accuracy by approximately 2%.

### Description of model training
It was found that the use of a sigmoid activation function with 3 hidden layers improved the accuracy of the model beyond what was achieved with the decision tree approach.

### Description of current accuracy score
The current accuracy score is around 67.1%, as opposed to the previous score obtained from the decision tree model, which was 64.9%.
