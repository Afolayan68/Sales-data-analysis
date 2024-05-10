SELECT * 
FROM portfolio.`sales_data`;

/*Total Revenue*/
SELECT sum(sales) as Total_Revenue
FROM portfolio.`sales_data`;


/*top 5 best selling products based on revenue generated*/
select product, sum(sales) as Sales_Sum
from portfolio.sales_data
group by product
order by Sales_Sum desc
limit 5;


/* Top 5 most expensive products*/
select Product, Unit_Price
FROM portfolio.`sales_data`
group by product, Unit_Price
order by Unit_Price desc
Limit 5;



/*top 5 best selling products based on units sold*/
select product, sum(Quantity_Ordered) as Total_Quantity
from portfolio.sales_data
group by product
order by Total_Quantity desc
limit 5;



/* Top 5 most cheap products*/
select Product, Unit_Price
FROM portfolio.`sales_data`
group by product, Unit_Price
order by Unit_Price asc
Limit 5;

/*top 5 sales generating cities*/
select city, sum(sales) as SalesPerCity
from portfolio.sales_data
group by city
order by SalesPerCity desc
limit 5;



/*top 5 sales generating Months*/
select Month, sum(sales) as SalesPerMonth
from portfolio.sales_data
group by Month
order by SalesPerMonth desc
limit 5;
