#!/bin/bash

echo "🔍 Rodando Gitleaks para encontrar secrets..."
gitleaks detect --source . --no-banner

echo "🔍 Rodando Trivy na imagem Docker..."
docker build -t flask-insecure .
trivy image flask-insecure

echo "🔍 Rodando pip-audit nas dependências..."
pip install pip-audit
pip-audit -r app/requirements.txt
