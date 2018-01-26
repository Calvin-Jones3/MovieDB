# MovieDB
Coding Project For Intermedix

I chose to do the 3rd option, creating the backend of the movie project.  I used MySQL Workbench to create and run a MySQL database, and C# to make a program that runs a SQL command and activates a stored procedure, then displays the results in a text box.

The Files in this repository are:

IntermedixMovieDB.SQL - This is the Database that the C# program interacts with
MoviesMySQL.MWB - This is the MySQL Workbench project
WindowsFormsApp1 - This is the visual studio project

DataBase:
------

There are 3 tables in the database:

Movies - ID, Title, Length, Rating, Genre

Showtimes - ID, Date, StartTime, MovieID, TheaterID

Theaters - ID, Seats, HandicapAccess

Instructions:
---------

-Open MySQL Workbench and run the "Local instance MySQL Router"

   -User ID: root | Password: Password
    
-Click "Data Import/Restore"

-Select "Import from Self-Contained File" and choose IntermedixMovieDB.SQL

-Click "Start Import"

-Run the C# program

   -WindowsFormsApp1/WindowsFormsApp1/bin/WindowsFormsApp1.exe
    
    -or Open the visual studio solution and run from there
    
-Click the "Run SQL" button 

   - This runs an SQL command to get the first daily start time of each movie
    
-Click the "Run Stored" button

   - This runs an SQL command that runs a stored procedure in the database, that returns all movies that are playing in theaters that are handicap accessible.
