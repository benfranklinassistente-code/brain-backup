#!/bin/bash

# 🧠 Brain Backup - Script de Captura Automática
# Executado automaticamente pelo cron ou manualmente

BRAIN_DIR="/root/.openclaw/workspace/brain-backup"
DATE=$(date +%Y-%m-%d)
TIME=$(date +%H:%M)

echo "🧠 Iniciando backup do cérebro..."
echo "Data: $DATE $TIME"

# 1. Atualizar index.md com data
cat >> "$BRAIN_DIR/index.md" <> EOF

---
*Backup automático realizado em: $DATE $TIME*
EOF

# 2. Verificar se há novos aprendizados no memory/
if [ -f "/root/.openclaw/workspace/memory/$DATE.md" ]; then
    echo "📄 Novo arquivo de memória detectado"
    # Extrair lições aprendidas
    grep -A 5 "## 📝" "/root/.openclaw/workspace/memory/$DATE.md" > "$BRAIN_DIR/aprendizados/$DATE-extracao.md" 2>/dev/null || echo "Nenhuma lição nova"
fi

# 3. Compilar estatísticas
TOTAL_DECISOES=$(ls -1 "$BRAIN_DIR/decisoes/" 2>/dev/null | wc -l)
TOTAL_APRENDIZADOS=$(ls -1 "$BRAIN_DIR/aprendizados/" 2>/dev/null | wc -l)
TOTAL_IDEIAS=$(ls -1 "$BRAIN_DIR/ideias/" 2>/dev/null | wc -l)

echo "📊 Estatísticas:"
echo "  - Decisões: $TOTAL_DECISOES"
echo "  - Aprendizados: $TOTAL_APRENDIZADOS"
echo "  - Ideias: $TOTAL_IDEIAS"

# 4. Commit no GitHub (se configurado)
cd "$BRAIN_DIR" 2>/dev/null
if [ -d ".git" ]; then
    git add . >/dev/null 2>&1
    git commit -m "🧠 Backup automático - $DATE $TIME" >/dev/null 2>&1
    echo "✅ Committed no GitHub"
fi

echo "🧠 Backup completo!"
