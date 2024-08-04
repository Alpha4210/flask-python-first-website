from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello_world():
    return "<p>Hello, World!</p>"

@app.route("/parth")
def parth():
    return "Parth"
app.run(debug=True)
