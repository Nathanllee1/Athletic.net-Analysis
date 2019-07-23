import random
from flask import Flask, render_template, request, jsonify
import json

from webappAthleteScraper import getAthlete, login
from webappFilter import Filter, percentile
from dataFormatters import cards, graph
import pandas as pd

app = Flask(__name__)

s = login()
database = pd.read_csv("database.csv")
print('Loaded database')

def getPercentile(package):
    #print(package)
    aid = package['aid']
    #print(aid)

    athleteData = getAthlete(aid, s, 'regular')
    package['name'] = athleteData['name']
    package['gender'] = athleteData['gender']

    package['results'] = athleteData['results']


    for results in package['results']:
        '''
        if package['grade'] == 'True':
             package['gradeLevel'] = results['gradeLevel']
        '''
        filteredTable = Filter(results, database, package['stateStatus'], package['grade'], package['genderStatus'])
        updatedAthleteData = percentile(filteredTable, results)
        results['percentile'] = updatedAthleteData[0]
        results['dataSize'] = updatedAthleteData[1]

    return package

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/api/', methods=['POST', 'GET'])
def api():
    if request.method=="POST":
        state = request.get_json()
        #print(state)
        data = getPercentile(state)
        state["cardResults"] = cards(data)
        state["graphResults"] = graph(data)

        return jsonify(state)


if __name__ == '__main__':
    app.run()


testRequest = {'aid':'13940334', 'form':{"state":"", "grade":"True", "gender":"f"}}
