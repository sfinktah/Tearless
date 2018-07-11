cd CEF
@IF EXIST build GOTO JUMP1
tools\7za.exe x -aos Release.7z
mkdir build
:JUMP1
@cd build
where /q cmake
IF ERRORLEVEL 1 (
@    ECHO You need to install cmake
@    ECHO https://cmake.org/download/
@    PAUSE
@    EXIT /B
) ELSE (
@    ECHO cmake found
)

cmake -G "Visual Studio 14 Win64" ..

REM cd libcef_dll_wrapper
REM msbuild /p:Configuration=Debug   /m /clp:Summary /nologo
REM msbuild /p:Configuration=Release /m /clp:Summary /nologo
REM cd Debug
REM copy *.* ..\..\..\..\AntTweakBar\examples\debug64\
REM cd ..
REM cd Release
REM copy *.* ..\..\..\..\AntTweakBar\examples\release64\
REM cd ..
REM cd ..

REM msbuild /p:Configuration=Debug   /m /clp:Summary /nologo ALL_BUILD.vcxproj /t:Clean,Build
msbuild /p:Configuration=Release /m /clp:Summary /nologo ALL_BUILD.vcxproj
xcopy /S /Y libcef_dll_wrapper\Release\*.* ..\..\AntTweakBar\examples\bin64\
xcopy /S /Y cefclient\Release\*.* ..\..\AntTweakBar\examples\bin64\

REM @echo "Abort here if you don't want to build Debug libraries"
REM @pause
REM 
REM msbuild /p:Configuration=Debug   /m /clp:Summary /nologo ALL_BUILD.vcxproj
REM xcopy /S /Y libcef_dll_wrapper\Debug\*.* ..\..\AntTweakBar\examples\debug64\
REM xcopy /S /Y cefclient\Debug\*.* ..\..\AntTweakBar\examples\debug64\

