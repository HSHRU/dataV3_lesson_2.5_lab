-- start of L1.05.sql

use bank;
select * from bank.account;
select * from bank.card;
select * from bank.disp;

select * from bank.order
/*where amount > 10000;*/
/*where bank_to = 'EF';*/
where k_symbol = 'SIPO';

select account_id as 'Account', 
	   amount, 
	   k_symbol as 'Transaction type' 
from bank.order
where k_symbol = 'SIPO';


select account_id as 'Account', 
	   amount, 
	   k_symbol as 'Transaction type' 
from bank.order
where ((k_symbol = 'SIPO') and (amount > 10000));

select account_id as 'Account', 
	   amount, 
	   k_symbol as 'Transaction type' 
from bank.order
where (k_symbol = 'SIPO') and (amount > 10000);

select account_id as 'Account', 
	   amount, 
	   k_symbol as 'Transaction type' 
from bank.order
where ((k_symbol = 'SIPO') or (k_symbol = 'UVER') or (k_symbol = 'LEASING')) and (amount > 10000);

select account_id as 'Account', 
	   amount, 
	   k_symbol as 'Transaction type' 
from bank.order
where (k_symbol in ('SIPO', 'UVER', 'LEASING')) and (amount > 10000);

select account_id as 'Account', 
	   amount, 
	   k_symbol as 'Transaction type' 
from bank.order
where (k_symbol not in ('SIPO', 'UVER', 'LEASING')) and not (amount > 10000);

select account_id as 'Account', 
	   amount, 
	   k_symbol as 'Transaction type' 
from bank.order
where (k_symbol not in ('SIPO', 'UVER', 'LEASING')) and (amount <= 10000);

select account_id as 'Account', 
	   amount, 
	   k_symbol as 'Transaction type' 
from bank.order
where (k_symbol in ('SIPO', 'UVER', 'LEASING')) and (amount > 10000);

select * from bank.loan;


select *, amount - payments as 'balance', round((amount-payments)/1000,2)  as 'balance in thousands', duration as 'Total Payments'
from bank.loan;


select * from bank.account
order by district_id desc, date desc
limit 10;
/*limit 11,10;*/

select * from bank.account
order by district_id asc, date desc
limit 10;
/*limit 11,10;*/

select distinct frequency
from bank.account;

select * from district;

select A2 as 'District', A11 as 'Avg. Salary'
from bank.district
where a11 > 10000;

select count(distinct account_id) 
from bank.order;

select distinct account_id 
from bank.order

select trans.amount
from bank.order;

select avg(amount)
from bank.order;

select max(amount)
from bank.order;

select min(amount)
from bank.order;

select * from bank.order;

select *, concat(order_id, account_id, ' ', bank_to)
from bank.order;

select k_symbol, left(k_symbol, 3), right(K_symbol, 2)
from bank.order;

select k_symbol, left(k_symbol, 2), right(K_symbol, 2), concat(left(k_symbol, 2), right(K_symbol, 2))
from bank.order;


use bank;

select *
from bank.trans
where amount= 0;

select * from bank.account;


select *, convert(date, date)
from bank.account;

select *, convert(date, datetime)
from bank.account;


select *
from bank.card;

select *, convert(issed, date)
from bank.card;

select *, convert(left(issed,6), date)
from bank.card;

select *, date_format(convert(left(issued,6),date), '%d-%m-%Y') as 'issued_date'
from bank.card;

select *, date_format(convert(left(issued,6),date), '%M') as 'issued_date'
from bank.card;
