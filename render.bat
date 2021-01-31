setlocal EnableDelayedExpansion
@echo off
for /f %%i in ('dir /b /s "voxels/rails"') do (
	set filename=%%i
	echo Filename !filename!
	set output=%%~ni
	echo Output !output!
	gorender\renderobject.exe -i !Filename! -s 1 -m files\rail_manifest.json -o sprites\rails\!Output!
)
