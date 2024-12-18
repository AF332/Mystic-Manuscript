--SQL 8 -----

SELECT 
    count(*)
FROM 
    mystic_manuscript."limit"
WHERE 
     (gender = 'F' AND  gender_bool = 1);

--SQL 9 -----

SELECT 
    count(*)
FROM (      
	SELECT 
	id,
    purchase_date,
    date,
    time,
    month,
    year,
    CASE 
        WHEN to_timestamp(purchase_date, 'DD/MM/YYYY HH24:MI')::date = to_date(date, 'MM/DD/YYYY') THEN 'match'
        ELSE 'mismatch'
    END AS date_match_status,
    CASE 
        WHEN to_char(to_timestamp(purchase_date, 'DD/MM/YYYY HH24:MI'), 'HH24:MI:SS') = time THEN 'match'
        ELSE 'mismatch'
    END AS time_match_status
FROM 
    mystic_manuscript."limit"
) AS subquery
WHERE (date_match_status = 'mismatch')

--SQL 10 -----
SELECT 
    (
        COUNT(*) - COUNT(id) +
        COUNT(*) - COUNT(NULLIF(purchase_date, '')) +
        COUNT(*) - COUNT(NULLIF(date, '')) +
        COUNT(*) - COUNT(NULLIF(time, '')) +
        COUNT(*) - COUNT(NULLIF(quarter, '')) +
        COUNT(*) - COUNT(qtr) +
        COUNT(*) - COUNT(year) +
        COUNT(*) - COUNT(month) +
        COUNT(*) - COUNT(week_day) +
        COUNT(*) - COUNT(special_day) +
        COUNT(*) - COUNT(online_sale_offers) +
        COUNT(*) - COUNT(day) +
        COUNT(*) - COUNT(weekend) +
        COUNT(*) - COUNT(morning) +
        COUNT(*) - COUNT(afternoon) +
        COUNT(*) - COUNT(evening) +
        COUNT(*) - COUNT(night) +
        COUNT(*) - COUNT(gender_bool) +
        COUNT(*) - COUNT(customer_id) +
        COUNT(*) - COUNT(NULLIF(gender, '')) +
        COUNT(*) - COUNT(NULLIF(product_name, '')) +
        COUNT(*) - COUNT(NULLIF(item_status, '')) +
        COUNT(*) - COUNT(quantity) +
        COUNT(*) - COUNT(currency) +
        COUNT(*) - COUNT(item_price) +
        COUNT(*) - COUNT(shipping_price) +
        COUNT(*) - COUNT(NULLIF(ship_city, '')) +
        COUNT(*) - COUNT(NULLIF(ship_state, '')) +
        COUNT(*) - COUNT(NULLIF(ship_postal_code, '')) +
        COUNT(*) - COUNT(NULLIF(category, '')) +
        COUNT(*) - COUNT(total_amount) +
        COUNT(*) - COUNT(NULLIF(author, '')) +
        COUNT(*) - COUNT(NULLIF(publication, '')) +
        COUNT(*) - COUNT(profit_percentage) +
        COUNT(*) - COUNT(profit_inr) +
        COUNT(*) - COUNT(cost_price)
    ) AS total_null_or_empty
FROM 
    mystic_manuscript."limit";