/*
4. Suppose your school management has decided to 
conduct cricket matches between students of Class XI 
and Class XII. Students of each class are asked to join 
any one of the four teams – Team Titan, Team Rockers, 
Team Magnet and Team Hurricane. During summer 
vacations, various matches will be conducted between 
these teams. Help your sports teacher to do the following:

*/

-- a) Create a database “Sports”.
CREATE DATABASE SPORTS;

-- b) Create a table “TEAM” with following considerations:

-- i) It should have a column TeamID for storing an
-- integer value between 1 to 9, which refers to
-- unique identification of a team.
-- ii) Each TeamID should have its associated name
-- (TeamName), which should be a string of length
-- not less than 10 characters.

CREATE TABLE TEAM (
    TeamID INT,
    TeamName VARCHAR(50) NOT NULL,
    CONSTRAINT pk_team PRIMARY KEY (TeamID),
    CONSTRAINT chk_teamid CHECK (TeamID BETWEEN 1 AND 9),
    CONSTRAINT chk_teamname CHECK (CHAR_LENGTH(TeamName) >= 10)
)

-- c) Using table level constraint, make TeamID as the
-- primary key.
-- d) Show the structure of the table TEAM using a SQL
-- statement.

DESC TEAM

-- e) As per the preferences of the students four teams
-- were formed as given below. Insert these four rows in
-- TEAM table:
-- Row 1: (1, Team Titan)
-- Row 2: (2, Team Rockers)
-- Row 3: (3, Team Magnet)
INSERT INTO
    TEAM (TeamID, TeamName)
VALUES (1, "Team Titan"),
    (2, "Team Rockers"),
    (3, "Team Magnet")

INSERT INTO 
      TEAM (TeamID,`TeamName`)
      VALUES (4,"Team Hurricane")    

-- f) Show the contents of the table TEAM using a DML
-- statement.
SELECT *
FROM team
    -- g) Now create another table MATCH_DETAILS and 
    -- insert data as shown below. Choose appropriate data 
    -- types and constraints for each attribute

CREATE TABLE MATCH_DETAILS (
    MatchId VARCHAR(10),
    MatchDate DATE,
    FirstTeamId INT,
    SecondTeamId INT,
    FirstTeamScore INT,
    SecondTeamScore INT,
    CONSTRAINT pk_match_details PRIMARY KEY (MatchId),
    FOREIGN KEY (FirstTeamId) REFERENCES TEAM (TeamID),
    FOREIGN KEY (SecondTeamId) REFERENCES TEAM(TeamID)   
)


INSERT INTO match_details (MatchID,`MatchDate`,`FirstTeamId`,`SecondTeamId`,`FirstTeamScore`,`SecondTeamScore`)
       VALUES ('M1','2018-07-17',1,2,90,86),
              ('M2','2018-07-18',3,4,45,48),
              ('M3','2018-07-19',1,3,78,56),
              ('M4','2018-07-19',2,4,56,67),
              ('M5','2018-07-18',1,4,32,87),
              ('M6','2018-07-17',2,3,67,51)

SELECT * FROM match_details              