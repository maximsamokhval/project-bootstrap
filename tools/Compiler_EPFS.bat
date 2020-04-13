SET PATH1C="C:\Program Files (x86)\1cv8\8.3.16.1296\bin\1cv8.exe"
SET EXT_FOLDER="D:\development\Project_Bootstrap\tools\epfs"
SET SRC="D:\development\Project_Bootstrap\src\external_epfs"
SET OUT="D:\development\Project_Bootstrap\src\external_epfs\out.txt"
cd /D %EXT_FOLDER%
del /f /q %OUT%
FOR %%F IN (*.epf *.erf) DO (
%PATH1C% DESIGNER /DumpExternalDataProcessorOrReportToFiles %SRC% %%F /OUT %OUT% -NoTruncate
)
set /P txtcommit="Введите текст комментария: "
git add .
git commit -m "%date% %time%: %txtcommit%"