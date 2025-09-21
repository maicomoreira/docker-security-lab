# ✅ Checklist de Execução do Lab de Segurança em Containers

Use este checklist para acompanhar o progresso no laboratório:

---

## 🎯 Setup Inicial

- [ ] Clonar este repositório
- [ ] Instalar Docker no ambiente local
- [ ] Criar diretório de trabalho e navegar até ele

---

## 🐍 Ambiente com Flask Vulnerável

- [ ] Acessar pasta `1-vulnerable/`
- [ ] Rodar o app Flask com `docker build` e `docker run`
- [ ] Testar se o app está rodando em `http://localhost:8080`

---

## 🔎 Scanners de Segurança

- [ ] Rodar `Trivy` na imagem
- [ ] Rodar `pip-audit` no ambiente Python
- [ ] Rodar `Gitleaks` no repositório local

---

## 📑 Análise dos Resultados

- [ ] Analisar os resultados em `scan-results/`
- [ ] Identificar CVEs e segredos vazados

---

## 🔧 Correção das Vulnerabilidades

- [ ] Acessar pasta `2-remediated/`
- [ ] Atualizar `requirements.txt` com versões seguras
- [ ] Corrigir `Dockerfile` com boas práticas
- [ ] Remover segredos do repositório

---

## 🧪 Reexecutar os Scanners

- [ ] Rodar novamente `Trivy`, `pip-audit` e `Gitleaks`
- [ ] Confirmar que os problemas foram resolvidos

---

## ✅ Finalização

- [ ] Comentar ou abrir Pull Request com melhorias
- [ ] Compartilhar o link do repositório no GitHub