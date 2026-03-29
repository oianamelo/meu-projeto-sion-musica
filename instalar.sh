#!/bin/bash

echo "========================================"
echo " Gerador de Planos de Aula - Musical"
echo " Instalação Automática"
echo "========================================"
echo ""

echo "[1/3] Verificando Node.js..."
if ! command -v node &> /dev/null; then
    echo "ERRO: Node.js não encontrado!"
    echo "Por favor, instale o Node.js em: https://nodejs.org/"
    exit 1
fi
echo "Node.js encontrado: $(node --version)"
echo ""

echo "[2/3] Instalando dependências..."
npm install
if [ $? -ne 0 ]; then
    echo "ERRO na instalação das dependências!"
    exit 1
fi
echo ""

echo "[3/3] Instalando node-fetch..."
npm install node-fetch@2
if [ $? -ne 0 ]; then
    echo "ERRO ao instalar node-fetch!"
    exit 1
fi
echo ""

echo "========================================"
echo " Instalação concluída com sucesso!"
echo "========================================"
echo ""
echo "Para iniciar o aplicativo, execute:"
echo "   ./iniciar.sh"
echo ""
echo "Ou no terminal:"
echo "   npm start"
echo ""
