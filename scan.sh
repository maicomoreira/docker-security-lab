#!/bin/bash

# Verifica argumento
if [ "$#" -ne 1 ]; then
  echo "❌ Uso: ./scan.sh [1|2]"
  exit 1
fi

NUM="$1"
FOLDER="${NUM}-vunerable"
RESULTS_DIR="scan-results"
TIMESTAMP=$(date +"%d-%m-%Y_%H-%M")

echo "🔎 Rodando scans para: $FOLDER"

# Cria pasta scan-results se não existir
mkdir -p "$RESULTS_DIR"

# -------- GITLEAKS --------
echo "🔍 Gitleaks..."
docker run --rm \
  -v $(pwd):/repo \
  zricethezav/gitleaks detect \
  --source="/repo/$FOLDER" \
  --report-format sarif \
  --report-path "/repo/${RESULTS_DIR}/gitleaks-${NUM}-${TIMESTAMP}.sarif"

# -------- TRIVY --------
echo "🔍 Trivy..."
docker build -t flask-insecure "./$FOLDER" > /dev/null

docker run --rm \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v $(pwd)/${RESULTS_DIR}:/out \
  aquasec/trivy image flask-insecure \
  --format sarif \
  --output "/out/trivy-${NUM}-${TIMESTAMP}.sarif"

# -------- PIP-AUDIT via Docker --------
REQUIREMENTS_PATH="./${FOLDER}/app/requirements.txt"
if [ -f "$REQUIREMENTS_PATH" ]; then
  echo "🔍 Pip-audit (via Docker)..."
  docker run --rm \
    -v $(pwd)/${FOLDER}/app:/src \
    -v $(pwd)/${RESULTS_DIR}:/out \
    python:3.11 bash -c "\
      pip install --quiet pip-audit && \
      pip-audit -r /src/requirements.txt \
      --format json \
      --output /out/pip-audit-${NUM}-${TIMESTAMP}.json"
else
  echo "⚠️  requirements.txt não encontrado em $REQUIREMENTS_PATH. Pulando pip-audit."
fi

echo "✅ Scans finalizados. Resultados salvos em ./${RESULTS_DIR}"