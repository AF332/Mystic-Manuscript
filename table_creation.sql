
/*
 * 
 * Table Creation
 * 
 */
CREATE TABLE mystic_manuscript."limit"(
	"ID" int,
	"Purchase-date" VARCHAR(50),
	"Date" VARCHAR(30),
	"Time" VARCHAR(30),
	"Quarter" VARCHAR(50),
	"Qtr" int,
	"Year" int,
	"Month" int,
	"Date Number" int,
	"Special Day" int,
	"Online Sale Offers " int,
	"Day" int4,
	"Weekend" int,
	"Morning" int,
	"Afternoon" int,
	"Evening" int,
	"Night" int,
	"Gender_bool" int,
	"Customer ID" VARCHAR(15),
	"Gender" VARCHAR(1),
	"Product-Name" VARCHAR(200),
	"Item-Status" VARCHAR(10),
	"Quantity" int4,
	"Currency" varchar(10),
	"Item Price" int,
	"Shipping-Price" int, 
	"Ship-City" VARCHAR(50),
	"Ship-State" VARCHAR(50),
	"Ship-Postal-Code" varchar(50),
	"Category" VARCHAR(50),
	"Total Amount" int,
	"Author" VARCHAR(100),
	"Publication" VARCHAR(150),
	"Profit Percentage" int,
	"Profit (INR)" NUMERIC,
	"Cost Price" NUMERIC 
);





/*
 * 
 * Alter Table 
 * 
 */
ALTER TABLE mystic_manuscript."limit"
	RENAME COLUMN "ID" TO "id";	
ALTER TABLE mystic_manuscript."limit"
	RENAME COLUMN "Purchase-date" TO "purchase_date";	
ALTER TABLE mystic_manuscript."limit"
	RENAME COLUMN "Date" TO "date";
ALTER TABLE mystic_manuscript."limit"
	RENAME COLUMN "Time" TO "time";
ALTER TABLE mystic_manuscript."limit"
	RENAME COLUMN "Quarter" TO "quarter";
ALTER TABLE mystic_manuscript."limit"
	RENAME COLUMN "Qtr" TO "qtr";
ALTER TABLE mystic_manuscript."limit"
	RENAME COLUMN "Year" TO "year";
ALTER TABLE mystic_manuscript."limit"
	RENAME COLUMN "Month" TO "month";
ALTER TABLE mystic_manuscript."limit"
	RENAME COLUMN "Date Number" TO "week_day";
ALTER TABLE mystic_manuscript."limit"
	RENAME COLUMN "Special Day" TO "special_day";
ALTER TABLE mystic_manuscript."limit"
	RENAME COLUMN "Online Sale Offers " TO "online_sale_offers";
ALTER TABLE mystic_manuscript."limit" 
 	RENAME COLUMN "Ship-State" TO "ship_state";
ALTER TABLE mystic_manuscript."limit" 
 	RENAME COLUMN "Ship-Postal-Code" TO "ship_postal_code";
ALTER TABLE mystic_manuscript."limit2" 
 	RENAME COLUMN "Category" TO "category";
ALTER TABLE mystic_manuscript."limit" 
 	RENAME COLUMN "Total Amount" TO "total_amount";
ALTER TABLE mystic_manuscript."limit2" 
 	RENAME COLUMN "Author" TO "author";
ALTER TABLE mystic_manuscript."limit" 
 	RENAME COLUMN "Publication" TO "publication";
ALTER TABLE mystic_manuscript."limit" 
 	RENAME COLUMN "Profit Percentage" TO "profit_percentage";
ALTER TABLE mystic_manuscript."limit" 
 	RENAME COLUMN "Profit (INR)" TO "profit_inr";
ALTER TABLE mystic_manuscript."limit" 
 	RENAME COLUMN "Cost Price" TO "cost_price";
ALTER TABLE mystic_manuscript."limit" 
	RENAME COLUMN "Day" TO "day";
ALTER TABLE mystic_manuscript."limit" 
	RENAME COLUMN "Weekend" TO "weekend";
ALTER TABLE mystic_manuscript."limit" 
	RENAME COLUMN "Morning" TO "morning";
ALTER TABLE mystic_manuscript."limit" 
	RENAME COLUMN "Afternoon" TO "afternoon";
ALTER TABLE mystic_manuscript."limit" 
	RENAME COLUMN "Evening" TO "evening";
ALTER TABLE mystic_manuscript."limit" 
	RENAME COLUMN "Night" TO "night";
ALTER TABLE mystic_manuscript."limit" 
	RENAME COLUMN "Gender_bool" TO "gender_bool";
ALTER TABLE mystic_manuscript."limit" 
	RENAME COLUMN "Customer ID" TO "customer_id";
ALTER TABLE mystic_manuscript."limit" 
	RENAME COLUMN "Gender" TO "gender";
ALTER TABLE mystic_manuscript."limit"
	RENAME COLUMN "Product-Name" TO "product_name";
ALTER TABLE mystic_manuscript."limit"
	RENAME COLUMN "Item-Status" TO "item_status";
ALTER TABLE mystic_manuscript."limit"
	RENAME COLUMN "Quantity" TO "quantity";
ALTER TABLE mystic_manuscript."limit"
	RENAME COLUMN "Currency" TO "currency";
ALTER TABLE mystic_manuscript."limit"
	RENAME COLUMN "Item Price" TO "item_price";
ALTER TABLE mystic_manuscript."limit"
	RENAME COLUMN "Shipping-Price" TO "shipping_price";
ALTER TABLE mystic_manuscript."limit"
	RENAME COLUMN "Ship-City" TO "ship_city";

--------------------

/*
 * 
 * Grant permissions
 * 
 */
GRANT UPDATE ON mystic_manuscript."limit" TO "df_student";
GRANT REFERENCES, DELETE, UPDATE, TRUNCATE, TRIGGER, SELECT, INSERT ON TABLE mystic_manuscript."limit" TO "de11_imko";
GRANT REFERENCES, DELETE, UPDATE, TRUNCATE, TRIGGER, SELECT, INSERT ON TABLE mystic_manuscript."limit" TO "de11_mazr";
GRANT REFERENCES, DELETE, UPDATE, TRUNCATE, TRIGGER, SELECT, INSERT ON TABLE mystic_manuscript."limit" TO "de11_mumo";
GRANT SELECT ON TABLE mystic_manuscript."limit" TO "github_classroom";
GRANT SELECT ON TABLE mystic_manuscript."limit" TO "github_classroom_student";


GRANT SELECT, REFERENCES, DELETE, UPDATE, TRUNCATE, TRIGGER, SELECT, INSERT ON TABLE mystic_manuscript."limit" TO "github_classroom";

--SELECT
--    GRANTEE,
--    PRIVILEGE_TYPE
--FROM
--    information_schema.role_table_grants
--WHERE	
--    table_schema = 'mystic_manuscript'
--    AND table_name = 'limit';
--
--SELECT
--    GRANTEE,
--    PRIVILEGE_TYPE
--FROM
--    information_schema.role_table_grants
--WHERE
--    grantee = %s
--    AND table_schema = %s
--    AND table_name = %s;
   

SELECT 
	*
FROM 
	mystic_manuscript."limit";

