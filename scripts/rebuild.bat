@echo off
setlocal
set "JAVA_HOME=C:\Program Files\Eclipse Adoptium\jdk-17.0.20.8-hotspot"
pushd "%~dp0..\android"
call gradlew.bat clean assembleDebug --no-daemon
popd
endlocal