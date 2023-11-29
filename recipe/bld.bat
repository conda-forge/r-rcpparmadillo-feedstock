@rem add explicit C++ standard
echo CXX_STD=CXX14 >> src\Makevars.win

"%R%" CMD INSTALL --build .
IF %ERRORLEVEL% NEQ 0 exit 1
