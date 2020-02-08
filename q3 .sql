select distinct concat (p.namefirst, ' ', p.namelast) as fullname, sum(sal.salary)
From schools s 
inner join collegeplaying cp
using (schoolid)
inner join people p
Using (playerid)
join salaries sal
using (playerid)
where s.schoolname = 'Vanderbilt University'
group by fullname
order by sum(sal.salary) desc






