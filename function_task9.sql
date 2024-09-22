select * from sales
select sum(sales), sum(profit), product_id from sales where product_id = 'FUR-BO-10001798'
group by product_id 

create or replace function downpayment(price double precision,persentgevalue double precision)
RETURNS double precision as $$
DECLARE
	amt double precision;
BEGIN
	IF persentgevalue > 0 THEN
	    amt := price *  persentgevalue/ 100 ;
	    return amt;
	else
    return price;
	END IF;
  RETURN amt;
END;
$$ LANGUAGE plpgsql;

select downpayment(75000,20)





















	


	
create or replace function salesprofit(productid varchar)
RETURNS double precision as $$
DECLARE
    sum_sales double precision;
	sum_profit double precision;
	profitperc double precision;         
BEGIN 
        select sum(sales) as sum_sales , sum(profit) as sum_profit into sum_sales, sum_profit
		from sales where product_id = profitid;
        profitperc := (sum_profit/sum_sales) * 100;
        return profitperc;
END
$$ language plpgsql;

select salesprofit('FUR-TA-10000577')
select *,  salesprofit(product_id) from sales 

----------------------PRACTICES-----
select * from customer
	
create or replace function customer_name(name character varying)
RETURNS character varying AS $$ 
DECLARE customer_name character varying
BEGIN
    IF customer_name = 'Linda Cazamias' THEN
    return 'firtname' = 'Linda';
    else
    IF lastname = Cazamias THEN
    return 'lastname' = 'Cazamias';
    END IF;
    END IF;
  RETURN customer_name;
END;
$$LANGUAGE plpgsql;


select customer_name('Cazamias')


select * from customer

CREATE OR REPLACE FUNCTION get_customer_name(cust_id varchar)
RETURNS TABLE(first_name VARCHAR, last_name VARCHAR) AS $$
BEGIN
    RETURN QUERY
    SELECT c.first_name, c.last_name
    FROM customer as c
    WHERE customer_id = cust_id;
END;
$$ LANGUAGE plpgsql;


select get_customer_name('PO-18865')




