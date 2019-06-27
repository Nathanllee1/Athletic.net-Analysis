import random
from flask import Flask, render_template
import json

from webappAthleteScraper import getAthlete, login
from webappFilter import Filter, percentile

import pandas as pd

app = Flask(__name__, static_folder='../static/public/dist', template_folder='../static/public')

s = login()
database = pd.read_csv("database.csv")
print('Loaded database')
@app.route('/')
def index():
    return render_template('index.html')

@app.route('/api')
def api():
    package = request.get_json()
    aid = package['aid']
    #print(aid)
    athleteData = getAthlete(aid, s, 'regular')
    requestForm = package['form']

    for results in athleteData['results']:
        if requestForm['grade'] == 'True':
             requestForm['gradeLevel'] = results['gradeLevel']
             #print(results['gradeLevel'])
             #print('=================================')
        requestForm['event'] = results['event']
        #print(requestForm)
        filteredTable = Filter(requestForm, database)
        #print(filteredTable)
        updatedAthleteData = percentile(filteredTable, results)
        results['percentile'] = updatedAthleteData[0]
        results['dataSize'] = updatedAthleteData[1]

    return athleteData


if __name__ == '__main__':
    app.run()


testRequest = ({'aid':'13940334', 'form':{"state":"", "grade":"True", "gender":"f"}})
