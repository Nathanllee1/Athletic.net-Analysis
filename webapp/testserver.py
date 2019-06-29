import random
from flask import Flask, render_template
import json

from webappAthleteScraper import getAthlete, login
from webappFilter import Filter, percentile

import pandas as pd

s = login()
database = pd.read_csv("database.csv")
print('Loaded database')

def getPercentile(package):
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

def index():
    return render_template('index.html')

def graph():
    package = request.get_json()
    data = getPercentile(package)


def cards(testRequest):

    data = getPercentile(testRequest)

    cardFormat = {}

    for results in data['results']:
        event = results['event']
        print(event)
        if event not in cardFormat:
            cardFormat.update({event : [results]})
            print('new')
        else:
            cardFormat[event].append(results)
            print('added')
    print(cardFormat)


testRequest = {'aid':'13940334', 'form':{"state":"", "grade":"True", "gender":"f"}}
cards(testRequest)
