Select playerid, 100-((sum(cs ::numeric)) * 100/ (sum(sb ::numeric))) as percentage
from batting
where sb >=20 and cs is not null and yearid=2016
group by playerid
order by percentage desc





