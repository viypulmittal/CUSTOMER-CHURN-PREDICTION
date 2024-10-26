CREATE DATABASE db_telecom_churn;
USE db_telecom_churn;
SELECT * FROM customer_data;

#--------------
SELECT gender,count(gender) as total_count,count(gender)*100/(select count(*) from customer_data)  as Gender_percentage
from customer_data
GROUP BY 1;



#-------------------

SELECT contract,COUNT(contract) as ttl_count, count(contract)*100/(select count(*) from customer_data) as Percentage
FROM  customer_data
GROUP BY 1;

#---------------------

SELECT CUSTOMER_STATUS,COUNT(CUSTOMER_STATUS) AS CNT,COUNT(CUSTOMER_STATUS)*100 / (SELECT COUNT(*) FROM CUSTOMER_DATA) AS PERCENTAGE,
SUM(TOTAL_REVENUE) AS TOTAL_REVENUE, SUM(TOTAL_REVENUE) *100/(SELECT SUM(TOTAL_REVENUE) FROM CUSTOMER_DATA) AS PERC_REVENUE FROM CUSTOMER_DATA
GROUP BY 1;

#-------------------------

SELECT STATE,COUNT(STATE) AS CNT, COUNT(STATE)*100 / (SELECT COUNT(*) FROM CUSTOMER_DATA) AS PERC
FROM CUSTOMER_DATA
GROUP BY 1
ORDER BY 3 DESC;

#----------------------
SELECT DISTINCT INTERNET_TYPE
FROM CUSTOMER_DATA;

#-------------------
SELECT
SUM(CASE WHEN Customer_ID IS NULL THEN 1 ELSE 0 END) AS Customer_ID_Null_Count,
SUM(CASE WHEN Gender IS NULL THEN 1 ELSE 0 END) AS Gender_Null_Count,
SUM(CASE WHEN Age IS NULL THEN 1 ELSE 0 END) AS Age_Null_Count,
SUM(CASE WHEN Married IS NULL THEN 1 ELSE 0 END) AS Married_Null_Count,
SUM(CASE WHEN State IS NULL THEN 1 ELSE 0 END) AS State_Null_Count,
SUM(CASE WHEN Number_of_Referrals IS NULL THEN 1 ELSE 0 END) AS Number_of_Referrals_Null_Count,
SUM(CASE WHEN Tenure_in_Months IS NULL THEN 1 ELSE 0 END) AS Tenure_in_Months_Null_Count,
SUM(CASE WHEN Value_Deal IS NULL THEN 1 ELSE 0 END) AS Value_Deal_Null_Count,
SUM(CASE WHEN Phone_Service IS NULL THEN 1 ELSE 0 END) AS Phone_Service_Null_Count,
SUM(CASE WHEN Multiple_Lines IS NULL THEN 1 ELSE 0 END) AS Multiple_Lines_Null_Count,
SUM(CASE WHEN Internet_Service IS NULL THEN 1 ELSE 0 END) AS Internet_Service_Null_Count,
SUM(CASE WHEN Internet_Type IS NULL THEN 1 ELSE 0 END) AS Internet_Type_Null_Count,
SUM(CASE WHEN Online_Security IS NULL THEN 1 ELSE 0 END) AS Online_Security_Null_Count,
SUM(CASE WHEN Online_Backup IS NULL THEN 1 ELSE 0 END) AS Online_Backup_Null_Count,
SUM(CASE WHEN Device_Protection_Plan IS NULL THEN 1 ELSE 0 END) AS Device_Protection_Plan_Null_Count,
SUM(CASE WHEN Premium_Support IS NULL THEN 1 ELSE 0 END) AS Premium_Support_Null_Count,
SUM(CASE WHEN Streaming_TV IS NULL THEN 1 ELSE 0 END) AS Streaming_TV_Null_Count,
SUM(CASE WHEN Streaming_Movies IS NULL THEN 1 ELSE 0 END) AS Streaming_Movies_Null_Count,
SUM(CASE WHEN Streaming_Music IS NULL THEN 1 ELSE 0 END) AS Streaming_Music_Null_Count,
SUM(CASE WHEN Unlimited_Data IS NULL THEN 1 ELSE 0 END) AS Unlimited_Data_Null_Count,
SUM(CASE WHEN Contract IS NULL THEN 1 ELSE 0 END) AS Contract_Null_Count,
SUM(CASE WHEN Paperless_Billing IS NULL THEN 1 ELSE 0 END) AS Paperless_Billing_Null_Count,
SUM(CASE WHEN Payment_Method IS NULL THEN 1 ELSE 0 END) AS Payment_Method_Null_Count,
SUM(CASE WHEN Monthly_Charge IS NULL THEN 1 ELSE 0 END) AS Monthly_Charge_Null_Count,
SUM(CASE WHEN Total_Charges IS NULL THEN 1 ELSE 0 END) AS Total_Charges_Null_Count,
SUM(CASE WHEN Total_Refunds IS NULL THEN 1 ELSE 0 END) AS Total_Refunds_Null_Count,
SUM(CASE WHEN Total_Extra_Data_Charges IS NULL THEN 1 ELSE 0 END) AS Total_Extra_Data_Charges_Null_Count,
SUM(CASE WHEN Total_Long_Distance_Charges IS NULL THEN 1 ELSE 0 END) AS Total_Long_Distance_Charges_Null_Count,
SUM(CASE WHEN Total_Revenue IS NULL THEN 1 ELSE 0 END) AS Total_Revenue_Null_Count,
SUM(CASE WHEN Customer_Status IS NULL THEN 1 ELSE 0 END) AS Customer_Status_Null_Count,
SUM(CASE WHEN Churn_Category IS NULL THEN 1 ELSE 0 END) AS Churn_Category_Null_Count,
SUM(CASE WHEN Churn_Reason IS NULL THEN 1 ELSE 0 END) AS Churn_Reason_Null_Count
FROM customer_data;

CREATE VIEW vw_churndata AS
SELECT * from db_telecom_churn.customer_data
WHERE customer_status IN ('Churned','Stayed');

CREATE VIEW vw_joindata AS
SELECT * 
FROM db_telecom_churn.customer_data
WHERE customer_status = 'Joined';
