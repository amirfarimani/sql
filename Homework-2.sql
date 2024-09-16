<?xml version="1.0" encoding="UTF-8"?><sqlb_project><db path="HW2.db" readonly="0" foreign_keys="0" case_sensitive_like="0" temp_store="0" wal_autocheckpoint="1000" synchronous="2"/><attached/><window><main_tabs open="structure browser pragmas query" current="3"/></window><tab_structure><column_width id="0" width="300"/><column_width id="1" width="0"/><column_width id="2" width="100"/><column_width id="3" width="8651"/><column_width id="4" width="0"/><expanded_item id="0" parent="1"/><expanded_item id="1" parent="1"/><expanded_item id="2" parent="1"/><expanded_item id="3" parent="1"/></tab_structure><tab_browse><table title="booth" custom_title="0" dock_id="1" table="4,5:mainbooth"/><dock_state state="000000ff00000000fd00000001000000020000000000000000fc0100000001fb000000160064006f0063006b00420072006f00770073006500310100000000ffffffff0000011700ffffff000000000000000000000004000000040000000800000008fc00000000"/><default_encoding codec=""/><browse_table_settings/></tab_browse><tab_sql><sql name="SQL 1*">--Homework2 



--SELECT1:

SELECT *

FROM customer;



--SELECT2

SELECT * 

FROM customer

ORDER By customer_last_name ASC , customer_first_name Asc

LIMIT 10;



--WHERE1:

SELECT *

FROM customer_purchases

where product_id IN (4,9);



--WHERE2:

Select * , (quantity * cost_to_customer_per_qty) AS price 

FROM customer_purchases

WHERE vendor_id BETWEEN 8 And 10;





--CASE1:

SELECT product_id , product_name , 

        CASE

 		    WHEN product_qty_type = 'unit'

 			THEN 'unit'

 			ElSE 'bulk'

 		END 

 		AS prod_qty_type_condensed

FROM product;



--CASE2:

SELECT product_id, product_name, 

        CASE

            WHEN product_qty_type = 'unit' THEN 'unit'

            ELSE 'bulk'

        END

 	    AS prod_qty_type_condensed,

        CASE

            WHEN LOWER(product_name) LIKE '%pepper%' THEN 1

            ELSE 0

        END

 	    AS pepper_flag

FROM product;





--JOIN:

SELECT v.vendor_id, v.vendor_name, vba.market_date

FROM vendor AS v

INNER JOIN vendor_booth_assignments AS vba ON v.vendor_id = vba.vendor_id

ORDER BY v.vendor_name, vba.market_date;</sql><current_tab id="0"/></tab_sql></sqlb_project>
