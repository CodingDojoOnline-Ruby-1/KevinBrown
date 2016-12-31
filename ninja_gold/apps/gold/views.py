from django.shortcuts import render, redirect
import random, datetime

# Create your views here.
def index(request):
    if 'gold' in request.session:
        return render(request, 'index.html', {'session':request.session})
    else:
        return redirect('login')

def login(request):
    request.session['gold'] = 0
    request.session['activities'] = []
    return redirect('index')


def ninjaTime():
    return(datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S"))


def process_money(request):
    building = request.POST['building']
    gold = int(request.POST['gold'])

    # ================ Farm ===================
    if building == 'farm':
        newGold = random.randrange(10, 21)
        activity = "Worked on a farm and earned "+ str(newGold) +" gold. -- " + ninjaTime()

    # ================ Cave ===================
    elif building == 'cave':
        newGold = random.randrange(5, 11)
        activity = "Explored a cave and found "+ str(newGold) +" gold. -- " + ninjaTime()

    # ================ House ===================
    elif building == 'house':
        newGold = random.randrange(2, 6)
        activity = "Robbed a house and stole "+ str(newGold) +" gold. -- " + ninjaTime()

    # ================ Casino ===================
    elif gold == 0:
            newGold = 0
            activity = "Kicked out of Casino for not having any gold. -- " + ninjaTime()
    else:
        newGold = random.randrange(0, 53)
        if newGold == 0:
            newGold = ((gold) * (-1))
            activity = "Went to a casino and lost all my gold. -- " + ninjaTime()
        elif newGold == 51:
            newGold = gold
            activity = "Went to a casino doubled my gold. -- " + ninjaTime()
        elif newGold == 52:
            newGold = (gold * 2)
            activity = "Went to a casino tripled my gold. -- " + ninjaTime()
        else:
            activity = "Went to a casino and won "+ str(newGold) +" gold. --" + ninjaTime()

    # ============= Process Money ================
    request.session['gold'] = gold + newGold
    request.session['activities'].insert(0, activity)
    return redirect('/')
