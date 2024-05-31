@echo off
chcp 65001
color 0a
title redes

:inicio 
cls 
echo ╔════════════════════════════════╗
echo ║        Serviços de Rede        ║
echo ╚════════════════════════════════╝
echo ║ [I] Navegar na Web             ║
echo ║ [Y] Conteudo do Youtube        ║
echo ║ [O] Obter Ip da maquina        ║
echo ║ [T] Testar Conexão de Rede     ║
echo ║ [R] Retornar ao Menu           ║
echo ╚════════════════════════════════╝
set /p opc=Escolha sua opção: 

if /i %opc% equ I (goto:web)
if /i %opc% equ Y (goto:you)
if /i %opc% equ O (goto:ipmaq)
if /i %opc% equ T (goto:conexao)
if /i %opc% equ R (call menu.bat) else (

    echo ╔════════════════════════════╗
    echo ║       OPÇÃO INVALIDA       ║
    echo ╚════════════════════════════╝
    pause
    goto:inicio
)
 :you 
echo.
set /p busca=Digite o conteúdo a ser pesquisado:
start msedge.exe https://www.youtube.com/results?search_query=%busca%
goto inicio

:web
echo.
set /p site= Digite o Endereço da Pagina 
start chrome.exe %site%
goto inicio

:conexao 
echo.
set /p teste=Digite o Ip da maquina ou endereço Pagina
ping %teste% -t 
goto inicio

:ipmaq 

ipconfig | findstr IPv4
pause 
goto inicio