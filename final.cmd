type C:\files\mysql\project2begin.sql > C:\files\mysql\final.sql
type C:\files\mysql\input.txt > C:\files\mysql\temp.txt
echo.>> C:\files\mysql\input.txt
echo NotAnID>> C:\files\mysql\input.txt
@powershell -Command "(get-content C:\files\mysql\input.txt) -join \"',`n'\" > C:\files\mysql\input2.txt"
type C:\files\mysql\input2.txt >> C:\files\mysql\final.sql
type C:\files\mysql\project2end.sql >> C:\files\mysql\final.sql
type C:\files\mysql\temp.txt > C:\files\mysql\input.txt
del /f C:\files\mysql\input.txt
sqlcmd -S 168.168.168.168\SQL2015 -U username -P password -i C:\files\mysql\final.sql -o C:\files\mysql\results.txt
echo done 
 
