from flask import Flask, render_template, request, redirect, session
import random
app = Flask(__name__)

app.secret_key = "thisisthereallytopsecret-secretkey"

def numGenerator():
    return(random.randrange(0, 101))


def evaluateAnswer(guess):
    if int(guess) < int(session['rndNumber']):
        return redirect('/tooLow')
    elif int(guess) > int(session['rndNumber']):
        return redirect('/tooHigh')
    else:
        session['guess'] = guess
        return redirect('/thatsIt')

@app.route("/submitGuess", methods=['POST'])
def submit_guess():
    guess = request.form.get("guess")
    return evaluateAnswer(guess)

@app.route('/', methods=['GET', 'POST'])
def index():
    session['rndNumber'] = numGenerator()
    return render_template('index.html')

@app.route('/tooLow', methods=['GET'])
def tooLow():
    return render_template('tooLow.html')

@app.route('/tooHigh')
def tooHigh():
    return render_template('tooHigh.html')

@app.route('/thatsIt', methods=['GET'])
def thatsIt():
    return render_template('thatsIt.html')

app.run(debug = True)
