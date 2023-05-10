SELECT * from authors;
SELECT au_fname, au_lname, phone from authors;
SELECT au_fname, au_lname, phone from authors order by au_fname, au_lname;
SELECT au_fname as first_name , au_lname as last_name, phone as telephone, state from authors 
where au_lname != 'Ringer' and state = 'CA'  order by au_fname, au_lname;
SELECT * from publishers where pub_name  like '%Bo%'
SELECT pub_name from publishers as p inner join titles as t on t.pub_id = p.pub_id  where t.type =  'Business' group by pub_name;
SELECT pub_id, totalDeVendad = sum(qty) from sales as s inner join titles as t on t.title_id = s.title_id group by pub_id; 
SELECT pub_id, title, totalDeVendad = sum(qty) from sales as s inner join titles as t on t.title_id = s.title_id group by title, pub_id; 
SELECT title, stor_name from (sales as s inner join titles as t on t.title_id = s.title_id)  inner join stores as st on st.stor_id = s.stor_id 
where st.stor_name = 'Bookbeat';
SELECT au_fname, au_lname from (titleauthor as ta inner join titles as t on t.title_id = ta.title_id) inner join authors as au on au.au_id = ta.au_id
group by au_fname, au_lname
having count(t.type) > 1
order by au_fname;
SELECT type, pub_id, mediaPrice = avg(price), totalDeVendad = sum(qty) from sales as s inner join titles as t on t.title_id = s.title_id group by type, pub_id; -- L
--SELECT type from titles as t where  t.advance >	1.5 *  totalType  group by type  totalType = having count(t.type))
--SELECT type from mediadeGrupo = count(type) from titles
SELECT au_fname, title,qty from ((sales as s inner join titles as t on t.title_id = s.title_id) inner join titleauthor as ta on ta.title_id = t.title_id) 
inner join authors as au on au.au_id = ta.au_id; -- n

SELECT title, ytd_sales, faturação = sum(qty) from titles as t inner join sales as s on s.title_id = t.title_id group by t.title, t.ytd_sales








