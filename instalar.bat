@echo off
echo ========================================
echo  Gerador de Planos de Aula - Musical
echo  Instalacao Automatica
echo ========================================
echo.

echo [1/3] Verificando Node.js...
node --version >nul 2>&1
if errorlevel 1 (
    echo ERRO: Node.js nao encontrado!
    echo Por favor, instale o Node.js em: https://nodejs.org/
    pause
    exit /b 1
)
echo Node.js encontrado!
echo.

echo [2/3] Instalando dependencias...
call npm install
if errorlevel 1 (
    echo ERRO na instalacao das dependencias!
    pause
    exit /b 1
)
echo.

echo [3/3] Instalando node-fetch...
call npm install node-fetch@2
if errorlevel 1 (
    echo ERRO ao instalar node-fetch!
    pause
    exit /b 1
)
echo.

echo ========================================
echo  Instalacao concluida com sucesso!
echo ========================================
echo.
echo Para iniciar o aplicativo, execute:
echo    iniciar.bat
echo.
echo Ou no terminal:
echo    npm start
echo.
pause
