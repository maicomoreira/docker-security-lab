# 🧪 Relatório Técnico – Scans de Segurança

## 📦 Imagem Docker (Trivy)
- Base: `python:3.9-slim (debian 13.1)`
- Total de CVEs: 52
  - LOW: 51
  - MEDIUM: 1
  - HIGH: 0
  - CRITICAL: 0

## 🔐 Gitleaks
- Histórico Git escaneado
- Leaks encontrados: ✅ 1
- Ação recomendada: revisar commits, revogar segredo e limpar histórico

## 🧪 pip-audit
- Vulnerabilidades encontradas: ✅ 13
- Pacotes afetados:
  - flask 1.1.2 (corrigir para 2.2.5)
  - jinja2 3.0.3 (corrigir para 3.1.6)
  - werkzeug 2.0.3 (corrigir para 3.0.6)
