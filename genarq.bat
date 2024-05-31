@echo off
title menu principal 
chcp 65001
color 0a


:inicio
cls
echo ╔════════════════════════════════╗
echo ║  GERENCIAMENTO DE ARQUIVOS     ║
echo ╚════════════════════════════════╝
echo ║[1] Gerar Aquivos               ║
echo ║[2] Organizar Arquivos em Pasta ║  
ECHO ║[3] Excluir Arquivos e Pastas   ║ 
echo ║[R] Retornar ao Menu            ║
echo ╚════════════════════════════════╝
set /p opc= Escolha sua opcao:

if %opc% equ 1 (goto:gerar)
if %opc% equ 2 (goto:organizar)
if %opc% equ 3 (goto:excluir)
if /i %opc% equ R (call menu.bat) else (
    echo.
    echo ============================
    echo       OPÇÃO INVALIDA 
    echo ============================
    echo.
    pause
    goto:menu 
)

:gerar 
@echo off
echo.
set /p nome=Digite o nome do arquivo a ser gerado: 
set /p qtde=Digite a quantidade de arquivos a ser gerado: 
set /p tipo=Digite o tipo de arquivo a ser gerado: 
for /L %%n in (1,1,%qtde%) do (
    echo. > "%nome%%%n.%tipo%"
)

echo.
echo Arquivos gerados com sucesso!
goto inicio

:organizar
echo.
set /p pasta = Digite a pasta a ser criada:
set /p tipo = Digite o tipo de arquio a ser movido:
md %pasta%
move *, %tipo% C:\Users\Aluno\Desktop\%pasta%
echo.
echo Arquivos Organizados com sucesso
echo.
pause
goto inicio

:excluir 
rem 
set "diretorio_a_excluir=C:\Users\Aluno\Desktop\%pasta%"
rem 
if exist "%diretorio_a_excluir%" (
    rem 
    rmdir /s /q "%diretorio_a_excluir%"
    echo Pasta excluída com sucesso.
) else (
    echo O diretório especificado não existe.
)

pause
