set dest_path=%1
set build_type=%2
cd /d %~dp0

if "%dest_path%"=="" ( echo dest_path is null) else (
echo dest_path is %dest_path%
echo build_type is %build_type%

echo f|xcopy /y /s /i /f ..\..\libs\CCAppCommon\%build_type%\*                            %dest_path%\
echo f|xcopy /y /s /i /f ..\..\libs\CCFbo\%build_type%\*                                  %dest_path%\
echo f|xcopy /y /s /i /f ..\..\libs\CCPluginAPI\%build_type%\*                            %dest_path%\
echo f|xcopy /y /s /i /f ..\..\libs\qCC_db\%build_type%\*                                 %dest_path%\
echo f|xcopy /y /s /i /f ..\..\libs\qCC_db\extern\CCCoreLib\%build_type%\*                %dest_path%\
echo f|xcopy /y /s /i /f ..\..\libs\qCC_glWindow\%build_type%\*                           %dest_path%\
echo f|xcopy /y /s /i /f ..\..\libs\qCC_io\%build_type%\*                                 %dest_path%\
echo f|xcopy /y /s /i /f ..\..\plugins\core\Standard\qMeasure\%build_type%\*              %dest_path%\plugins\

)

rem pause
