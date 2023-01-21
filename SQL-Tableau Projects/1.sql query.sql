
select * from sales;

select distinct(year) from sales;

select state, sum(profit)
from sales
where state='Alabama';

 # Total annual Profit per state, in US , Tableau 1
select Country, State, sum(profit) as Total_Profit,Year from sales
where country like '%States' 
group by state,year
order by sum(profit) desc;

#Profit per age group, tableau 3
select Age_Group , sum(profit) as TotalProfit, Year from sales
group by age_group,year
order by year,age_group desc;

# Profit per product category
select product_category, sum(profit) from sales
group by product_category;

# Products that return the most profit per item, Tableau 2
select Product, ((Unit_price - unit_cost)/unit_price)*100 as PercentageOfProfit from sales
group by product
order by PercentageOfProfit desc;

#Total Profit per item
select sub_category,product, sum(order_quantity) as TotalItemsSold, sum(profit) as TotalProfit from sales
group by product
order by TotalProfit desc,TotalItemsSold;

#Profit per country in November and December of 2013
select country, month,  sum(profit) as total_profit from sales
where year = 2013 and month in ('November' , 'December')
group by month,country
order by total_profit desc
limit 10 ;

select year, avg(order_quantity)
from sales
where year between 2013 and 2015
group by year
order by avg(order_quantity) desc;

select sum(profit) as Total_Profit, Date
from sales
group by date
order by date ;
