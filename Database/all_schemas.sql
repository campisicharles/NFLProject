-- Drop all the schemas here
CREATE TABLE VISIT_DVOA_data (
	VISIT_Team VARCHAR,
	Year int,
	Week int,
	Opponent VARCHAR,
	VISIT_TotalDVOA DEC,
	VISIT_OffenseDVOA DEC,
	VISIT_OffPassDVOA DEC,
	VISIT_OffRushDVOA DEC,
	VISIT_DefenseDVOA DEC,
	VISIT_DefPassDVOA DEC,
	VISIT_DefRushDVOA DEC,
	VISIT_STDVOA DEC
);

CREATE TABLE HOME_DVOA_data (
	HOME_Team VARCHAR,
	Year int,
	Week int,
	Opponent VARCHAR,
	HOME_TotalDVOA DEC,
	HOME_OffenseDVOA DEC,
	HOME_OffPassDVOA DEC,
	HOME_OffRushDVOA DEC,
	HOME_DefenseDVOA DEC,
	HOME_DefPassDVOA DEC,
	HOME_DefRushDVOA DEC,
	HOME_STDVOA DEC
);

CREATE TABLE gambling_data (
	Year int,
	Week int,
	HomeTeam VARCHAR,
	AwayTeam VARCHAR,
	HomeScore int,
	AwayScore int,
	PointDiff DEC,
	HWHL int,
	Covered int,
	HomeLine DEC,
	AwayLine DEC,
	PredictTotal DEC,
	ActualTotal	int
);

CREATE TABLE Game_Data (
	Year int,
	Week int,
	HomeTeam VARCHAR,
	AwayTeam VARCHAR,
	HomeScore int,
	AwayScore int,
	PointDiff DEC,
	HWHL int,
	Covered int,
	HomeLine DEC,
	AwayLine DEC,
	PredictTotal DEC,
	ActualTotal int,
	HOME_TotalDVOA DEC,
	HOME_OffenseDVOA DEC,
	HOME_OffPassDVOA DEC,
	HOME_OffRushDVOA DEC,
	HOME_DefenseDVOA DEC,
	HOME_DefPassDVOA DEC,
	HOME_DefRushDVOA DEC,
	HOME_STDVOA DEC,
	VISIT_TotalDVOA DEC,
	VISIT_OffenseDVOA DEC,
	VISIT_OffPassDVOA DEC,
	VISIT_OffRushDVOA DEC,
	VISIT_DefenseDVOA DEC,
	VISIT_DefPassDVOA DEC,
	VISIT_DefRushDVOA DEC,
	VISIT_STDVOA DEC
);

CREATE TABLE predictions_data (
Home VARCHAR,
Away VARCHAR,
HomeLine DEC,
PredictTotal DEC,
MaddenDifferential DEC,
OverUnder DEC,
HomeCover int,
ClassGuess int,
Year int,
Week int
);