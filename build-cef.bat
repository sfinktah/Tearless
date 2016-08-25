cd CEF
IF EXIST build GOTO JUMP1
mkdir build
:JUMP1
cd build
where /q cmake
IF ERRORLEVEL 1 (
    ECHO You need to install cmake
    ECHO https://cmake.org/download/
    PAUSE
    EXIT /B
) ELSE (
    ECHO cmake found
)
cmake -G "Visual Studio 14 Win64" ..
cd libcef_dll_wrapper
msbuild /p:Configuration=Debug /clp:Summary /nologo
msbuild /p:Configuration=Release /clp:Summary /nologo
cd Debug
copy *.* ..\..\..\..\AntTweakBar\examples\debug64\
cd ..
cd Release
copy *.* ..\..\..\..\AntTweakBar\examples\release64\
