from django.shortcuts import render, HttpResponse
import random

def randomConsonant():
    # This function returns a random Consonant
    consonants = list("bcdfghjklmnpqrstvwxz")
    letterIndex = random.randint(0,len(consonants)-1)
    consonant = consonants[letterIndex]
    return(consonant)

def randomVowel():
    # This function returns a random Vowel
    vowels = list("aeiouy")
    letterIndex = random.randint(0,len(vowels)-1)
    vowel = vowels[letterIndex]
    return(vowel)

def generateRandomWord():
    # This function generates a Random Word from 7 consonants and 7 vowels
    word = ""
    for i in range(7):

        word = word + randomConsonant()
        word = word + randomVowel()
    return(word)

def index(request):
    counter = 1
    if request.method == 'POST':
        counter = int(request.POST['counter'])+1

    context = {
        'randomWord' : generateRandomWord(),
        'counter' : counter
    }
    return render(request, 'index.html', context)
