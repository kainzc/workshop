from flask import Flask
import random
from flask_restful import Api, Resource
import pandas as pd


app = Flask(__name__)
api = Api(app)

random.seed()
df = pd.read_csv('taylor_swift_lyrics.csv', encoding='windows-1252')

#assuming at least one proper entry in csv
lyricCount = df.shape[0]

class Lyrics(Resource):
    def get(self):
        lyricNumber = random.randint(0, lyricCount + 1)
        return {"lyric" : df['lyric'][lyricNumber],
                "track_title" : df['track_title'][lyricNumber]}

api.add_resource(Lyrics, "/lyrics")

if __name__ == "__main__":
    app.run(debug=True)