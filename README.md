
# 🔐 Container Security Lab - Flask Vulnerável vs Corrigido

Este laboratório prático foi desenvolvido para demonstrar vulnerabilidades comuns em aplicações containerizadas e como corrigi-las utilizando boas práticas e ferramentas de segurança.

---

## 📦 Estrutura

container-security-lab-flask/
├── 1-vulnerable/     # Aplicação vulnerável em Flask
├── 2-remediated/     # Aplicação corrigida
├── scan-results/     # Resultados dos scanners
├── CHECKLIST.md      # Lista de verificação didática
└── README.md         # Este guia

---

## 🎯 Objetivos do Lab

1. Demonstrar vulnerabilidades reais em containers.
2. Aplicar ferramentas de análise estática e de imagens: `Trivy`, `pip-audit`, `Gitleaks`.
3. Corrigir as falhas com boas práticas de segurança.
4. Analisar e comparar antes e depois com relatórios técnicos.

---

## ⚙️ Pré-requisitos

- Docker instalado
- Python 3.9+
- Acesso ao GitHub (para clonar ou contribuir)
- Ferramentas disponíveis via container:
  - `Trivy`
  - `pip-audit`
  - `Gitleaks`

---

## 🚀 Como usar

1. Acesse a pasta `1-vulnerable` e execute a aplicação.
2. Rode os scanners e analise os resultados.
3. Acesse `2-remediated` e compare com a versão corrigida.
4. Confira os relatórios e documentação no caminho `scan-results`.

---

## 🧪 Resultados Esperados

- Detecção de vulnerabilidades em pacotes e código
- Exposição de segredos (secrets) no Git
- Melhoria no Dockerfile e nas dependências
- Comparação entre aplicação insegura e segura

---

## 👩‍💻 Colabore

Pull Requests são bem-vindos! Você pode contribuir com:

- Outras vulnerabilidades intencionais
- Novas ferramentas de análise
- Automação dos testes com CI (GitHub Actions)

---

## 📄 Licença

MIT License
