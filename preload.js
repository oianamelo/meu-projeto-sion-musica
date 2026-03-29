const { contextBridge, ipcRenderer } = require('electron');

// Expor API segura para o renderer process
contextBridge.exposeInMainWorld('electronAPI', {
  callAPI: (apiKey, prompt) => ipcRenderer.invoke('api-call', { apiKey, prompt })
});
