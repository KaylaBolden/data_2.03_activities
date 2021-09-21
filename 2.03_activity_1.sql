-- 1. Get card_id and year_issued for all gold cards.

select year(convert(substring_index(issued,' ',1),date))
, card_id 
from bank.card
where type='gold' 
order by year(convert(substring_index(issued,' ',1),date));

-- 2. When was the first gold card issued? (Year)

select convert(substring_index(issued,' ',1),date)
from bank.card
where type='gold' 
order by convert(substring_index(issued,' ',1),date)
limit 1;

-- 3. Get issue date as:
-- date_issued: 'November 7th, 1993'

select date_format(convert(substring_index(issued,' ',1),date),'%M %D, %Y') as 'Date Issued'
from bank.card;

-- fecha_emision: '07 of November of 1993'

select date_format(convert(substring_index(issued,' ',1),date),'%d of %M of %Y') as 'Date Issued'
from bank.card;
