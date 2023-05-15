<h1 align="center">
DSLS-DE-Mini-Project
<br>
</h1>


## Background
The main responsibilty of Data Consultant is to help company to make decision based on data and optimize data usage. To achieve said responsibilty, the first step has to be master by data consultant is the ability to integrate data using ETL method

<img src="https://raw.githubusercontent.com/UltEng/DSLS-DE-Mini-Project/master/ETL.png">

ETL (Extract, Transform, Load) is a data integration process covers data extraction from many sources, continue with data transformation (agregration process, rounding, calculation, mapping, string funtion, etc), and finished with load that is storing data inside data warehouse system. Data that is from many sources then is processed into a consistent data so it will be easier to analyze 

## Tools

The tools used for this project is 

### 1.Microsoft SQL Server
<img src="https://raw.githubusercontent.com/UltEng/DSLS-DE-Mini-Project/master/SQL_Server.png">

### 2.Tableau
<img src="https://raw.githubusercontent.com/UltEng/DSLS-DE-Mini-Project/master/Tableau.png">

### 3.Google Colab
<img src="https://raw.githubusercontent.com/UltEng/DSLS-DE-Mini-Project/master/Colab.png">

## Dataset

The Dataset used for this project is a sample data from Microsoft, Northwind which consist of 13 columns and that are
1. Categories,
2. CustomerCustomerDemo,
3. CustomerDemographics,
4. Customers,
5. Employees,
6. EmployeeTerritories,
7. OrderDetails,
8. Orders,
9. Products,
10. Region,
11. Shippers,
12. Suppliers,
13. Territories

## Project Deliverables
The Project Deliverables for this Mini Data Engineering Project are as below (The .sql file and result can be check in the Intermediate Queries Folder)
### a. Intermediate Queries
1. Create a query to get the number of customer each month making an order in 1997.
2. Create a query to get the employee name including the Sales Representative
3. Create a query to get the top 5 product with most quantity in january 1997
4. Create a query to get the company name that make an order of Chai in June 1997
5. Create a query to get the number of OrderID that make purchase (unit_price multiply by quantity) <=100, 100<x<=250, 250<x<=500, and >500
6. Create a query to get the company name in customer table that make purchase above 500 in 1997
7. Create a query to get the product name that is in the top 5 highest sales each month in 1997
8. Create a view to see Order Details that containt OrderID, ProductID, ProductName, UnitPrice, Quantity, Discount, Price After Discount.
9. Create a procedure invoice to call CustomerID, CustomerName/company name, OrderID, OrderDate, RequiredDate, ShippedDate if it have certain CustomerID input



### b. Case Study
The Case Study that is done in this project is as below
#### 1. Product Analysis
To know the monthly sales trend and contribution of each category toward that sales (Tools used: Tableau)
##### Monthly Sales Trend
<img src="https://raw.githubusercontent.com/UltEng/DSLS-DE-Mini-Project/master/PA_1.png">

##### Percentage of Each Category Sales
<img src="https://raw.githubusercontent.com/UltEng/DSLS-DE-Mini-Project/master/PA_2.png">

#### 2. Customer Analysis
To know customer segmentation and distribution of each segmentation (Tools used: Google Colab)

##### Customer Segmentation
<img src="https://raw.githubusercontent.com/UltEng/DSLS-DE-Mini-Project/master/CA_1.png">

##### Customer Segmentation Distribution
<img src="https://raw.githubusercontent.com/UltEng/DSLS-DE-Mini-Project/master/CA_2.png">

#### 3. Employee Analysis
To know the contribution of each sales representative toward sales and comparison of with other title (Tools used: Tableau)
<img src="https://raw.githubusercontent.com/UltEng/DSLS-DE-Mini-Project/master/EA_1.png">



