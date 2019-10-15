CREATE VIEW combined_view AS
SELECT * FROM public.gambling_data a
inner join home_dvoa_data b 
on a.hometeam = b.home_team and
a.year = b.year and
a.week = b.week
inner join visit_dvoa_data c
on a.awayteam = c.visit_team and
a.year = c.year and
a.week = c.week;