-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/3X5oK2
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Drop all the schemas here

CREATE TABLE "VISIT_DVOA_data" (
    "VISIT_Team" VARCHAR   NOT NULL,
    "Year" int   NOT NULL,
    "Week" int   NOT NULL,
    "Opponent" VARCHAR   NOT NULL,
    "VISIT_TotalDVOA" DEC   NOT NULL,
    "VISIT_OffenseDVOA" DEC   NOT NULL,
    "VISIT_OffPassDVOA" DEC   NOT NULL,
    "VISIT_OffRushDVOA" DEC   NOT NULL,
    "VISIT_DefenseDVOA" DEC   NOT NULL,
    "VISIT_DefPassDVOA" DEC   NOT NULL,
    "VISIT_DefRushDVOA" DEC   NOT NULL,
    "VISIT_STDVOA" DEC   NOT NULL
);

CREATE TABLE "HOME_DVOA_data" (
    "HOME_Team" VARCHAR   NOT NULL,
    "Year" int   NOT NULL,
    "Week" int   NOT NULL,
    "Opponent" VARCHAR   NOT NULL,
    "HOME_TotalDVOA" DEC   NOT NULL,
    "HOME_OffenseDVOA" DEC   NOT NULL,
    "HOME_OffPassDVOA" DEC   NOT NULL,
    "HOME_OffRushDVOA" DEC   NOT NULL,
    "HOME_DefenseDVOA" DEC   NOT NULL,
    "HOME_DefPassDVOA" DEC   NOT NULL,
    "HOME_DefRushDVOA" DEC   NOT NULL,
    "HOME_STDVOA" DEC   NOT NULL
);

CREATE TABLE "gambling_data" (
    "Year" int   NOT NULL,
    "Week" int   NOT NULL,
    "HomeTeam" VARCHAR   NOT NULL,
    "AwayTeam" VARCHAR   NOT NULL,
    "HomeScore" int   NOT NULL,
    "AwayScore" int   NOT NULL,
    "PointDiff" DEC   NOT NULL,
    "HWHL" int   NOT NULL,
    "Covered" int   NOT NULL,
    "HomeLine" DEC   NOT NULL,
    "AwayLine" DEC   NOT NULL,
    "PredictTotal" DEC   NOT NULL,
    "ActualTotal" int   NOT NULL
);

CREATE TABLE "Game_Data" (
    "Year" int   NOT NULL,
    "Week" int   NOT NULL,
    "HomeTeam" VARCHAR   NOT NULL,
    "AwayTeam" VARCHAR   NOT NULL,
    "HomeScore" int   NOT NULL,
    "AwayScore" int   NOT NULL,
    "PointDiff" DEC   NOT NULL,
    "HWHL" int   NOT NULL,
    "Covered" int   NOT NULL,
    "HomeLine" DEC   NOT NULL,
    "AwayLine" DEC   NOT NULL,
    "PredictTotal" DEC   NOT NULL,
    "ActualTotal" int   NOT NULL,
    "HOME_TotalDVOA" DEC   NOT NULL,
    "HOME_OffenseDVOA" DEC   NOT NULL,
    "HOME_OffPassDVOA" DEC   NOT NULL,
    "HOME_OffRushDVOA" DEC   NOT NULL,
    "HOME_DefenseDVOA" DEC   NOT NULL,
    "HOME_DefPassDVOA" DEC   NOT NULL,
    "HOME_DefRushDVOA" DEC   NOT NULL,
    "HOME_STDVOA" DEC   NOT NULL,
    "VISIT_TotalDVOA" DEC   NOT NULL,
    "VISIT_OffenseDVOA" DEC   NOT NULL,
    "VISIT_OffPassDVOA" DEC   NOT NULL,
    "VISIT_OffRushDVOA" DEC   NOT NULL,
    "VISIT_DefenseDVOA" DEC   NOT NULL,
    "VISIT_DefPassDVOA" DEC   NOT NULL,
    "VISIT_DefRushDVOA" DEC   NOT NULL,
    "VISIT_STDVOA" DEC   NOT NULL
);

CREATE TABLE "predictions_data" (
    "Home" VARCHAR   NOT NULL,
    "Away" VARCHAR   NOT NULL,
    "HomeLine" DEC   NOT NULL,
    "PredictTotal" DEC   NOT NULL,
    "MaddenDifferential" DEC   NOT NULL,
    "OverUnder" DEC   NOT NULL,
    "HomeCover" int   NOT NULL,
    "ClassGuess" int   NOT NULL,
    "Year" int   NOT NULL,
    "Week" int   NOT NULL
);

ALTER TABLE "VISIT_DVOA_data" ADD CONSTRAINT "fk_VISIT_DVOA_data_VISIT_Team_Year_Week" FOREIGN KEY("VISIT_Team", "Year", "Week")
REFERENCES "gambling_data" ("AwayTeam", "Year", "Week");

ALTER TABLE "VISIT_DVOA_data" ADD CONSTRAINT "fk_VISIT_DVOA_data_VISIT_TotalDVOA_VISIT_OffenseDVOA_VISIT_OffPassDVOA_VISIT_OffRushDVOA_VISIT_DefenseDVOA_VISIT_DefPassDVOA_VISIT_DefRushDVOA_VISIT_STDVOA" FOREIGN KEY("VISIT_TotalDVOA", "VISIT_OffenseDVOA", "VISIT_OffPassDVOA", "VISIT_OffRushDVOA", "VISIT_DefenseDVOA", "VISIT_DefPassDVOA", "VISIT_DefRushDVOA", "VISIT_STDVOA")
REFERENCES "Game_Data" ("VISIT_TotalDVOA", "VISIT_OffenseDVOA", "VISIT_OffPassDVOA", "VISIT_OffRushDVOA", "VISIT_DefenseDVOA", "VISIT_DefPassDVOA", "VISIT_DefRushDVOA", "VISIT_STDVOA");

ALTER TABLE "HOME_DVOA_data" ADD CONSTRAINT "fk_HOME_DVOA_data_HOME_Team_Year_Week" FOREIGN KEY("HOME_Team", "Year", "Week")
REFERENCES "gambling_data" ("HomeTeam", "Year", "Week");

ALTER TABLE "HOME_DVOA_data" ADD CONSTRAINT "fk_HOME_DVOA_data_HOME_TotalDVOA_HOME_OffenseDVOA_HOME_OffPassDVOA_HOME_OffRushDVOA_HOME_DefenseDVOA_HOME_DefPassDVOA_HOME_DefRushDVOA_HOME_STDVOA" FOREIGN KEY("HOME_TotalDVOA", "HOME_OffenseDVOA", "HOME_OffPassDVOA", "HOME_OffRushDVOA", "HOME_DefenseDVOA", "HOME_DefPassDVOA", "HOME_DefRushDVOA", "HOME_STDVOA")
REFERENCES "Game_Data" ("HOME_TotalDVOA", "HOME_OffenseDVOA", "HOME_OffPassDVOA", "HOME_OffRushDVOA", "HOME_DefenseDVOA", "HOME_DefPassDVOA", "HOME_DefRushDVOA", "HOME_STDVOA");

ALTER TABLE "gambling_data" ADD CONSTRAINT "fk_gambling_data_Year_Week_HomeTeam_AwayTeam_HomeScore_AwayScore_PointDiff_HWHL_Covered_HomeLine_AwayLine_PredictTotal_ActualTotal" FOREIGN KEY("Year", "Week", "HomeTeam", "AwayTeam", "HomeScore", "AwayScore", "PointDiff", "HWHL", "Covered", "HomeLine", "AwayLine", "PredictTotal", "ActualTotal")
REFERENCES "Game_Data" ("Year", "Week", "HomeTeam", "AwayTeam", "HomeScore", "AwayScore", "PointDiff", "HWHL", "Covered", "HomeLine", "AwayLine", "PredictTotal", "ActualTotal");

ALTER TABLE "Game_Data" ADD CONSTRAINT "fk_Game_Data_Year_Week_HomeTeam_AwayTeam_HomeLine_PredictTotal" FOREIGN KEY("Year", "Week", "HomeTeam", "AwayTeam", "HomeLine", "PredictTotal")
REFERENCES "predictions_data" ("Year", "Week", "Home", "Away", "HomeLine", "PredictTotal");

