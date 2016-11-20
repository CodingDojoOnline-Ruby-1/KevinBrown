from flask import Flask, render_template, request, redirect, session
app = Flask(__name__)

app.secret_key = "kavic84nses09bc03ncdald"

def incrementor():
    try:
        session['counter'] += 1
    except KeyError:
        session['counter'] = 1

@app.route('/')
def index():
    incrementor()
    return render_template('index.html')

@app.route('/ninja')
def ninja():
    incrementor()
    return redirect('/')

@app.route('/hacker')
def hacker():
    session['counter'] = 0
    return redirect('/')

app.run(debug = True)
