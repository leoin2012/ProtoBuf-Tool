@echo off
@call %~dp0\PathConfig.bat

::cd /d %~dp0/%ProtoSrcDir%
::svn update
::cd ..

@For /r ./%ProtoSrcDir% %%i In (*.proto) Do (
	copy /y %~dp0\%ProtoSrcDir%\%%~ni.proto %~dp0
)

@For /r ./%ProtoSrcDir% %%i In (*.proto) Do (
	protoc.exe --plugin=protoc-gen-as3="as_plugin\protoc-gen-as3.bat" --as3_out=%~dp0\%ProtoDesDir% as_source\%%~ni.proto
)

@For /r ./%ProtoSrcDir% %%i In (*.proto) Do (
	del %%~ni.proto
)

pause