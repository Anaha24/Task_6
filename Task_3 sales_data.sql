use sales;
show tables;
select * from file;
#Use EXTRACT(MONTH FROM order_date) for month. 
SELECT EXTRACT(MONTH FROM Transaction_date) AS order_month FROM file;

#GROUP BY year/month.
SELECT EXTRACT(YEAR FROM Transaction_Date) AS order_year,EXTRACT(MONTH FROM Transaction_Date) AS order_month FROM file GROUP BY EXTRACT(YEAR FROM Transaction_Date),EXTRACT(MONTH FROM Transaction_Date);

#Sum() for revenue
SELECT SUM(Online_Spend + Offline_Spend) AS total_revenue FROM file;

#COUNT(DISTINCT order_id) for volume.
SELECT COUNT(DISTINCT Transaction_ID) AS order_volume FROM file;

#Use ORDER BY for sorting.
SELECT Transaction_Date,Transaction_ID FROM file ORDER BY Avg_Price;

#Limit results for specific time periods.
SELECT * FROM file WHERE Delivery_Charges BETWEEN 6.5 AND 7;
