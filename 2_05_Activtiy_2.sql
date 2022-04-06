/* 2.05 Activtiy */
use bank;

select * from bank.card
where type = 'junior' and issued >= 980000; 
/*4*/
select min(amount) as min_transaction, Max(amount) as max_transaction
from bank.trans ;
/*where amount > 0;*/

