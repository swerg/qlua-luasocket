rd /S /Q .tmp\.zip
rem md .tmp\.zip\x32-Lua51
md .tmp\.zip\x64-Lua53
md .tmp\.zip\x64-Lua54

rem copy .Build\Win32-Release\*.dll .tmp\.zip\x32-Lua51
xcopy /S .Build\x64\Release53\*.dll .tmp\.zip\x64-Lua53
xcopy /S .Build\x64\Release54\*.dll .tmp\.zip\x64-Lua54

copy nul .tmp\.zip\ReadMe.txt
echo Библиотека luasocket для Lua >> .tmp\.zip\ReadMe.txt
echo Сборка для QUIK by swerg >> .tmp\.zip\ReadMe.txt
echo. >> .tmp\.zip\ReadMe.txt
rem echo \x32-Lua51       -- для QUIK 6.x, 7.x >> .tmp\.zip\ReadMe.txt
echo \x64-Lua53       -- для QUIK 8.5 и далее при выборе Lua5.3 для выполнении скрипта >> .tmp\.zip\ReadMe.txt
echo \x64-Lua54       -- для QUIK 8.11 и далее при выборе Lua5.4 для выполнении скрипта >> .tmp\.zip\ReadMe.txt

cd .tmp\.zip
"C:\Program Files\7-Zip\7z.exe" a -r -tZip ..\..\.Build\qlua-luasocket.zip *.dll ReadMe.txt
cd ..\..

rd /S /Q .tmp
