@echo off
chcp 65001
color 0a
title app ofICCE
:: WORD, EXCEL, POQER POIINT,ACCESS E RETORNAR AO MENU:: 


:inicio 
cls
echo ╔════════════════════════════╗
echo ║       Pacote Office        ║
echo ╚════════════════════════════╝
echo ║ [W] Word                   ║
echo ║ [E] Excel                  ║
echo ║ [P] PowerPoint             ║
echo ║ [A] Access                 ║
echo ║ [R] Retornar ao Menu       ║
echo ╚════════════════════════════╝
set /p opc=Escolha sua opção: 

if /i %opc% equ W (goto:ofc1)
if /i %opc% equ E (goto:ofc2)
if /i %opc% equ P (goto:ofc3)
if /i %opc% equ A (goto:ofc4)
if /i %opc% equ R (call menu.bat) else (

    echo ╔════════════════════════════╗
    echo ║       OPÇÃO INVALIDA       ║
    echo ╚════════════════════════════╝
    pause
    goto:inicio
)

:ofc1 
start winword.exe 
goto inicio

:ofc2 
start excel.exe
goto inicio

:ofc3
start powerpnt.exe
goto inicio 

:ofc4 
start msaccess.exe
goto inicio

