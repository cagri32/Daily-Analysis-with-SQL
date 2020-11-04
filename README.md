# Daily-Analysis-with-SQL
Scripts to do daily check of certain values on a database with the given keys ie. TransactionIDs.

The purpose of this project is to create an SQL query with the given keys, request the output from a given server, and output the table to a text file to be used for daily checks.

In this project, SQL Server Management Studio (SSMS), MySQL, cmd, and PowerShell are used.

The repository consists of cmd, SQL, and text files.
Cmd file includes the commands to edit, concatenate, append input files, and request output from the database.
I also made use of PowerShell within the cmd file to alter the input into a suitable way needed for SQL query.

final.cmd file has all the commands to be run as a single file.
project2begin.sql and project2end.sql files are the beginning and the end parts to create the final.sql
input.txt is the file with the keys (TransactionIDs in this particular case) that needs to be checked.
input2.txt is the altered input to append in the where clause of the SQL file, to be used between project2begin.sql and project2end.sql
result.txt is the output of the SQL query from the server.

The files will be edited until the most effective and appropriate format is obtained.
