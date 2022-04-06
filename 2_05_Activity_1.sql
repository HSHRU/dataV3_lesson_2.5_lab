/* 2.05 Activity 1*/

use bank;
select * from bank.account;
select * from bank.card;
select * from bank.disp;

select A2 as 'District', A11 as 'Avg. Salary'
from bank.district
where a11 > 10000;


select * from card
where type = 'junior'
order by 'issued' ASC
limit 10;

/* Exercise 3 */
SELECT card_id, type 
FROM bank.card
WHERE type = 'junior'
LIMIT 10;


select loan_id, account_id, amount AS 'debt', status
from bank.loan
where status = 'A';

/* Exercise 4 */
SELECT loan_id, account_id, amount AS 'debt', status
FROM bank.loan
WHERE status = 'B';


select loan_id, account_id, amount AS 'debt'
from bank.loan
where status = 'B';

select A2 as 'district_name', round ((A4 * A10/ 100)) as 'urban inhabitants' from bank.account;

select A2 as 'district_name', round ((A4 * A10/ 100)) as 'urban inhabitants' 
from bank.account
where A10 > 50;

