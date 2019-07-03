USE publications;
SELECT a.au_id as AUTHOR_ID, au_lname as SURNAME, au_fname as F_NAME, t.title as TITLE, p.pub_name as PUBLISHER

FROM titleauthor tt
JOIN authors a 
on a.au_id = tt.au_id

JOIN titles as t
on tt.title_id = t.title_id

JOIN publishers as p
on t.pub_id = p.pub_id
#-------------------------------------------------------------------------------------------------- CHALLENGE 2
USE publications;
SELECT a.au_id as AUTHOR_ID, au_lname as SURNAME, au_fname as F_NAME, p.pub_name as PUBLISHER, count(t.title_id) as TITLE_COUNT

FROM titleauthor tt
JOIN authors a 
on a.au_id = tt.au_id

JOIN titles as t
on tt.title_id = t.title_id

JOIN publishers as p
on t.pub_id = p.pub_id

group by t.pub_id, a.au_id

#-------------------------------------------------------------------------------------------------- CHALLENGE 3
USE publications;
SELECT a.au_id as AUTHOR_ID, a.au_lname as LAST_NAME, a.au_fname as FIRST_NAME, SUM(qty) as SALES

from authors as a
join titleauthor as t
on a.au_id = t.au_id

join sales as s
on t.title_id = s.title_id

group by a.au_id