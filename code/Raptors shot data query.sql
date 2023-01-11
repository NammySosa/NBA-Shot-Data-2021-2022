-- QUERY TO JOIN tables to get Toronto Raptors shot data
SELECT  p.PLAYER_ID, 
		p.PLAYER_NAME, 
		t.TEAM_ID, 
		t.TEAM_NAME, 
		s.ShotID, 
		sd.GAME_ID,
		sd.GAME_EVENT_ID,
		sd.PERIOD,
		sd.MINUTES_REMAINING,
		sd.SECONDS_REMAINING,
		sd.EVENT_TYPE,
		sd.ACTION_TYPE,
		sd.SHOT_TYPE,
		sd.SHOT_ZONE_BASIC,
		sd.SHOT_ZONE_AREA,
		sd.SHOT_ZONE_RANGE,
		sd.SHOT_DISTANCE,
		sd.LOC_X,
		sd.LOC_Y,
		sd.SHOT_MADE_FLAG,
		sd.GAME_DATE,
		sd.HTM,
		sd.VTM
FROM players p
JOIN teams t
ON p.TEAM_ID = t.TEAM_ID
JOIN shots s
ON p.PLAYER_ID = s.PLAYER_ID
JOIN shots_data sd
ON s.ShotID = sd.ShotID
WHERE t.TEAM_NAME = 'Toronto Raptors';