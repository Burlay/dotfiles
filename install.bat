@echo off

net session >nul 2>&1
if %errorLevel% == 0 (
	echo Succes: Administrative permissions confirmed.

	mklink %userprofile%\_vimrc %~dp0\vim\vimrc 
	mklink /J %userprofile%\vimfiles %~dp0\vim
) else (
	echo Failure: Current permissions inadequate
)
