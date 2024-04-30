
-- Creating Tables --
CREATE TABLE Players (
    PlayerID INT PRIMARY KEY,
    Name VARCHAR(100),
    Age INT,
    DateOfBirth DATE,
    Nationality VARCHAR(50),
    Positions VARCHAR(100), 
    TeamID INT,
    FOREIGN KEY (TeamID) REFERENCES Teams(TeamID)
);

CREATE TABLE Teams (
    TeamID INT PRIMARY KEY,
    TeamName VARCHAR(100),
    League VARCHAR(50),
    CoachID INT,
    FOREIGN KEY (CoachID) REFERENCES Coaches(CoachID)
);


CREATE TABLE Coaches (
    CoachID INT PRIMARY KEY,
    Name VARCHAR(100),
    Nationality VARCHAR(50),
    DateStarted DATE
);


CREATE TABLE Matches (
    MatchID INT PRIMARY KEY,
    Date DATE,
    Location VARCHAR(100),
    TeamID_A INT,
    TeamID_B INT,
    Score_A INT,
    Score_B INT,
    FOREIGN KEY (TeamID_A) REFERENCES Teams(TeamID),
    FOREIGN KEY (TeamID_B) REFERENCES Teams(TeamID)
);


CREATE TABLE TrainingSessions (
    SessionID INT PRIMARY KEY,
    Date DATE,
    Time TIME,
    Location VARCHAR(100),
    FocusArea VARCHAR(100),
    TeamID INT,
    FOREIGN KEY (TeamID) REFERENCES Teams(TeamID)
);


CREATE TABLE InjuryReports (
    ReportID INT,
    PlayerID INT,
    Date DATE,
    InjuryType VARCHAR(100),
    PRIMARY KEY (ReportID, PlayerID),
    FOREIGN KEY (PlayerID) REFERENCES Players(PlayerID)
);


CREATE TABLE PlayerPerformance (
    PerformanceID INT PRIMARY KEY,
    PlayerID INT,
    MatchID INT,
    GoalsScored INT,
    Assists INT,
    MinutesPlayed INT,
    FOREIGN KEY (PlayerID) REFERENCES Players(PlayerID),
    FOREIGN KEY (MatchID) REFERENCES Matches(MatchID)
);


-- Inserting Values --

INSERT INTO Players (PlayerID, Name, Age, DateOfBirth, Nationality, Positions, TeamID) VALUES
(1, 'Leo Messi', 34, '1987-06-24', 'Argentinian', 'Forward', 1),
(2, 'Cristiano Ronaldo', 36, '1985-02-05', 'Portuguese', 'Forward', 2),
(3, 'Kevin De Bruyne', 30, '1991-06-28', 'Belgian', 'Midfielder', 13),
(4, 'Virgil van Dijk', 30, '1991-07-08', 'Dutch', 'Defender', 4),
(5, 'Neymar Jr', 29, '1992-02-05', 'Brazilian', 'Forward', 7),
(6, 'Mohamed Salah', 29, '1992-06-15', 'Egyptian', 'Forward', 4),
(7, 'Kylian Mbappe', 22, '1998-12-20', 'French', 'Forward', 7),
(8, 'Erling Haaland', 21, '2000-07-21', 'Norwegian', 'Forward', 6),
(9, 'Joshua Kimmich', 26, '1995-02-08', 'German', 'Midfielder', 5),
(10, 'Harry Kane', 28, '1993-07-28', 'English', 'Forward', 14),
(11, 'Luka Modric', 35, '1985-09-09', 'Croatian', 'Midfielder', 2),
(12, 'Robert Lewandowski', 33, '1988-08-21', 'Polish', 'Forward', 5),
(13, 'Sadio Mane', 29, '1992-04-10', 'Senegalese', 'Forward', 4),
(14, 'Alisson Becker', 29, '1992-10-02', 'Brazilian', 'Goalkeeper', 4),
(15, 'Romelu Lukaku', 28, '1993-05-13', 'Belgian', 'Forward', 9);


INSERT INTO Teams (TeamID, TeamName, League, CoachID) VALUES 
(1, 'FC Barcelona', 'La Liga', 1),
(2, 'Real Madrid', 'La Liga', 2),
(3, 'Manchester United', 'Premier League', 3),
(4, 'Liverpool FC', 'Premier League', 4),
(5, 'Bayern Munich', 'Bundesliga', 5),
(6, 'Borussia Dortmund', 'Bundesliga', 6),
(7, 'Paris Saint-Germain', 'Ligue 1', 7),
(8, 'Juventus', 'Serie A', 8),
(9, 'Inter Milan', 'Serie A', 9),
(10, 'AC Milan', 'Serie A', 10),
(11, 'Chelsea FC', 'Premier League', 11),
(12, 'Arsenal FC', 'Premier League', 12),
(13, 'Manchester City', 'Premier League', 13),
(14, 'Tottenham Hotspur', 'Premier League', 14),
(15, 'Leicester City', 'Premier League', 15);


INSERT INTO Coaches (CoachID, Name, Nationality, DateStarted) VALUES 
(1, 'John Smith', 'English', '2015-08-01'),
(2, 'Maria Garcia', 'Spanish', '2017-04-15'),
(3, 'Alex Johnson', 'American', '2018-01-10'),
(4, 'Liu Wei', 'Chinese', '2016-05-24'),
(5, 'Ahmed Khan', 'Egyptian', '2019-07-30'),
(6, 'Anna Schmidt', 'German', '2014-09-12'),
(7, 'Igor Sokolov', 'Russian', '2020-02-20'),
(8, 'Yuki Tanaka', 'Japanese', '2013-11-05'),
(9, 'Marco Rossi', 'Italian', '2016-06-18'),
(10, 'Olivia Dubois', 'French', '2015-03-22'),
(11, 'Daniel Brown', 'English', '2017-07-14'),
(12, 'Sophia Mwangi', 'Kenyan', '2018-08-09'),
(13, 'Lucas Silva', 'Brazilian', '2019-10-30'),
(14, 'Emma Jones', 'Australian', '2014-12-16'),
(15, 'Lee Min-ho', 'Korean', '2020-01-07');


INSERT INTO Matches (MatchID, Date, Location, TeamID_A, TeamID_B, Score_A, Score_B) VALUES
(1, '2024-03-10', 'Camp Nou, Barcelona', 1, 2, 3, 2),
(2, '2024-03-11', 'Anfield, Liverpool', 4, 3, 1, 1),
(3, '2024-03-12', 'Allianz Arena, Munich', 5, 6, 5, 0),
(4, '2024-03-13', 'Parc des Princes, Paris', 7, 8, 2, 2),
(5, '2024-03-14', 'San Siro, Milan', 9, 10, 3, 1),
(6, '2024-03-15', 'Stamford Bridge, London', 11, 12, 0, 0),
(7, '2024-03-16', 'Etihad Stadium, Manchester', 13, 14, 4, 2),
(8, '2024-03-17', 'King Power Stadium, Leicester', 15, 1, 1, 3),
(9, '2024-03-18', 'Wanda Metropolitano, Madrid', 2, 3, 2, 2),
(10, '2024-03-19', 'Signal Iduna Park, Dortmund', 6, 5, 1, 3),
(11, '2024-03-20', 'Old Trafford, Manchester', 3, 4, 2, 1),
(12, '2024-03-21', 'Emirates Stadium, London', 12, 11, 3, 3),
(13, '2024-03-22', 'Santiago Bernabeu, Madrid', 2, 1, 2, 4),
(14, '2024-03-23', 'Veltins-Arena, Gelsenkirchen', 5, 6, 0, 2),
(15, '2024-03-24', 'Olympiastadion, Berlin', 6, 5, 1, 1);


INSERT INTO TrainingSessions (SessionID, Date, Time, Location, FocusArea, TeamID) VALUES
(1, '2024-03-25', '10:00:00', 'Camp Nou Training Ground', 'Tactics', 1),
(2, '2024-03-26', '11:00:00', 'Ciudad Real Madrid', 'Stamina', 2),
(3, '2024-03-27', '09:30:00', 'AON Training Complex', 'Defense', 3),
(4, '2024-03-28', '10:30:00', 'AXA Training Centre', 'Attack', 4),
(5, '2024-03-29', '09:00:00', 'Säbener Straße', 'Set Pieces', 5),
(6, '2024-03-30', '11:00:00', 'Dortmund Training Ground', 'Recovery', 6),
(7, '2024-03-31', '10:00:00', 'Ooredoo Training Centre', 'Tactics', 7),
(8, '2024-04-01', '09:30:00', 'Continassa', 'Stamina', 8),
(9, '2024-04-02', '10:30:00', 'Appiano Gentile', 'Defense', 9),
(10, '2024-04-03', '09:00:00', 'Milanello Sports Centre', 'Attack', 10),
(11, '2024-04-04', '11:00:00', 'Cobham Training Centre', 'Set Pieces', 11),
(12, '2024-04-05', '10:00:00', 'London Colney', 'Recovery', 12),
(13, '2024-04-06', '09:30:00', 'City Football Academy', 'Tactics', 13),
(14, '2024-04-07', '10:30:00', 'Hotspur Way', 'Stamina', 14),
(15, '2024-04-08', '09:00:00', 'Leicester City Training Ground', 'Defense', 15);


INSERT INTO InjuryReports (ReportID, PlayerID, Date, InjuryType) VALUES
(1, 1, '2024-03-01', 'Sprained Ankle'),
(2, 2, '2024-03-02', 'Hamstring Strain'),
(3, 3, '2024-03-03', 'Knee Injury'),
(4, 4, '2024-03-04', 'Concussion'),
(5, 5, '2024-03-05', 'Broken Arm'),
(6, 6, '2024-03-06', 'Achilles Tendonitis'),
(7, 7, '2024-03-07', 'Groin Strain'),
(8, 8, '2024-03-08', 'Calf Strain'),
(9, 9, '2024-03-09', 'Shoulder Injury'),
(10, 10, '2024-03-10', 'Elbow Injury'),
(11, 11, '2024-03-11', 'Back Strain'),
(12, 12, '2024-03-12', 'Foot Injury'),
(13, 13, '2024-03-13', 'Hip Strain'),
(14, 14, '2024-03-14', 'Quad Strain'),
(15, 15, '2024-03-15', 'Fractured Rib');


INSERT INTO PlayerPerformance (PerformanceID, PlayerID, MatchID, GoalsScored, Assists, MinutesPlayed) VALUES
(1, 1, 1, 2, 0, 90),
(2, 2, 2, 1, 1, 50),
(3, 3, 3, 0, 2, 90),
(4, 4, 4, 0, 0, 60),
(5, 5, 5, 1, 0, 90),
(6, 6, 6, 2, 1, 90),
(7, 7, 7, 1, 1, 80),
(8, 8, 8, 3, 0, 90),
(9, 9, 9, 0, 1, 90),
(10, 10, 10, 1, 0, 90),
(11, 11, 11, 0, 0, 45),
(12, 12, 12, 2, 2, 90),
(13, 13, 13, 1, 0, 90),
(14, 14, 14, 0, 0, 30),
(15, 15, 15, 1, 1, 90);

Select * from players;

select * from teams;

select * from coaches;

Select * from Matches;

Select * from TrainingSessions;

Select * from InjuryReports;

Select * from PlayerPerformance;


-- Basic Queries --
-- Who scored the most goals in a single match?--
SELECT PlayerID, MAX(GoalsScored) AS MostGoals 
FROM PlayerPerformance GROUP BY PlayerID 
ORDER BY MostGoals DESC LIMIT 1;

-- Which teams have an average player age of less than 28? --
SELECT TeamID, round(AVG(Age)) AS AverageAge
FROM Players
GROUP BY TeamID
HAVING AverageAge < 28;


-- Find all matches played in a 'Stadium' location--
SELECT MatchID, Date, Location 
FROM Matches WHERE Location LIKE '%Stadium%';


-- Count the number of players in each team with age greater than 25--
SELECT TeamID, COUNT(*) AS PlayersOver25
FROM Players
WHERE Age > 25
GROUP BY TeamID;


-- Update a Team's League--
UPDATE Teams
SET League = 'La Liga 2'
WHERE TeamID = 15;
select* from teams;


-- Inserting a new record to the Coaches table--
INSERT INTO Coaches (CoachID, Name, Nationality, DateStarted) VALUES 
(16, 'Elena Moreno', 'Mexican', '2021-01-10');
select * from coaches;


-- Intermediate Queries--

-- List all players with their team names and match details where they scored at least one goal--
SELECT p.Name AS PlayerName, t.TeamName, m.Date, 
m.Location, pp.GoalsScored
FROM PlayerPerformance pp
INNER JOIN Players p ON pp.PlayerID = p.PlayerID
INNER JOIN Teams t ON p.TeamID = t.TeamID
INNER JOIN Matches m ON pp.MatchID = m.MatchID
WHERE pp.GoalsScored >= 1
ORDER BY m.Date, t.TeamName, p.Name;



-- List all teams and the count of matches played--
SELECT t.TeamName, COUNT(m.MatchID) AS MatchesPlayed
FROM Teams t
LEFT JOIN Matches m ON t.TeamID = m.TeamID_A OR t.TeamID = m.TeamID_B
GROUP BY t.TeamName
ORDER BY MatchesPlayed DESC, t.TeamName;



-- Advanced Queries--
SELECT p.Name AS PlayerName, t.TeamName, round(AVG(pp.GoalsScored)) AS AvgGoalsPerMatch
FROM PlayerPerformance pp
JOIN Players p ON pp.PlayerID = p.PlayerID
JOIN Teams t ON p.TeamID = t.TeamID
GROUP BY pp.PlayerID
HAVING AVG(pp.GoalsScored) > (
    SELECT AVG(GoalsScored) FROM PlayerPerformance
)
ORDER BY AvgGoalsPerMatch DESC;

