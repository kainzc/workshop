import requests
import json

BASE = "http://127.0.0.1:5000/"




print("Welcome to Guess the Lyric")


value = None
correctGuesses = 0
guesses = 0
while value != "":
    response = requests.get(BASE + "lyrics")
    info = json.loads(response.text)

    if (guesses > 0):

        print((correctGuesses / guesses) * 100, "% Correct Guesses")
    print(end="")
    print(info['lyric'])

    value = input()

    if info['track_title'].lower() == value.lower():
        correctGuesses +=1
        print('Correct!')
    elif value != "":
        print('Incorrect')

    guesses+=1


