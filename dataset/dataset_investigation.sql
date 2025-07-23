-- create database for the project datasets.
create schema if not exists derightclick_product_quality_vs_returns;

-- confirm database.
show databases;

-- use newly created database.
use derightclick_product_quality_vs_returns;

-- change tables' names.
alter table feedback_datafeedback_data rename to feedback_data;
alter table productproduct_data rename to product_data;

-- confirm change.
show tables;

-- count the number of records in each table.
select count(*) as feedback_numrows from feedback_data;
select count(*) as product_numrows from product_data;
select count(*) as sales_numrows from sales_data;

-- View top 5 records in each table
select *  from feedback_data limit 5;
select * from product_data limit 5;
select  * from sales_data limit 5;

-- Investigate table columns.
show columns from feedback_data;
describe product_data;
desc sales_data;

-- check for missing values.

-- feedback_data
select * from feedback_data
where Feedback_ID is null
or Product_ID is null
or Return_Date is null
or Return_Reason is null
or Customer_Feedback is null;

-- product_data
select * from product_data
where Product_ID is null
or Product_Category is null
or Product_Attributes is null;

-- sales_data
select * from sales_data
where Sale_ID is null
or Product_ID is null
or Sales_Date is null
or Sales_Volume is null
or Revenue_Generated is null;

-- OR count number of nulls in each columns for each table.

-- feedback_data
select count(*) as num_of_rows,
sum(Feedback_ID is null) as feedback_id_null,
sum(return_date is null) as return_date_null,
sum(Return_Reason is null) as retrun_reason_null,
sum(Customer_Feedback is null) as customer_feedback_null
from feedback_data;

-- product_data
select count(*) as num_of_rows,
sum(Product_ID is null) as feedback_id_null,
sum(Product_Category is null) as return_date_null,
sum(Product_Attributes is null) as retrun_reason_null
from product_data;

-- sales_data
select count(*) as num_of_rows,
sum(Sale_ID is null) as feedback_id_null,
sum(Product_ID is null) as prod_id_null,
sum(Sales_Date is null) as sales_date_null,
sum(Sales_Volume is null) as sales_vol_null,
sum(Revenue_Generated is null) as rev_gen_null
from sales_data;

-- Identify duplicate

-- feedback
select Feedback_ID, count(*) as count_duplicates
from feedback_data
group by Feedback_ID
having count(*) > 1;

-- product
select Product_ID, count(*) as count_duplicates
from product_data
group by Product_ID
having count(*) > 1;

-- sales
select Sale_ID, count(*) as count_duplicates
from sales_data
group by Sale_ID
having count(*) > 1;

show columns from feedback_data;
describe product_data;
desc sales_data;