@echo off
chcp 65001
color 0a
title genrenciamento de maquina

:inicio
cls  
echo ╔════════════════════════════════════╗
echo ║     Gerenciamento de MAquina       ║
echo ╚════════════════════════════════════╝
echo ║ [RM] Reiniciar Maquina             ║
echo ║ [DM] Desligar Maquina              ║
echo ║ [R] Retornar ao Menu               ║
echo ╚════════════════════════════════════╝
set /p opc=Escolha sua opção: 

if /i %opc% equ RM (goto:reiniciar)
if /i %opc% equ DM (goto:desligar)
if /i %opc% equ R (call menu.bat) else (

    echo ╔════════════════════════════╗
    echo ║       OPÇÃO INVALIDA       ║
    echo ╚════════════════════════════╝
    pause
    goto:inicio
)

:reiniciar 
shutdown /r /f /t 0

:desligar
shutdown /s /t 0
