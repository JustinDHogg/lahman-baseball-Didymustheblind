(select name, yearid, w, wswin
from teams 
where yearid between 1970 and 2016 --and wswin = 'Y'
Order by w desc
Limit 1)

Union all

(Select name, yearid, w, wswin
From teams
where wswin = 'Y' and yearid between 1970 and 2016 and yearid != '1981'
order by w
Limit 1)


with curated_table as(	
	select yearid as year,
			w as wins,
			l as losses,
			divwin as division_win,
			wcwin as wild_card_win,
			lgwin as league_champion,
			wswin as world_series_win,
			teamid as team
	from teams
	where wswin = 'Y'and yearid >=1970
		and yearid <=2016
		and yearid <> 1981),max_wins_table as(
	select yearid as year, max(w) as wins
	from teams
	group by yearid)select
	round(Sum(CASE WHEN c.wins = m.wins then 1
	ELSE 0
	END)::numeric/count(*)*100,2) as percent
from curated_table as c
inner join max_wins_table as m
on c.year = m. year



	