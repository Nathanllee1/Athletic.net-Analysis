import requests
from bs4 import BeautifulSoup
from athleteScraper import getAthlete, login

grandResults = []

highSchoolResult = requests.get("https://www.athletic.net/TrackAndField/").text

page = BeautifulSoup(highSchoolResult, features='html.parser')


s = login()
for condensedColumn in page.find_all(class_='col-lg-2 col-md-3 col-xs-6 mBottom15'):
    for state in condensedColumn.find_all("a", href=True):
        regionURL = state['href']

        print("Looking in " + regionURL[:-1])
        regionPage = requests.get("https://www.athletic.net/TrackAndField/" + regionURL).text
        regionParse = BeautifulSoup(regionPage, features='html.parser')

        for schools in regionParse.find_all("li"):
            #print(schools.prettify())
            generalList = schools.find("a", href=True)['href']
            if "School.aspx?SchoolID=" in generalList:
                schoolID = generalList[-23:]

                schoolResult = BeautifulSoup(requests.get("https://www.athletic.net/TrackAndField/School.aspx?SchoolID=" + schoolID).text, features='html.parser')
                #print(schoolResult)
                schoolName = schoolResult.find("span", class_="truncate").text
                print(schoolName)
                athleteList = []
                while True:
                    currentYear = 2019
                    try:
                        currentAthleteList = requests.get("https://www.athletic.net/api/v1/tfTeam/GetAthletes?teamID="+ schoolID + "&seasonID=" + str(currentYear))

                        for currentAthletes in athleteList:
                            if currentAthletes not in athleteList:
                                athleteList.append(currentAthletes)
                    except HTTPError:
                        False

                for athletes in athleteList:
                    athleteResult = getAthlete(athletes['ID'], s, regionURL[:-1], )
                    for results in athleteResult['results']:
                        grandResults.append(results)






#print (regionList)

    #print(schoolURLs

'''
regionList = {

    colorado: {}
}



'''
