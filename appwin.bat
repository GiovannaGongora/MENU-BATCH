@echo off
chcp 65001
color 0a
title app windowns

:inicio 
cls 
echo ╔════════════════════════════════╗
echo ║     Aplicativos Windowns       ║
echo ╚════════════════════════════════╝
echo ║ [B] Bloco de Notas             ║
echo ║ [P] Paint                      ║
echo ║ [T] Teclado Virtual            ║
echo ║ [PC] Painel de Controle        ║
echo ║ [W] Windowns Explorer          ║
echo ║ [R] Retornar ao Menu           ║
echo ╚════════════════════════════════╝
set /p opc=Escolha sua opção: 

if /i %opc% equ B (goto:win1)
if /i %opc% equ P (goto:win2)
if /i %opc% equ T (goto:win3)
if /i %opc% equ PC (goto:win4)
if /i %opc% equ W (goto:win5)
if /i %opc% equ R (call menu.bat) else (

    echo ╔════════════════════════════╗
    echo ║       OPÇÃO INVALIDA       ║
    echo ╚════════════════════════════╝
    pause
    goto:inicio
)

:win1
start notepad.exe 
goto inicio

:win2 
start mspaint.exe
goto inicio

:win3
start osk.exe
goto inicio

:win4 
start control.exe
goto inicio

:win5 
start explorer.exe 
goto inicio

