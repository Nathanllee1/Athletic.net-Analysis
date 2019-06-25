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
             requestForm['grade'] = results['gradeLevel']
        requestForm['event'] = results['event']
        print(requestForm)
        filteredTable = Filter(requestForm, database)
        #print(filteredTable)
        updatedAthleteData = percentile(filteredTable, results)
        results['percentile'] = updatedAthleteData

    return athleteData


api({'aid':'8647967', 'form':{"state":"CA", "grade":"True", "gender":"m"}})
