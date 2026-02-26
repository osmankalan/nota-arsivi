@echo off
setlocal EnableExtensions EnableDelayedExpansion

REM 000020 - 006000 arası ana klasörler
for /L %%N in (20,1,6000) do (
  set "num=000000%%N"
  set "folder=!num:~-6!"
  mkdir "!folder!" 2>nul

  REM Her ana klasör içinde v1..v7
  for /L %%V in (1,1,7) do (
    mkdir "!folder!\v%%V" 2>nul
  )
)

echo Bitti: 000020 - 006000 ve her birinin icinde v1..v7 olusturuldu.
pause