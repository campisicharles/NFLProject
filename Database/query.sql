SELECT * FROM public.gambling_data a
inner join dvoa_data b 
on a.hometeam = b.team and
a.year = b.year and
a.week = b.week
inner join dvoa_data c
on a.awayteam = c.team and
a.year = c.year and
a.week = c.week;