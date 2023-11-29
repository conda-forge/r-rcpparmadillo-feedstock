@rem inject include path
sed -i "s/PKG_CXXFLAGS =/PKG_CXXFLAGS = -I\"%LIBRARY_INC%\"/" src\Makevars.win

"%R%" CMD INSTALL --build .
IF %ERRORLEVEL% NEQ 0 exit 1
