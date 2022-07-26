# Data Analytics Project

## SEGMENT 1

UofT Credit Union is a financial institution that provides financial services including checking and saving accounts, financial advice, mortgages and more. 
According to the latest reports, shareholders found that digital engagement between the company and customers is lower than the expected rate. We know that online services are the fastest and most efficient way to reach the customer to present profitable products. 
This data analysis project firstly will focus on existing customer data such as demography, financial status, and spending behaviors. (Payment types and amounts.). According to the result of the analysis, the model can be implemented for future customers for forecasting purposes.
Machine learning techniques will be our main tool for grouping the customers.  By the end of our analysis, we will try to identify the group of customers that will be eligible to receive online services engagement promotions.

### Questions we hope to answer with the data

•	What is the online bank penetration in the different age ranges?

•	Is there a consumer cluster more prone to use Online bank?

•	In the cluster that is more prone to use Online bank, are there users that do not use or that could use it more often?

•	What behaviours can be detected in customers in 2018 to predict trends and offer promotions and discounts to drive online engagement?


## DATABASE DIAGRAM
![image](https://user-images.githubusercontent.com/98247252/179640884-f3b1d072-fe4a-4ef9-b79a-b349274447b1.png)


## Machine Learning Model Mock Up
![image](https://user-images.githubusercontent.com/98247252/179640801-8f12bc81-55e8-438e-94af-74cabd815250.png)


## SEGMENT 2

On this part of project we used AWS with PostgresQL.

Here is the Schema to create the tables:

[Schema.sql](https://github.com/mustafaikizler/Data_Analytics_Project/blob/5cdfc3c21453d4cee6e7fbec4d151eeb3a630c9e/Schema.sql)

All the Csv files to be uploaded on Database are on AWS S3.

Here is the code used to get the data, clean, and upload on database.

[Final_Project_DataBase.ipynb](https://github.com/mustafaikizler/Data_Analytics_Project/blob/5cdfc3c21453d4cee6e7fbec4d151eeb3a630c9e/Final_Project_DataBase.ipynb)

For create a better visualization we have created a view, with joins, and group by, and our machine learning can access these view.

[data_query.sql](https://github.com/mustafaikizler/Data_Analytics_Project/blob/5cdfc3c21453d4cee6e7fbec4d151eeb3a630c9e/data_query.sql)

![image](https://user-images.githubusercontent.com/100812079/180897393-8b272e1f-ddee-4a17-9f59-9b64f556063b.png)





Our presentation is under construction to review is the link above:

[Final Presentation](https://docs.google.com/presentation/d/1hfBPAcR9mq71toewjbxO7A2JB9-PezxA5cw8_8-KOGA/edit?usp=sharing)

