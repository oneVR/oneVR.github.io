@echo off
setlocal enabledelayedexpansion

set output=combined.css

if exist %output% del %output%

for %%f in (*.css) do (
    if not "%%f"=="%output%" (
        type "%%f" >> %output%
        echo. >> %output%
    )
)