@echo off
                                                                                                    
::WARNING! REALLY MESSY CODE. FUCK BAT FILES



::KrazeeTobi's PK3 compiler, edited by SnakieJakie.
TITLE Tobi Compiler (More Lights)
echo KrazeeTobi's PK3 compiler, edited by SnakieJakie.
echo NOTE: This BAT file expects to be in a directory with a "Src" or "Zand_Src" folder in it. Picky asshole. 
echo YOU WILL NEED 7ZIP TO USE THIS!!!







:: I'll have 2 number 9s... 

:SET_FILENAME
set /p _filename?=File Name?:
echo -


:SET_VERNAME
set /p _vernum?=Verison number?: 
echo -


:SET_ZandOrGZD
set /p _ZandOrGZD=Zandronum or GZDoom? (1: Zandronum, 2: GZDoom):
echo -


:SET_PK3ORZIP
set /p _zipPk3Pk7=PK3 or ZIP? (PK3=1, ZIP=2):
if %_zipPk3Pk7% gtr 2 goto ERROR_PK3ORZIP
if %_zipPk3Pk7% lss 1 goto ERROR_PK3ORZIP

:: GZDoom
if %_ZandOrGZD% equ 1 goto DECIDE_ZAND_ZIPORPK3
if %_ZandOrGZD% equ 2 goto DECIDE_GZD_ZIPORPK3

: DECIDE_ZAND_ZIPORPK3
if %_zipPk3Pk7% equ 1 goto COMPILE_ZAND_PK3
if %_zipPk3Pk7% equ 2 goto COMPILE_ZAND_ZIP


: DECIDE_GZD_ZIPORPK3
if %_zipPk3Pk7% equ 2 goto COMPILE_ZIP
if %_zipPk3Pk7% equ 1 goto COMPILE_PK3








:: Errors


:ERROR_PK3ORZIP
echo Please actually select something.
echo -
goto SET_PK3ORZIP


:ERROR_MOVETOCOMPILED
echo Please actually select something.
echo -
goto SET_MOVETOCOMPILED




:: Compiling




:COMPILE_ZIP
echo -
echo Ready to compile. Just waiting for your mark.
pause
"%ProgramFiles%\7-Zip\7z.exe" a %_filename?%_%_vernum?%.zip -tzip .\Src\* -x!*.pk3 -x!*.bat -x!*.gitignore -x!*.gitattributes -x!"*git\"
echo Done compiling! 
goto DONE
echo -


:COMPILE_PK3
echo Ready to compile. Just waiting for your mark.
pause
"%ProgramFiles%\7-Zip\7z.exe" a %_filename?%_%_vernum?%.pk3 -tzip .\Src\* -x!*.pk3 -x!*.bat -x!*.gitignore -x!*.gitattributes -x!"*git\"
echo -
echo Done compiling! 
goto DONE
echo -


:COMPILE_ZAND_ZIP
echo -
echo Ready to compile. Just waiting for your mark.
pause
"%ProgramFiles%\7-Zip\7z.exe" a %_filename?%_%_vernum?%.zip -tzip .\Zand_Src\* -x!*.pk3 -x!*.bat -x!*.gitignore -x!*.gitattributes -x!"*git\"
echo Done compiling! 
goto DONE
echo -


:COMPILE_ZAND_PK3
echo Ready to compile. Just waiting for your mark.
pause
"%ProgramFiles%\7-Zip\7z.exe" a %_filename?%_%_vernum?%.pk3 -tzip .\Zand_Src\* -x!*.pk3 -x!*.bat -x!*.gitignore -x!*.gitattributes -x!"*git\"
echo -
echo Done compiling! 
goto DONE
echo -










:: Moves











:: Done

:DONE
echo -
echo We're done, go to bed.
Pause
Exit


