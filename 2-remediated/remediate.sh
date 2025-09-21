#!/bin/bash

echo "📦 Atualizando requirements.txt com versões seguras..."

cat <<EOF > app/requirements.txt
flask==2.2.5
jinja2==3.1.6
werkzeug==3.0.6
itsdangerous==2.1.2
click==8.1.7
EOF

echo "🐳 Rebuild da imagem com dependências atualizadas..."
docker build -t flask-fixed .

echo "🚀 Executando o app com segurança..."
docker run --rm -p 8080:8080 --read-only --cap-drop ALL --user 1000 flask-fixed
