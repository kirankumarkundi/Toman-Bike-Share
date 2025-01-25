WITH CTE AS (
SELECT * FROM bike_share.bike_share_yr_0
UNION ALL
SELECT * FROM bike_share.bike_share_yr_1)

SELECT 
dteday,
season,
a.yr,
weekday,
hr,
rider_type,
riders,
price,
COGS,
riders * price as Revenue,
riders * price - COGS * riders as Profit
FROM CTE a LEFT JOIN bike_share.cost_table b ON a.yr = b.yr;
