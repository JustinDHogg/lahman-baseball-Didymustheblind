--Find the name and height of the shortest player in the database. 
--How many games did he play in? 
---What is the name of the team for which he played?
--step 1 find tables with information.
---2 join them
-- minheight, name and height
--limit to answer


select concat (namefirst, ' ', namelast) as fullname, min (height) as shorty, t.name, a.g_all
from people p
inner join appearances a 
using (playerid)
join teams t
using (teamid)
group by fullname, t.name, a.g_all
order by shorty asc
limit 1



