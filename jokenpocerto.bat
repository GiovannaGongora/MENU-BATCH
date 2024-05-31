@echo off
color 0a
mode 70,30
chcp 65001

:nome
cls
set /p nome=Digite seu nome: 
goto:inicio

:inicio
cls
echo    __  ______  __  __  ______  __   __  ______ ______    
echo   /\ \/\  __ \/\ \/ / /\  ___\/\ "-.\ \/\  == /\  __ \   
echo  _\_\ \ \ \/\ \ \  _"-\ \  __\\ \ \-.  \ \  _-\ \ \/\ \  
echo /\_____\ \_____\ \_\ \_\ \_____\ \_\\"\_\ \_\  \ \_____\ 
echo \/_____/\/_____/\/_/\/_/\/_____/\/_/ \/_/\/_/   \/_____/                                                       
echo .
echo [1] Pedra
echo [2] Papel
echo [3] Tesoura
echo [4] Lagarto
echo [5] Spock
echo [6] Regras
echo [7] Sair
set /p op=selecione uma opcao: 


	if %op% == 1 ( set esc=pedra 
		goto:jogo )
	if %op% == 2 ( set esc=papel
		goto:jogo)
	if %op% == 3 ( set esc=tesoura
		goto:jogo)
	if %op% == 4 ( set esc=lagarto
		goto:jogo) 
	if %op% == 5 ( set esc=spock 
		goto:jogo) 
	if %op% == 6 (goto:regras) 
	if %op% == 7 (goto:sair) else (
		echo Opcao Invalida!
		pause
		goto inicio
	)
	
	:jogo
		echo.
		echo %nome% escolheu: %esc%
		set /a jogpc=(%Random% %% 7) + 1
		
		if %jogpc% == 1 ( set pc=pedra )
		if %jogpc% == 2 ( set pc=papel )
		if %jogpc% == 3 ( set pc=tesoura )
		if %jogpc% == 4 ( set pc=lagarto )
		if %jogpc% == 5 ( set pc=spock )
		echo Maquina escolheu: %pc%
		
		if %op% == %jogpc% (goto:empate)
		if %op% == 1 (
			if %jogpc% == 3 (goto:ganhou)
			if %jogpc% == 4 (goto:ganhou) else (
				goto:perdeu )
		) 
		if %op% == 2 (
			if %jogpc% == 1 (goto:ganhou)
			if %jogpc% == 5 (goto:ganhou) else (
				goto:perdeu )
		) 
		if %op% == 3 (
			if %jogpc% == 2 (goto:ganhou)
			if %jogpc% == 4 (goto:ganhou) else (
				goto:perdeu )
		) 
		if %op% == 4 (
			if %jogpc% == 2 (goto:ganhou)
			if %jogpc% == 5 (goto:ganhou) else (
				goto:perdeu )
		) 
		if %op% == 5 (
			if %jogpc% == 1 (goto:ganhou)
			if %jogpc% == 3 (goto:ganhou) else (
				goto:perdeu )
		) 
		
		pause
		goto inicio
		
	:ganhou
		cls
		set /a vitorias=%vitorias% + 1
		echo.
		echo %nome% escolheu: %esc%
		echo Maquina escolheu: %pc%
		echo %nome% venceu!
		echo.
		goto:placar
		pause
		goto inicio
		
	:perdeu
		cls
		set /a derrotas=%derrotas% + 1
		echo.
		echo %nome% escolheu: %esc%
		echo Maquina escolheu: %pc%
		echo A maquina venceu!
		echo.
		goto:placar
		pause
		goto inicio
	
	:empate
		cls
		set /a empates=%empates% + 1
		echo.
		echo %nome% escolheu: %esc%
		echo Maquina escolheu: %pc%
		echo OPS... Empate!
		echo.
		goto:placar
		pause
		goto inicio
		
	:placar
	    
		echo.
		echo ----- PLACAR DO JOGO -----
		echo.
		echo Vitorias: %vitorias%
		echo Derrotas: %derrotas%
		echo Empates: %empates%
		pause
		goto inicio
	
	:regras
	cls
		echo Pedra: 
		echo	Empata com pedra.
		echo    Ganha de Tesoura e Lagarto.
		echo    Perde para Papel e Spock;
		echo.
		echo Papel:
		echo	Empata com papel.
		echo    Ganha de Pedra e Spock. 
		echo    Perde para tesoura e Lagarto;
		echo.
		echo Tesoura:
		echo	   Empata com Tesoura.
		echo       Ganha de Papel e Lagarto.
		echo       Perde para Pedra e Spock;
		echo.
		echo Lagarto:
		echo	   Empata com Lagarto. 
		echo       Ganha de Papel e Spock. 
		echo       Perde para Pedra e Tesoura;
		echo.
		echo Spock:
		echo	   Empata com Spock. 
		echo       Ganha de Pedra e Tesoura.
		echo       Perde para Papel e Lagarto.
		pause
		goto inicio
		
	:sair
		exit
		
		
		
		
		
		