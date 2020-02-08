select Round (avg(so),2) as AVG_SO, round (avg(hr),2) as AVG_HR,
Case when yearid >= 1920 and yearid<= 1929 then '20s'
 when yearid >= 1930 and yearid <= 1939 then '30s'
 when yearid >= 1940 and yearid <= 1949 then '40s'
 when yearid >=1950 and yearid <=1959 then '50s'
 when yearid >=1960 and yearid <=1969 then '60s'
 when yearid >=1970 and yearid <=1979 then '70s'
 when yearid >=1980 and yearid <=1989 then '80s'
 when yearid >=1990 and yearid <=1999 then '90s'
 when yearid >=2000 and yearid <=2010 then '2000s'
 when yearid >=2011 and yearid <=2016 then '2010s'
Else 'decade' end decade
from batting

--limit <= 1920
group by decade