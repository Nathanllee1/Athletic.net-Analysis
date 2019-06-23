import random
from flask import Flask, render_template
import json

from webappAthleteScraper import getAthlete, login
from webappFilter import Filter

import pandas as pd

app = Flask(__name__, static_folder='../static/dist', template_folder='../static/public')

s = login()
database = pd.read_csv("database.csv")

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/api')
def api():
    package = request.get_json()
    aid = package['aid']
    athleteData = getAthlete(aid, s, 'regular')

    requestForm = package['form']

    for results in athleteData['results']:
        filteredTable = Filter('requestForm', database)



if __name__ == '__main__':
    app.run()
