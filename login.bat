@echo off
color 0a 
set Usuario=adm
set Senha=adm

:login
cls
set opcao1=
set opcao2=
echo.
Set /p "Opcao1=Usuario: "
set /p "Opcao2=Senha: "

IF /i "%Opcao1%"=="%Usuario%" (call menu.bat)
IF  "%Opcao2%"=="%Senha%" (call menu.bat) else (
echo.
echo  LOGIN INCORRETO
ECHO.
goto login
)


