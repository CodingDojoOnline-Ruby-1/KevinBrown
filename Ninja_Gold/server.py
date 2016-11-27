from flask import Flask, render_template, request, redirect, session
import random, datetime

app = Flask(__name__)

app.secret_key = "kavic84nses09bc03ncdald"

def ninjaTime():
    return(datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S"))

@app.route('/')
def index():
    if not session.get('activities'):
        session['gold'] = 0
        session['activities'] = []
    return render_template('index.html')

@app.route('/process_money', methods = ['POST'])
def processMoney():
    # ================ Farm ===================
    if request.form['building'] == 'farm':
        newGold = random.randrange(10, 21)
        activity = "Worked on a farm and earned "+ str(newGold) +" gold. -- " + ninjaTime()

    # ================ Cave ===================
    elif request.form['building'] == 'cave':
        newGold = random.randrange(5, 11)
        activity = "Explored a cave and found "+ str(newGold) +" gold. -- " + ninjaTime()

    # ================ House ===================
    elif request.form['building'] == 'house':
        newGold = random.randrange(2, 6)
        activity = "Robbed a house and stole "+ str(newGold) +" gold. -- " + ninjaTime()

    # ================ Casino ===================
    elif session['gold'] == 0:
            newGold = 0
            activity = "Kicked out of Casino for not having any gold. -- " + ninjaTime()
    else:
        newGold = random.randrange(0, 53)
        if newGold == 0:
            newGold = ((session['gold']) * (-1))
            activity = "Went to a casino and lost all my gold. -- " + ninjaTime()
        elif newGold == 51:
            newGold = session['gold']
            activity = "Went to a casino doubled my gold. -- " + ninjaTime()
        elif newGold == 52:
            newGold = ((session['gold']) * (2))
            activity = "Went to a casino tripled my gold. -- " + ninjaTime()
        else:
            activity = "Went to a casino and won "+ str(newGold) +" gold. --" + ninjaTime()

    session['gold'] = session['gold'] + newGold
    session['activities'].insert(0, activity)
    return redirect('/')

app.run(debug = True)
