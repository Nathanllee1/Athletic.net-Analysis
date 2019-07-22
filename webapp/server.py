import random
from flask import Flask, render_template, request, jsonify
import json

from webappAthleteScraper import getAthlete, login
from webappFilter import Filter, percentile

import pandas as pd

app = Flask(__name__)

s = login()
database = pd.read_csv("database.csv")
print('Loaded database')

def getPercentile(package):
    aid = package['aid']
    print(aid)
    athleteData = getAthlete(aid, s, 'regular')


    for results in athleteData['results']:
        if package['grade'] == 'True':
             package['gradeLevel'] = results['gradeLevel']
             #print(results['gradeLevel'])
             #print('=================================')
        package['event'] = results['event']
        #print(requestForm)
        filteredTable = Filter(package, database)
        #print(filteredTable)
        updatedAthleteData = percentile(filteredTable, results)
        results['percentile'] = updatedAthleteData[0]
        results['dataSize'] = updatedAthleteData[1]

    return athleteData

def graph(package):
    print(package)
    data = getPercentile(package)

    #all data = {labelset: []}
    datasets = []
    graphFormat = {}

    for results in data['results']:
        event = results['event']
        #print(event)
        if event not in graphFormat:
            graphFormat.update({event : [results]})
        else:
            graphFormat[event].append(results)
    labels = []
    dataList = {'labels':'', 'datasets':''}

    for event, data in graphFormat.items():
        chartSet = {'label':'', 'data':[]}
        chartSet['label'] = event

        for eventData in data:
            individualData = {'x':'', 'y':''}
            individualData['x'] = eventData['date']
            individualData['y'] = eventData['percentile']
            chartSet['data'].append(individualData)
            '''
            labelObject = {'meet':eventData['meet'], 'event':eventData['event'], 'result':eventData['result'], 'season':eventData['season']}
            labels.
            '''
        datasets.append(chartSet)

    dataList['labels'] = labels
    dataList['datasets'] = datasets
    return dataList

def cards(package):
    #print(package)
    data = getPercentile(package)

    cardFormat = {}

    for results in data['results']:
        event = results['event']
        #print(event)
        if event not in cardFormat:
            cardFormat.update({event : [results]})
            #print('new')
        else:
            cardFormat[event].append(results)
            #print('added')
    return(cardFormat)

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/api/', methods=['POST', 'GET'])
def api():
    if request.method=="POST":
        state = request.get_json()
        print(state)
        state["cardResults"] = cards(state)
        state["graphResults"] = graph(state)

        return jsonify(state)


if __name__ == '__main__':
    app.run(host='0.0.0.0', debug=True)


testRequest = {'aid':'13940334', 'form':{"state":"", "grade":"True", "gender":"f"}}
