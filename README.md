<h1 align="center">
DSLS-DE-Mini-Project
<br>
</h1>


## Background
The main responsibilty of Data Consultant is to help company to make decision based on data and optimize data usage. To achieve said responsibilty, the first step has to be master by data consultant is the ability to integrate data using ETL method

<img src="https://raw.githubusercontent.com/UltEng/DSLS-DE-Mini-Project/master/ETL.png">








*Ini adalah mini project data engineering pada bootcamp data consultant oleh Data Science Indonesia*

Mini Project ini menggunakan database Microsoft SQL Server

Dataset yang digunakan pada mini project ini adalah Northwind sampel data dari Microsoft yang terdiri dari 13 tables yaitu
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

Deliverables dari proyek ini yaitu

a. Intermediate Queries 
untuk mereview kemampuan query dengan soal berikut
1. Tulis query untuk mendapatkan jumlah customer tiap bulan yang melakukan order pada tahun 1997.
2. Tulis query untuk mendapatkan nama employee yang termasuk Sales Representative.
3. Tulis query untuk mendapatkan top 5 nama produk yang quantitynya paling banyak diorder pada bulan Januari 1997.
4. Tulis query untuk mendapatkan nama company yang melakukan order Chai pada bulan Juni 1997.
5. Tulis query untuk mendapatkan jumlah OrderID yang pernah melakukan pembelian (unit_price dikali quantity) <=100, 100<x<=250, 250<x<=500, dan >500.
6. Tulis query untuk mendapatkan Company name pada tabel customer yang melakukan pembelian di atas 500 pada tahun 1997.
7. Tulis query untuk mendapatkan nama produk yang merupakan Top 5 sales tertinggi tiap bulan di tahun 1997.
8. Buatlah view untuk melihat Order Details yang berisi OrderID, ProductID, ProductName, UnitPrice, Quantity, Discount, Harga setelah diskon.
9. Buatlah procedure Invoice untuk memanggil CustomerID, CustomerName/company name, OrderID, OrderDate, RequiredDate, ShippedDate jika terdapat inputan CustomerID tertentu.

b. case study
case study yang dilakukan adalah sebagai berikut
1. Product Analysis
untuk mengetahui trend bulanan sales dan kontribusi tiap kategori terhadap sales tersebut (Tools yang digunakan: Tableau)
2. Customer Analysis
untuk mengetahui segmentasi customer dan distribusi tiap segmentasi (Tools yang digunakan: Google Colab)
3. Employee Analysis
untuk mengetahui kontribusi tiap sales representative terhadap sales dan perbandingannya dengan title lain (Tools yang digunakan: Tableau)

