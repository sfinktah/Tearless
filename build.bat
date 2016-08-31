git submodule foreach "(git checkout master; git pull)"
call "%VS140COMNTOOLS%\..\..\VC\vcvarsall.bat" x64
call build-cef.bat
cd ..
cd ..
cd AntTweakBar
cd src
call build.bat
