/*
5. Using the sports database containing two relations 
(TEAM, MATCH_DETAILS) and write the queries for the 
following : 

*/

-- a) Display the MatchID of all those matches where both 
-- the teams have scored more than 70. 

SELECT
   MatchId,
   MatchDate
FROM match_details
WHERE FirstTeamScore > 70 AND `SecondTeamScore` > 70   

-- b) Display the MatchID of all those matches where 
-- FirstTeam has scored less than 70 but SecondTeam 
-- has scored more than 70. 

SELECT
   MatchId,
   MatchDate
FROM match_details
WHERE `FirstTeamScore` < 70 AND `SecondTeamScore` > 70   

-- c) Display the MatchID and date of matches played by 
-- Team 1 and won by it.

SELECT
   MatchId,
   MatchDate
FROM match_details
WHERE (`FirstTeamId` = 1 AND `FirstTeamScore` > `SecondTeamScore`) OR (`SecondTeamId` = 1 AND `SecondTeamScore` > `FirstTeamScore`) 

-- d) Display the MatchID of matches played by Team 2 
-- and not won by it. 

SELECT
    MatchId,
    MatchDate
FROM match_details
WHERE (`FirstTeamId` = 2 AND `FirstTeamScore` < `SecondTeamScore`) OR (`SecondTeamId` = 2 AND `SecondTeamScore` < `FirstTeamScore`)    


-- e) Change the name of the relation TEAM to T_DATA. 
-- Also change the attributes TeamID and TeamName 
-- to T_ID and T_NAME respectively.

ALTER TABLE T_DATA RENAME TO TEAM;

ALTER TABLE TEAM
CHANGE TeamID T_ID VARCHAR(10);