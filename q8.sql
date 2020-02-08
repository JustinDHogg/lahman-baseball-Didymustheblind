Select h.team, h.year, (h.attendance / h.games) as average_attendance, p.park_name, t.name  
From homegames h
inner join
parks p
using (park)
left join teams t
using (attendance)
where year =2016 and games > 10
order by average_attendance desc
limit 5


Select h.team, h.year, (h.attendance / h.games) as average_attendance, p.park_name, t.name
From homegames h
inner join
parks p
using (park)
left join teams t
using (attendance)
where year =2016 and games > 10
order by average_attendance
limit 5