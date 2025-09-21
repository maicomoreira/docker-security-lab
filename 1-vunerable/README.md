
# docker-security-lab

# 🧪 Container Security Lab – Flask Edition

Este lab simula uma aplicação Flask vulnerável para você aplicar e praticar boas práticas de segurança em containers.

## 📁 Estrutura do Projeto


container-security-lab-flask/
├── app/
│   ├── app.py
│   ├── requirements.txt
├── Dockerfile
├── .dockerignore
├── secrets.env
├── scan.sh
├── README.md


## 🚀 Passos do Lab

1. **Build inicial inseguro**:
  
   docker build -t flask-insecure .
   docker run -p 8080:8080 flask-insecure
 

2. **Rodar varreduras de segurança**:

   chmod +x scan.sh
   ./scan.sh


3. **Aplicar boas práticas**:
   - Usar imagem mínima
   - Criar usuário não-root
   - Usar `.dockerignore`
   - Auditar dependências

4. **Rodar com segurança**:
 
   docker run --rm -p 8080:8080 --read-only --cap-drop ALL --user 1000 flask-secure


5. **Assinar imagem (opcional)**:
 
   cosign generate-key-pair
   cosign sign --key cosign.key flask-secure
   cosign verify --key cosign.pub flask-secure
 

