@echo off
REM This .bat file was made by Jovito and is not part of crunch/crnlib.
setlocal enableDelayedExpansion
set /a ID=1
set folderPath=""
set "batchDir=%~dp0"
set "dxt5List="
set "dxt1List="
set /a "totalFiles=0"
set /a "currentFile=0"
set /p "folderPath=Choose a folder: " 
set "renameList="
set newName=""
echo "Choice made: !folderPath!"
folderPath = !folderPath!
for %%W in ("!folderPath!"\*_BM.png "!folderPath!"\*_NM.png "!folderPath!"\*_BM.jpg "!folderPath!"\*_NM.jpg "!folderPath!"\*_BM.tga "!folderPath!"\*_NM.tga "!folderPath!"\*_BM.bmp "!folderPath!"\*_NM.bmp "!folderPath!"\*_BM.tiff "!folderPath!"\*_NM.tiff "!folderPath!"\*_BCM.png "!folderPath!"\*_BCM.jpg "!folderPath!"\*_BCM.tga "!folderPath!"\*_BCM.bmp "!folderPath!"\*_BCM.tiff "!folderPath!"\*icons.png "!folderPath!"\*_ICON.png "!folderPath!"\*_ICON.jpg "!folderPath!"\*_ICON.tga "!folderPath!"\*_ICON.bmp "!folderPath!"\*_ICON.tiff "!folderPath!"\*_MSKA.png "!folderPath!"\*_MSKA.jpg "!folderPath!"\*_MSKA.tga "!folderPath!"\*_MSKA.bmp "!folderPath!"\*_MSKA.tiff) do (
    if /i not "%%~xW"==".dds" (
		echo "Adding file to dxt5 list: %%~W"
		set dxt5List=!dxt5List! "%%W"
		set /a "totalFiles+=1"
    )
)
for %%X in ("!folderPath!"\*_PM.png "!folderPath!"\*_PM.jpg "!folderPath!"\*_PM.tga "!folderPath!"\*_PM.bmp "!folderPath!"\*_PM.tiff "!folderPath!"\*_MSK.png "!folderPath!"\*_MSK.jpg "!folderPath!"\*_MSK.tga "!folderPath!"\*_MSK.bmp "!folderPath!"\*_MSK.tiff) do (
	if /i not "%%~xW"==".dds" (
		echo "Adding file to dxt1 list: %%~X"
		set dxt1List=!dxt1List! "%%X"
		set /a "totalFiles+=1"
	)
) 

echo "Total Files @!totalFiles!"

for %%F in (%dxt5List%) do (
    set /a "currentFile+=1"
    echo "Current file #!currentFile!/!totalFiles!"
    "%batchDir%crunch.exe" -file "%%~F" -outsamedir -fileformat DDS -dxt5
    del "%%F"
    ren "%%~dpnF.dds" "%%~nF.DDS"
)

for %%O in (%dxt1List%) do (
	set /a "currentFile+=1"
	echo "Current file #!currentFile!/!totalFiles!"
	"%batchDir%crunch.exe" -file "%%~O" -outsamedir -fileformat DDS -dxt1
	del "%%O"
	ren "%%~dpnO.dds" "%%~nO.DDS"
)

endlocal
