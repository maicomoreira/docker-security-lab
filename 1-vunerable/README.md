# 🧪 Etapa 1 – Aplicação Flask Vulnerável

Este diretório contém a versão **intencionalmente insegura** da aplicação Flask, utilizada como base para o laboratório de segurança em containers. O objetivo desta fase é **executar a aplicação**, **detectar vulnerabilidades** e entender os riscos associados.

---

## 📁 Estrutura da pasta

1-vulnerable/
├── app/
│   ├── app.py              # Código da aplicação Flask
│   └── requirements.txt    # Dependências com versões antigas
├── .dockerignore           # Exclui arquivos desnecessários do build
├── Dockerfile              # Imagem insegura com más práticas
├── secrets.env             # Variáveis de ambiente simulando segredos
├── scan.sh                 # Script para rodar Trivy, Gitleaks e pip-audit
└── README.md               # Este guia

---

## 🚀 Etapas para executar o lab

### 1️⃣ Construir a imagem vulnerável

cd 1-vulnerable
docker build -t flask-insecure .
docker run -p 8080:8080 flask-insecure

Acesse em: http://localhost:8080

🔍 Rodar os scanners de segurança

Este diretório já contém o script scan.sh com todos os scanners integrados via Docker.

✅ Pré-requisitos
	•	Docker instalado e ativo

▶️ Executar varredura
chmod +x scan.sh
./scan.sh 1

🧰 Ferramentas utilizadas
	•	Trivy: scanner de vulnerabilidades em imagens
	•	pip-audit: auditoria de dependências Python
	•	Gitleaks: detecta segredos vazados no repositório Git

Os resultados serão salvos na pasta scan-results/.

⸻

# ⚠️ Vulnerabilidades Simuladas
	•	Flask desatualizado com CVEs conhecidos
	•	werkzeug e jinja2 com falhas críticas
	•	Usuário root no container
	•	Ausência de .env seguro
	•	Nenhuma camada de segurança no runtime
	•	Segredos rastreáveis via Git

⸻

# 🎯 Objetivo desta etapa
	•	Visualizar práticas inseguras
	•	Executar scanners
	•	Interpretar resultados
	•	Preparar terreno para correções

⸻

# 🛠️ Etapa seguinte

Acesse o diretório 2-remediated/ para aplicar as correções de segurança e revalidar sua imagem com as ferramentas.

