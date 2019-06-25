from webappAthleteScraper import getAthlete, login
from webappFilter import Filter, percentile
import pandas as pd
s = login()
database = pd.read_csv("database.csv")


def api(package):
    #package = request.get_json()
    aid = package['aid']
    athleteData = getAthlete(aid, s, 'regular')

    requestForm = package['form']

    for results in athleteData['results']:
        tempResult = results

        filteredTable = Filter('requestForm', database)
        updatedAthleteData = percentile(filteredTable, results)
        results.update('percentile' = updatedAthleteData)

    return athleteData


api({'aid':'8647967', 'form':{"state":"CA", "grade":"", "event":"1600 Meters", "gender":"m"}})
