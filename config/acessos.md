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

## Trello

- **API Key:** Salva em `/root/.openclaw/workspace/trello-config.json`
- **Quadros:**
  - Ben Trello: https://trello.com/b/1KZVgPzS/ben-trello
  - GTD: https://trello.com/b/0wWbycT6/gtd
- **Listas principais:** Ben Fazer, Ben Concluído, Lead Magnets, PRODUTO 60MAIS
- **Módulo:** `/root/.openclaw/workspace/trello.js`

---

## Email - Hostgator Titan

- **Email:** benjamin@60maiscursos.com.br
- **Credenciais:** Salvas em `/root/.openclaw/workspace/email-config.json`

### Configurações:
| Protocolo | Servidor | Porta |
|-----------|----------|-------|
| IMAP | imap.titan.email | 993 |
| SMTP | smtp.titan.email | 465 |
| POP | pop.titan.email | 995 |

### Módulo:
- `/root/.openclaw/workspace/email.js`

---

*Atualizado: 15/02/2026*
