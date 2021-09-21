-- 1. Check for transactions with null or empty values for the column amount.

select
sum(isnull(amount)) 
from bank.trans ;

-- 2. Count how many transactions have empty and non-empty k_symbol (in one query).
select
sum(isnull(k_symbol)) as mynull
,sum(
case 
when isnull(k_symbol)=1 then 0
else 1
end) as nonnull
from bank.trans ;
