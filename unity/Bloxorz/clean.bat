rd /s /q Library
rd /s /q Temp
rd /s /q obj
rd /s /q logs
attrib -h .vscode
attrib -h .git
attrib -h .vs
rd /s /q .vscode
rd /s /q .git
rd /s /q .vs
del /s /q /f *.csproj
del /s /q /f *.pidb
del /s /q /f *.unityproj
del /s /q /f *.DS_Store
del /s /q /f *.sln
del /s /q /f *.userprefs
del /s /q /f *.bak
del /s /q /f /a .gitattributes
del /s /q /f /a .vsconfig
