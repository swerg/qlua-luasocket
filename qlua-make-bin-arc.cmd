rd /S /Q .tmp\.zip
rem md .tmp\.zip\x32-Lua51
md .tmp\.zip\x64-Lua53
md .tmp\.zip\x64-Lua54

rem copy .Build\Win32-Release\*.dll .tmp\.zip\x32-Lua51
xcopy /S .Build\x64\Release53\*.dll .tmp\.zip\x64-Lua53
xcopy /S .Build\x64\Release54\*.dll .tmp\.zip\x64-Lua54

copy nul .tmp\.zip\ReadMe.txt
echo ���������� luasocket ��� Lua >> .tmp\.zip\ReadMe.txt
echo ������ ��� QUIK by swerg >> .tmp\.zip\ReadMe.txt
echo. >> .tmp\.zip\ReadMe.txt
rem echo \x32-Lua51       -- ��� QUIK 6.x, 7.x >> .tmp\.zip\ReadMe.txt
echo \x64-Lua53       -- ��� QUIK 8.5 � ����� ��� ������ Lua5.3 ��� ���������� ������� >> .tmp\.zip\ReadMe.txt
echo \x64-Lua54       -- ��� QUIK 8.11 � ����� ��� ������ Lua5.4 ��� ���������� ������� >> .tmp\.zip\ReadMe.txt

cd .tmp\.zip
"C:\Program Files\7-Zip\7z.exe" a -r -tZip ..\..\.Build\qlua-luasocket.zip *.dll ReadMe.txt
cd ..\..

rd /S /Q .tmp
