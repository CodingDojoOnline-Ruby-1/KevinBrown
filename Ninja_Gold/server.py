from flask import Flask, render_template, request, redirect, session
import random
app = Flask(__name__)

app.secret_key = "kavic84nses09bc03ncdald"

@app.route('/')
def index():
    if not session.get('activities'):
        session['gold'] = 0
        print (str(session['gold']) +"<==========================")
        session['activities'] = []
    return render_template('index.html')

@app.route('/farmGold', methods = ['POST'])
def farmGold():
    newGold = random.randrange(10, 21)
    activity = "Worked on a farm and earned "+ str(newGold) +" gold."
    session['gold'] = session['gold'] + newGold
    session['activities'].insert(0, activity)
    return redirect('/')

@app.route('/caveGold', methods = ['POST'])
def caveGold():
    newGold = random.randrange(5, 11)
    activity = "Explored a cave and found "+ str(newGold) +" gold."
    session['gold'] = session['gold'] + newGold
    session['activities'].insert(0, activity)
    return redirect('/')

@app.route('/houseGold', methods = ['POST'])
def houseGold():
    newGold = random.randrange(2, 6)
    activity = "Robbed a house and stole "+ str(newGold) +" gold."
    session['gold'] = session['gold'] + newGold
    session['activities'].insert(0, activity)
    return redirect('/')

@app.route('/casinoGold', methods = ['POST'])
def casinoGold():
    newGold = random.randrange(0, 53)

    if newGold == 0:
        newGold = ((session['gold']) * (-1))
        activity = "Went to a casino and lost all my gold."
    elif newGold == 51:
        newGold = session['gold']
        activity = "Went to a casino doubled my gold."
    elif newGold == 52:
        newGold = ((session['gold']) * (2))
        activity = "Went to a casino tripled my gold."
    else:
        activity = "Went to a casino and won "+ str(newGold) +" gold."

    session['gold'] = session['gold'] + newGold
    session['activities'].insert(0, activity)
    return redirect('/')

app.run(debug = True)
