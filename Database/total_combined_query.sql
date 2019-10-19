CREATE VIEW combined_view AS
SELECT a.*,
	b.home_totaldvoa,
	b.home_offensedvoa,
	b.home_offpassdvoa,
	b.home_offrushdvoa,
	b.home_defensedvoa,
	b.home_defpassdvoa,
	b.home_defrushdvoa,
	b.home_stdvoa,
	c.visit_totaldvoa,
	c.visit_offensedvoa,
	c.visit_offpassdvoa,
	c.visit_offrushdvoa,
	c.visit_defensedvoa,
	c.visit_defpassdvoa,
	c.visit_defrushdvoa,
	c.visit_stdvoa
	
FROM 
	public.gambling_data as a
	INNER JOIN home_dvoa_data as b
on a.hometeam = b.home_team and
a.year = b.year and
a.week = b.week
inner join visit_dvoa_data as c
on a.awayteam = c.visit_team and
a.year = c.year and
a.week = c.week

insert into game_data
select * from combined_view