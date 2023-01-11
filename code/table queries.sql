-- CREATE shots_data table via SELECT INTO from shots table
SELECT	ShotID,
		GAME_ID,
		GAME_EVENT_ID,
		PERIOD,
		MINUTES_REMAINING,
		SECONDS_REMAINING,
		EVENT_TYPE,
		ACTION_TYPE,
		SHOT_TYPE,
		SHOT_ZONE_BASIC,
		SHOT_ZONE_AREA,
		SHOT_ZONE_RANGE,
		SHOT_DISTANCE,
		LOC_X,
		LOC_Y,
		SHOT_MADE_FLAG,
		GAME_DATE,
		HTM,
		VTM
INTO shots_data
FROM shots;

-- CREATE players table
SELECT DISTINCT PLAYER_ID, PLAYER_NAME, TEAM_ID INTO players from shots;

-- CREATE teams table
SELECT DISTINCT TEAM_ID, TEAM_NAME INTO teams from shots;

-- DROP COLUMNS from shot table