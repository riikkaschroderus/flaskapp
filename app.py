from flask import Flask, render_template, request
app = Flask(__name__)

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/answer', methods=['POST'])
def answer():
    char = request.form['char']
    live = request.form['live']
    return render_template('answer.html', char = char, live = live)