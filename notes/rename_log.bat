@echo off
setlocal EnableDelayedExpansion

for /D %%A in (*) do (
  for /D %%B in ("%%A\*") do (

    for %%F in ("%%B\*.*") do (
      if not exist "%%F\" (
        set "file=%%~fF"
        for %%X in ("!file!") do (
          set "ext=%%~xX"
          set "name=%%~nX"
        )

        if /I not "!name!"=="1" (
          if not exist "%%~fB\1!ext!" (
            ren "!file!" "1!ext!"
          )
        )
      )
    )

  )
)

echo Bitti
pause