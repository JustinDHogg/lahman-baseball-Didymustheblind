--Which managers have won the TSN Manager of the Year award in both the National League (NL) and the American League (AL)? 
--Give their full name and the teams that they were managing when they won the award.
--joined tables--awardmanager, people, teamfranch, managers found distinct winners
--founf a way to find managers who won both awards.

select distinct concat (p.namefirst, ' ', p.namelast) as fullname, am.lgid, am.awardid, am.yearid, t.franchname
from awardsmanagers am
inner join managers m on am.playerid = m.playerid and am.yearid = m.yearid
inner join teamsfranchises t on m.teamid = t.franchid
inner join people p on am.playerid = p.playerid
where am.playerid in (
	select playerid from awardsmanagers 
	where awardid = 'TSN Manager of the Year'
		and lgid = 'AL'
	intersect 
		select playerid from awardsmanagers 
	where awardid = 'TSN Manager of the Year'
		and lgid = 'NL')
		and awardid = 'TSN Manager of the Year'