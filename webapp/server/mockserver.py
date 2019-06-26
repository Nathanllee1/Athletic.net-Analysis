from webappAthleteScraper import getAthlete, login
from webappFilter import Filter, percentile
import pandas as pd
s = login()
database = pd.read_csv("database.csv")


def api(package):
    #package = request.get_json()
    aid = package['aid']
    print(aid)
    athleteData = getAthlete(aid, s, 'regular')
    requestForm = package['form']

    for results in athleteData['results']:
        if requestForm['grade'] == 'True':
             requestForm['gradeLevel'] = results['gradeLevel']
             print(results['gradeLevel'])
             print('=================================')
        requestForm['event'] = results['event']
        print(requestForm)
        filteredTable = Filter(requestForm, database)
        #print(filteredTable)
        updatedAthleteData = percentile(filteredTable, results)
        results['percentile'] = updatedAthleteData

    return athleteData


api({'aid':'13940334', 'form':{"state":"", "grade":"True", "gender":"f"}})
