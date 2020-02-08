

With cte as (
	select pos, 
	po, yearid,
	Case
		When pos In ('OF') then 'outfield'
		When pos In ('SS', '1B', '2B', '3B')then 'infield'
		When pos In ('P', 'C') then 'Battery'
		End as Position
	From fielding)
	select sum(po), yearid, Position
	from cte
	where yearid = 2016
	Group by Position, yearid
	




