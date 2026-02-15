# 🔐 ACESSOS E CREDENCIAIS

## Google Sheets - Controle Financeiro

- **Planilha:** Controle Financeiro - Receitas e Despesas
- **ID:** 1VhY95rXzg9UjVnjr21nuOVpxhEuM3N8HN1TeeFrX7X8
- **Link:** https://docs.google.com/spreadsheets/d/1VhY95rXzg9UjVnjr21nuOVpxhEuM3N8HN1TeeFrX7X8/edit
- **Service Account:** id-0mais-sheets-service@openclaw-2026-487017.iam.gserviceaccount.com
- **Projeto Google Cloud:** openclaw-2026-487017

### Credenciais salvas em:
- `/root/.config/gcloud/service-account.json`

### Como usar:
```bash
cd /root/.openclaw/workspace
node -e "
const { verResumo, registrarTransacao } = require('./financas.js');
// Ver resumo
verResumo().then(console.log);
// Registrar
registrarTransacao('RECEITA', '60mais Paulista', 'Descrição', 100, 'Pix');
"
```

---

## GitHub

- **Usuário:** benfranklinassistente-code
- **Token:** Usar variável de ambiente `$GH_TOKEN`
- **Comando:** `GH_TOKEN=<seu_token> git ...`

### Repositórios:
1. brain-backup - Sistema de memória
2. automacoes-surreais - Automações
3. 60maisplay-plataforma - Plataforma de cursos
4. 60maisplay-original - Versão PHP
5. interstellar-openclaud - Gerenciamento de tarefas

---

## Telegram

- **Bot Token:** Usar variável de ambiente ou config do OpenClaw
- **User ID do Luís:** 1007517562
- **Config:** Salvo em `openclaw.json` → channels.telegram

---

*Atualizado: 15/02/2026*
