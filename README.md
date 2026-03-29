# 🎵 Gerador de Planos de Aula - Educação Musical (Versão Desktop)

Aplicativo desktop para gerar planos de aula automaticamente usando IA.

## 📦 Instalação

### Pré-requisitos
- Node.js (versão 16 ou superior) - [Baixar aqui](https://nodejs.org/)

### Passos de Instalação

1. **Extraia todos os arquivos** desta pasta em um local do seu computador

2. **Abra o Terminal/Prompt de Comando** nesta pasta:
   - **Windows**: Clique com botão direito na pasta → "Abrir no Terminal" ou "Abrir janela de comando aqui"
   - **Mac**: Botão direito na pasta → "Serviços" → "Novo Terminal na Pasta"
   - **Linux**: Botão direito → "Abrir no Terminal"

3. **Instale as dependências**:
   ```bash
   npm install
   ```
   
   Aguarde a instalação terminar (pode demorar alguns minutos).

4. **Instale o node-fetch** (necessário para chamadas de API):
   ```bash
   npm install node-fetch@2
   ```

## 🚀 Como Usar

### Iniciar o Aplicativo

No terminal, execute:
```bash
npm start
```

O aplicativo abrirá em uma janela nativa!

### Primeiro Uso

1. **Obtenha sua API Key da Anthropic**:
   - Acesse: https://console.anthropic.com/
   - Faça login ou crie uma conta
   - Vá em "API Keys"
   - Clique em "Create Key"
   - Copie a chave (começa com `sk-ant-...`)

2. **Configure no app**:
   - Cole a API Key no campo indicado
   - Preencha nome da escola e seu nome (opcional)
   - Selecione a data da semana

3. **Adicione suas turmas**:
   - Nome da turma (ex: INF 4 - Tarde)
   - Faixa etária
   - Duração da aula

4. **Gere os planos**:
   - Clique em "Gerar Planos da Semana"
   - Aguarde a IA criar os planos
   - Seus planos aparecerão na tela!

### Observações Pós-Aula

- Após cada aula, clique em "📝 Obs." na turma
- Anote o que aconteceu de diferente
- Na próxima geração, a IA adaptará com base nas suas observações

## 📁 Estrutura de Arquivos

```
gerador-planos-desktop/
├── package.json          # Configurações do projeto
├── main.js              # Processo principal do Electron
├── preload.js           # Ponte segura entre processos
├── index.html           # Interface do aplicativo
├── README.md            # Este arquivo
└── icon.png            # Ícone do app (opcional)
```

## 🔧 Gerar Instalador (Opcional)

Para criar um instalador do aplicativo:

### Windows
```bash
npm run build-win
```
O instalador ficará em `dist/`

### Mac
```bash
npm run build-mac
```

### Linux
```bash
npm run build-linux
```

## 💾 Seus Dados

- Todas as turmas e planos são salvos localmente no seu computador
- A API Key fica salva no navegador (localStorage)
- Nenhum dado é enviado para servidores externos (exceto para a API da Anthropic)

## 💰 Custos

- O app é gratuito
- Você paga apenas pelo uso da API da Anthropic
- Custo aproximado: R$ 0,05-0,10 por plano de aula
- 20 planos/semana = menos de R$ 10/mês

## 🆘 Problemas Comuns

### "npm não é reconhecido"
→ Você precisa instalar o Node.js primeiro

### Erro ao executar npm start
→ Certifique-se de ter executado `npm install` primeiro

### API Key inválida
→ Verifique se copiou a chave completa, começando com `sk-ant-`

### Erro "fetch is not defined"
→ Execute: `npm install node-fetch@2`

## 📧 Suporte

Se tiver problemas, verifique:
1. Node.js está instalado? (`node --version`)
2. Dependências foram instaladas? (`npm install`)
3. API Key está correta?

---

**Desenvolvido com ❤️ para professores de música**

Baseado em: BNCC • ABEM • ISME • DGE Portugal
