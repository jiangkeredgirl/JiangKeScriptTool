set build_type=%1
echo build_type is %build_type%
cd /d %~dp0
echo "cc bin files copy"
start bincopy.bat "..\%build_type%" %build_type%

rem pause
