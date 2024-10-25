# CUSTOMER-CHURN-PREDICTION
TELECOM Customer Churn Prediction project focuses on analyzing customer churn within the telecom industry and using machine learning to predict future churners. The project involved loading and processing data from SQL, building powerful visualizations in Power BI, and applying machine learning techniques to make accurate predictions.

1. Introduction

The goal of this project was to analyze customer churn using historical data and predict churn likelihood for new joiners. The process involved data loading and manipulation using SQL, dashboard creation with Power BI, and machine learning (ML) analysis to predict churn.

2. Data Loading and Preparation

-Data in SQL
-Data was loaded into SQL for initial analysis.
-Two views were created:
View 1: Contained data of customers who had either churned or stayed.
View 2: Contained data of new joiners whose churn likelihood needed to be predicted.

SQL Queries

SQL queries were used to extract relevant information and ensure the data was clean and ready for further analysis.

3. Power BI Dashboard

-A Power BI dashboard was built using the SQL data to visualize trends and key metrics related to customer churn and retention.
-Key performance indicators (KPIs) were set up to track the churn rate and other critical customer behaviors.

4. Machine Learning Analysis

-Data Preprocessing
-Data preprocessing was done in Python using pandas and sklearn.
-Categorical columns such as 'Gender', 'Married', 'State', 'Internet Service', and others were label-encoded for machine learning.
-The target variable, Customer_Status, was encoded as 0 for "Stayed" and 1 for "Churned".
-The data was split into training and testing sets, with 80% used for training and 20% for testing.

Model Training

-A Random Forest Classifier was used for the analysis.-
-The model was trained using the stayed and churned data (View 1).
-After training, the model was evaluated using metrics like confusion matrix and classification report.

Model Results:

Confusion Matrix and Classification Report were generated to show model accuracy, precision, recall, and F1-score.

5. Prediction for New Joiners

-Applying Model to New Data
-The second view, which contained data for new joiners, was used to predict whether they would stay or churn.
-The model trained on the historical data was applied to this new data.

Prediction Results:

The prediction results were added to the original data, identifying which new joiners were likely to churn.
The resulting data was saved as a CSV file for further analysis.

6. Conclusion

This project successfully combined SQL data manipulation, Power BI visualization, and machine learning to provide a complete analysis of customer churn and predict future behavior for new joiners. The Random Forest model was able to distinguish between customers likely to churn and those who would stay.
