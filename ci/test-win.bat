call "C:\Program Files\MATLAB\R2015b\bin\matlab.exe" -wait -nodisplay -nosplash -nodesktop -r "try, run('$(pwd)/matlab/CIBuildAndTest.m'), catch ex, disp(['Exception during CIBuildAndTest.m: ' ex.message]), exit(1), end, exit(0);"

if not "%ERRORLEVEL%" == "0" (
    echo Exit Code = %ERRORLEVEL%
	exit /b 1
)