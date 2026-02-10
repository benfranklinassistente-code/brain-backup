## 🎯 Decisão: Priorização 60maisPlay

**Data:** 2026-02-10  
**Hora:** 19:35 UTC  
**Contexto:** Após deploy no Railway

### Decisão
Manter banco JSON para testes imediatos e configurar MySQL na Hostgator **APÓS** correções de:
1. Barra de acessibilidade
2. Página de admin

### Por quê?
- Frontend precisa estar perfeito antes da migração
- Evita retrabalho
- Testes rápidos no JSON

### Alternativas consideradas
- ❌ Migrar MySQL agora (complexo com frontend instável)
- ✅ Manter JSON → Migrar depois (mais seguro)

### Resultado esperado
Plataforma estável e testada antes de ir para produção final.

---
*Decisão #001 - Brain Backup*
