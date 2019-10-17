CREATE VIEW combined_view AS
SELECT a.*,
	b.HOME_TotalDVOA,
	b.HOME_OffenseDVOA,
	b.HOME_OffPassDVOA,
	b.HOME_OffRushDVOA,
	b.HOME_DefenseDVOA,
	b.HOME_DefPassDVOA,
	b.HOME_DefRushDVOA,
	b.HOME_STDVOA,
	c.visit_totaldvoa,
	c.VISIT_OffenseDVOA,
	c.VISIT_OffPassDVOA,
	c.VISIT_OffRushDVOA,
	c.VISIT_DefenseDVOA,
	c.VISIT_DefPassDVOA,
	c.VISIT_DefRushDVOA,
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