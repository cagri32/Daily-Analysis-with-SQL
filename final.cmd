:: Go to the drectory of the files. Change your directory accordingly
cd C:\files\mysql

:: Copy first part of the query to the final SQL file
type project2begin.sql > final.sql

:: Copy input values to a temporary file
type input.txt > temp.txt

:: Alter the input values to fit in SQL query. 
:: PowerShell command is used for find and replace functionality
echo.>> input.txt
echo NotAnID>> input.txt
@powershell -Command "(get-content input.txt) -join \"',`n'\" > input2.txt"

:: Copy the altered input to the final SQL file
type input2.txt >> final.sql

:: Copy the last part of the query to the final SQL file
type project2end.sql >> C:\files\mysql\final.sql

:: Restore the initial input.txt file
type temp.txt > input.txt

:: Delete the temporarily created files
del /f input.txt
del /f input2.txt

:: Send the query to the server and get the output in results.txt
sqlcmd -S 168.168.168.168\SQL2015 -U username -P password -i final.sql -o results.txt
echo done 
 
 exit
