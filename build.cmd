@echo off

pushd 

echo Initializing dev environement

for /f "usebackq delims=" %%i in (`"%ProgramFiles(x86)%\Microsoft Visual Studio\Installer\vswhere.exe" -version [17.0^,18.0^) -property installationPath`) do (
  call "%%i\Common7\Tools\vsdevcmd.bat" -no_logo
)

echo Build

msbuild -nologo -m BeltTest\BeltTest.sln -p:BuildVersion=1.0.1
