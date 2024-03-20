set dest_path=%1
cd /d %~dp0

if "%dest_path%"=="" ( echo dest_path is null) else (
echo dest_path is "%dest_path%

echo f|xcopy /y /s /i /f .\libs\CCAppCommon\Debug\*                            %dest_path%\
echo f|xcopy /y /s /i /f .\libs\CCFbo\Debug\*                                  %dest_path%\
echo f|xcopy /y /s /i /f .\libs\CCPluginAPI\Debug\*                            %dest_path%\
echo f|xcopy /y /s /i /f .\libs\qCC_db\Debug\*                                 %dest_path%\
echo f|xcopy /y /s /i /f .\libs\qCC_db\extern\CCCoreLib\Debug\*                %dest_path%\
echo f|xcopy /y /s /i /f .\libs\qCC_glWindow\Debug\*                           %dest_path%\
echo f|xcopy /y /s /i /f .\libs\qCC_io\Debug\*                                 %dest_path%\
echo f|xcopy /y /s /i /f .\plugins\core\Standard\qMeasure\Debug\*              %dest_path%\plugins\

)

rem pause 