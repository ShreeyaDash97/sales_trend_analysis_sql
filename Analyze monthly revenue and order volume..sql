create database task06;
use task06;

SELECT * FROM task6.`online shop customer sales data`;
SELECT sum(Revenue_Total) from task6.`online shop customer sales data`;
select str_to_date(Purchase_DATE, '%d.%m.%y') as Order_date from task6.`online shop customer sales data`;

select 
extract( month from str_to_date(Purchase_DATE,'%d.%m.%y')) as monthly_revenue ,
sum(Revenue_Total)as Total_sales 
from task6.`online shop customer sales data`
group by monthly_revenue
order by Total_sales;

select count(distinct ï»¿Customer_id) as total_orders from task6.`online shop customer sales data`;

SELECT 
  EXTRACT(MONTH FROM STR_TO_DATE(Purchase_DATE,'%d.%m.%y')) AS month,
  SUM(Revenue_Total) AS Total_sales, 
  COUNT(DISTINCT ï»¿Customer_id) AS total_orders
FROM task6.`online shop customer sales data`
GROUP BY month
ORDER BY Total_sales DESC
LIMIT 8;

SELECT
 Extract(year from str_to_date(Purchase_DATE, '%d.%m.%y')) AS PurchaseYear,
  Extract(month from str_to_date(Purchase_DATE, '%d.%m.%y')) AS PurchaseMonth,
  SUM(Revenue_Total) AS Total_Revenue,
  COUNT(DISTINCT ï»¿Customer_id) AS Total_Orders
  FROM task6.`online shop customer sales data`
  WHERE
   str_to_date(Purchase_DATE, '%d.%m.%y') BETWEEN '2021-07-01' AND '2021-12-28'
   GROUP BY PurchaseYear,PurchaseMonth
   ORDER BY PurchaseYear,PurchaseMonth;
   







