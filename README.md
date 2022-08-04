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


## Machine Learning
We have uploaded different verison of our machine learning code on the repository. Our machine learning code begins with importing all necessary packages/ modules. We will read and load the dataset into a dataframe. We will go over all the columns and remove any columns that are not necessary to the analysis. We will check the data type of each feature and transform as needed. Then, we will remove any rows where there is at least 1 null value and drop any duplicates. Once the data is cleaned and ready to be analyzed, we will remove the owner ID since it will not be used in the clustering algorithm. The status of all owner's is kept if they are active and then the column can be dropped. After, we will create variables for the text features and standardize the data. The text features chosen are based on keeping the demographics and so that the numerical data can be understood. Once data is standardized, we will go through dimension reduction via principal component analysis. The Elbow Curve method is used to find Centroids (number of clusters) and the K-means Algorithm is initialized to define the clusters. We fit the model and predict the clusters. A new dataframe is created using the predicted clusters and features and merge the dataframe with the principal component analysis dataframe. The owner ID’s column is re-added into the clustered dataframe. The cluster results are then visualized with 2D and 3D plots.

The limitations of using an unsupervised machine learning model is that the output data is unknown and there is less accuracy with the results. Additional, there is lack of transparency with the results due to not having a foundation for the clustering. However, the benefits of unsupervised machine learning is that we are able to classify data without any labels and learn the trends and patterns of the data without specifying an output. Labels can be added after the data has been analyzed and clustered.

## Presentation

Our presentation is under construction to review is the link below:

[Final Presentation](https://www.canva.com/design/DAFIRnfQyQI/YKIs7nuG0unoJCYCAM9elw/edit?utm_content=DAFIRnfQyQI&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton)

## Dashboard

The Dashboard will consiste in the following parts:

1- Demographics distribution of “Owners”

2- Overview on Owner’s spending habits

3- Testing  the different machine learning models

4- Discussing the results of the different Machine Learning Model

As of this part of the process, in order to understand what are the code features that better answer to our problem statment, we have created the third part of the dashboard '3- Testing  the different machine learning models', find it in the link: [Dashboard](https://public.tableau.com/views/FianlProject-ClusteringScenarios/Story1?:language=pt-BR&:display_count=n&:origin=viz_share_link)


## SEGMENT 3

- Presentation


- Machine Learning

As seen in segment 2, we chose to you undersupervised machine learning model. Several models were run and the results were analyzed and visualized on Tableau.

[Final_Project_Cluster_scenario.ipynb](https://github.com/mustafaikizler/Data_Analytics_Project/blob/31007939bd62fee71b19fd7c2d0d71bbf3ba3819/Final_Project_Cluster_scenario.ipynb)

[Owners Transactions_MinMax_PCA3_K5.ipynb](https://github.com/mustafaikizler/Data_Analytics_Project/blob/31007939bd62fee71b19fd7c2d0d71bbf3ba3819/Owners%20Transactions_MinMax_PCA3_K5.ipynb)

[Unsupervised ML- Rachel.ipynb](https://github.com/mustafaikizler/Data_Analytics_Project/blob/31007939bd62fee71b19fd7c2d0d71bbf3ba3819/Unsupervised%20ML-%20Rachel.ipynb)

- Dashboard


