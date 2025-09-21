from flask import Flask, request

app = Flask(__name__)

@app.route("/")
def index():
    name = request.args.get("name", "Meu Mundo")
    return f"<h1>Olá, {name}</h1>"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)
