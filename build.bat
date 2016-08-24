call "%VS140COMNTOOLS%\..\..\VC\vcvarsall.bat" x64
call build-cef.bat
cd AntTweakBar
cd src
call build.bat
