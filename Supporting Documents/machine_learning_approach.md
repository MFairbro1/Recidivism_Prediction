# Recidivism Prediction

## Machine Learning Approach
In order to tackle the problem of developing a machine learning algorithm to determine which characteristics (features) of an inmate contribute more to recidivism, the following approach will be used:

- Use a Supervised Machine Learning Algorithm with the target variable being 'Return to Prison'.
  - A Supervised Machine Learning Algorithm is used as there is a target variable that can be used to predict the accuracy of the Machine Learning Algorithm.  
  - The 'Return to Prison' variable is set as the target as it tells us whether the prisoner returned to prison within 3 years of being out of prison.
- The following options are then available to use within Supervised Machine Learning:
  - Logistic Regression
  - Decision Trees
  - Random Forest Model
  - Neural Network
  - Support Vector Machines (SVM)
- Out of the above models, we will be using the Decision Tree Model. This is because it will be easier to interpret and the dataset is not too large.

### Description of preliminary data preprocessing
Data Cleaning:
  Removed data connected to new offence committed and offence subtype as it would have biased information.
Preprocessing:
  Changed Year Selected, Race, Age, Offence Classification, Offense Type, Release and Return to Prison to encoded variables.

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
