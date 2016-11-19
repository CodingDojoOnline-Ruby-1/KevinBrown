from flask import Flask, render_template, request, redirect, session

app = Flask(__name__)

ninjaInfo = {'name':"",
    'dojoLocation':"",
    'programmingLanguage':"",
    'ninjaComment':"",
}

app.secret_key = "kavic84nses09bc03ncdald"

@app.route('/', methods=['GET', 'POST'])
def index():
    session['ninjaInfo'] = 'ninjaInfo'
    return render_template('index.html')

@app.route('/result', methods=['POST'])
def result():
    ninjaInfo = session.POST('ninjaInfo')
    return render_template('result.html')

app.run(debug = True)
