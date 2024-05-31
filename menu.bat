@echo off
title menu principal 
chcp 65001
color 0a



:menu
cls
echo ╔═════════════════════════════╗
echo ║            MENU             ║
echo ╚═════════════════════════════╝
echo ║[1] Pacote Office            ║
echo ║[2] Aplicativos Windows      ║
echo ║[3] Servidores de Rede       ║
echo ║[4] Gerenciamento da Máquina ║
ECHO ║[5] Jogos                    ║ 
ECHO ║[6] Gerenciar Arquivos       ║
echo ║[S] Sair do Programa         ║
echo ╚═════════════════════════════╝
set /p opc= Escolha sua opcao:

if %opc% equ 1 (call office.bat)
if %opc% equ 2 (call appwin.bat)
if %opc% equ 3 (call redes.bat)
if %opc% equ 4 (call genmaq.bat)
if %opc% equ 5 (call jogos.bat)
if %opc% equ 6 (call genarq.bat)
if /i %opc% equ E (goto:encerrar)
if /i %opc% equ S (exit) else (
    echo.
    echo ============================
    echo       OPÇÃO INVALIDA 
    echo ============================
    echo.
    pause
    goto:menu 
)

:encerrar
 set /p sair=Deseja mesmo encerrar? (S/N) : 
    if /i %sair% == s (call login.bat)
    if /i %sair% == n (goto:menu) 