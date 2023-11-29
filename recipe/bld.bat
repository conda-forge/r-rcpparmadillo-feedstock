@rem inject include path
set "POSIX_LIBRARY_INC=%LIBRARY_INC:\=/%"
sed -i "s/PKG_CXXFLAGS =/PKG_CXXFLAGS = -I\"%POSIX_LIBRARY_INC%\"/" src\Makevars.win

"%R%" CMD INSTALL --build .
IF %ERRORLEVEL% NEQ 0 exit 1
