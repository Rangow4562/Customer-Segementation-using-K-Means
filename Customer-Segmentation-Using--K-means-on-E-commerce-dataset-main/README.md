R-project

# Customer-Segmentation-Using--K-means-E-commerce-dataset

## What is Customer Segmentation 

Customer segmentation involves grouping customers into specific marketing groups, perhaps narrowing them down by gender, interests, buying habits or demographic.

## Kmeans  Clustering 

Kmeans algorithm is an iterative algorithm that tries to partition the dataset into K pre-defined distinct non-overlapping subgroups (clusters) where each data point belongs to only one group. It tries to make the intra-cluster data points as similar as possible while also keeping the clusters as different (far) as possible. It assigns data points to a cluster such that the sum of the squared distance between the data points and the cluster’s centroid is at the minimum. The less variation we have within clusters, the more homogeneous (similar) the data points are within the same cluster.

The way kmeans algorithm works is as follows:
Specify number of clusters K.
Initialize centroids by first shuffling the dataset and then randomly selecting K data points for the centroids without replacement.
Keep iterating until there is no change to the centroids. i.e assignment of data points to clusters isn’t changing.
   Compute the sum of the squared distance between data points and all centroids.
   Assign each data point to the closest cluster (centroid).
   Compute the centroids for the clusters by taking the average of the all data points that belong to each cluster.


### Dataset used:
E-commerce is one of the fastest growing economic sectors worldwide. Typically e-commerce datasets are proprietary and consequently hard to find among publicly available data.
However, The UCI Machine Learning Repository has made this dataset containing actual transactions from 2010 and 2011.

### Content:

This is a transnational data set which contains all the transactions occurring between 01/12/2010 and 09/12/2011 for a UK-based and registered non-store online retail.The company mainly sells unique all-occasion gifts and home décor .“

### Attribute Information:

InvoiceNo : Invoice number. Nominal, a 6-digit integral number uniquely assigned to each transaction.
StockCode : Product (item) code. Nominal, a 5-digit integral number uniquely assigned to each distinct product.
Description : Product (item) name. Nominal.
Quantity : The quantities of each product (item) per transaction. Numeric.
InvoiceDate : Invice Date and time. Numeric, the day and time when each transaction was generated.
UnitPrice : Unit price. Numeric, Product price per unit in sterling.
CustomerID : Customer number. Nominal, a 5-digit integral number uniquely assigned to each customer.
Country : Country name. Nominal, the name of the country where each customer resides.
TotalPrice : Total price is multiplied from UnitPrice and Quantity of products.

### Statistical Analysis: 
 
The Kruskal-Wallis Test A collection of data samples are independent if they come from unrelated populations and the samples do not affect each other. Using the Kruskal-Wallis Test, we can decide whether the population distributions are identical without assuming them to follow the normal distribution.


### Customer Segmentation Using K-means Clustering:

We preprocess the data and divided the dataset in two for segmentation for better understanding  at first we Customer segmented the data like Country wise Customer segmentation and next by product Based Customer segmentation. And we got good result out of this Data’s which are deatil explain in the dashboard.

### Conclusion:
This dataset offers myriad opportunities for practising skills in e-commerce sales analysis and customer segmentation. There are some other variables it would be nice to have in the dataset such as categories for the products.

We were able to group our customers based on Country and purchase behaviour and we managed to detect factors for each group. The best way forward is to prepare specific interactions for each one.

#### Here are some ideas:

We can offer selected promotions for products from their groups of interest. We could periodically send the discount offers by email or show the message right after the user logs present in the data.

A big part of regular customers or Loyal customers may be entrepreneurs, so they order wholesale quantities of products. We can prepare an offer for them to get an extra discount when they buy in bulk products.

For one time customers might be encouraged to return if we inform them about new and/or unique products from our line. We could even include recommendations from the appropriate influencers and can offer some special offers to attract this kind of customers.




