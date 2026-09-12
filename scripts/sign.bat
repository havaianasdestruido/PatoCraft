@echo off
setlocal
rem Re-signs a PatoCraft APK with build-tools apksigner (default: debug APK).
set "APKSIGNER=%LOCALAPPDATA%\Android\Sdk\build-tools\34.0.0\apksigner.bat"
set "KS=%USERPROFILE%\.android\debug.keystore"
set "APK=%~1"
if "%APK%"=="" set "APK=%~dp0..\android\app\build\outputs\apk\debug\app-debug.apk"
call "%APKSIGNER%" sign --ks "%KS%" --ks-key-alias androiddebugkey --ks-pass pass:android --key-pass pass:android "%APK%" || goto :fail
echo Signed: %APK%
exit /b 0
:fail
echo apksigner failed
exit /b 1