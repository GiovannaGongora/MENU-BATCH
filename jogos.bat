@echo off
chcp 65001
color 0a
title redes

:inicio 
cls 
echo ╔══════════════════════╗
echo ║         JOGOS        ║
echo ╚══════════════════════╝
echo ║ [J] Jokenpo          ║
echo ║ [A] Advinhação       ║
echo ║ [R] Retornar ao menu ║
echo ╚══════════════════════╝
set /p opc=Escolha sua opção: 

if /i %opc% == J (call jokenpocerto.bat)
if /i %opc% == A (call ADVINHA.bat)
if /i %opc% equ R (call menu.bat) else (

    echo ╔════════════════════════════╗
    echo ║       OPÇÃO INVALIDA       ║
    echo ╚════════════════════════════╝
    pause
    goto:inicio
)