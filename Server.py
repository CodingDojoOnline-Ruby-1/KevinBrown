
from flask import Flask, render_template, request, redirect, session
import random

app = Flask(__name__)

app.secret_key = "thisisthereallytopsecret-secretkey"

def numGenerator():
    return(random.randint(1, num-sides+1))

@app.route('/rolldice', methods=['GET', 'POST'])
def rolldice(request):
    result = []
    num-sides =reqest.form['num-sides']
    num-dice = request.form['num-dice']
    print(request, '<========================= request ==================')
    print(request.form["num-dice"], request.form["num-side"], "<======= incoming info =============================")

    for die in request.form["num-dice"]:
        number=numGenerator(num-sides)
        print (number)
        result.append(number)

    print(result)
    return render_template('index.html', result=result)


@app.route('/', methods=['GET', 'POST'])
def index():
    return render_template('index.html')

app.run(debug = True)
