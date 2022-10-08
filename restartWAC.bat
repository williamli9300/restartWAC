@echo off
powershell -noprofile -command "&{ start-process powershell -ArgumentList '-noprofile -file YourScriptPath\ps.ps1' -verb RunAs}"
