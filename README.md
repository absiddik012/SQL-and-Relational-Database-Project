
# Soccer Club Management System





## Overview
The Soccer Club Management System is a relational database system designed to manage player, team, match, coach, training session, injury report, and player performance data for soccer clubs. It provides a platform to efficiently organize and track various aspects of club management, including player statistics, match schedules, training sessions, and injury reports.

## Features

- **Player Management**: Store and manage player details such as name, age, date of birth, nationality, positions, and team affiliation.
- **Team Management**: Manage teams participating in different leagues, including team name, league, and coach details.
- **Match Management**: Record match details such as date, location, participating teams, and match scores.
- **Coach Management**: Track coach details including name, nationality, and start date.
- **Training Session Management**: Schedule and manage training sessions with details like date, time, location, and focus area.
- **Injury Report Management**: Record player injuries with information on injury type, date, and player ID.
- **Player Performance Tracking**: Monitor player performance in matches with data on goals scored, assists, and minutes played.


## EER-Diagram

![Here is the Diagram](https://drive.google.com/file/d/1fl7gcPabbWRXPhu8vee5K6r4hQdVB7Gg/view?usp=sharing)


## Database Structure

The database consists of the following tables:

- **Players**: Contains player information such as player ID, name, age, date of birth, nationality, positions, and team ID.
- **Teams**: Stores team details including team ID, team name, league, and coach ID.
- **Matches**: Records match data such as match ID, date, location, participating team IDs, and match scores.
- **Coaches**: Manages coach information including coach ID, name, nationality, and start date.
- **TrainingSessions**: Stores details of training sessions such as session ID, date, time, location, focus area, and team ID.
- **InjuryReports**: Tracks player injuries with data on report ID, player ID, date, and injury type.
- **PlayerPerformance**: Stores player performance in matches with information on performance ID, player ID, match ID, goals scored, assists, and minutes played.


## Queries Used

The system supports various queries for data retrieval and analysis, including:

- Finding players who scored the most goals in a single match.
- Identifying teams with an average player age of less than 28.
- Listing all matches played in a stadium location.
- Counting the number of players in each team with age greater than 25.
- Updating a team's league.
- Inserting a new record into the coaches table.
- Advanced queries for analyzing player performance data.
## Instructions

To set up the Soccer Club Management System, follow these steps:

1. **Database Creation**: Execute the SQL script provided to create the necessary tables and insert sample data.
2. **Queries**: Use the provided sample queries to retrieve and analyze data from the database.
3. **Customization**: Modify the database schema or queries as per specific requirements.


## Sample Queries

Sample SQL queries are provided for basic, intermediate, and advanced operations on the database tables. These queries demonstrate the system's capabilities and can be customized or extended as needed.


## Authors

- [Abu Bakar Siddik](https://github.com/absiddik012)


## License

This project is licensed under the [MIT](https://choosealicense.com/licenses/mit/) License - see the [LICENSE.md](LICENSE.md) file for details.

