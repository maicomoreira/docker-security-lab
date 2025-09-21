# Docker Container Security Lab

Este laboratório foi criado para ensinar boas práticas de segurança em aplicações containerizadas usando Flask e Docker.

---

## 🚀 Visão Geral do Lab

1. Rodar aplicação vulnerável (Flask)
2. Rodar scanners de segurança (Trivy, Gitleaks, pip-audit)
3. Analisar os relatórios
4. Aplicar correções
5. Validar os resultados

---

## 📋 Etapas

```bash
# Clonar o repositório
$ git clone https://github.com/maicomoreira/docker-security-lab.git
$ cd docker-security-lab

# Construir e rodar app vulnerável
$ docker build -t flask-insecure-app .
$ docker run -p 8080:8080 flask-insecure-app
```

Ver o passo a passo completo no arquivo `CHECKLIST.md`.
