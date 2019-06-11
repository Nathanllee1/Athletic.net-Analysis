import requests
from bs4 import BeautifulSoup

highSchoolResult = requests.get("https://www.athletic.net/TrackAndField/").text

page = BeautifulSoup(highSchoolResult, features='html.parser')
regionList = {}


for condensedColumn in page.find_all(class_='col-lg-2 col-md-3 col-xs-6 mBottom15'):
    for state in condensedColumn.find_all("a", href=True):
        regionList.update({state['href'] : ''})

#print (regionList)

schoolURLs = []
for regions in regionList:
    print("Looking in " + regions[:-1])
    regionPage = requests.get("https://www.athletic.net/TrackAndField/" + regions).text
    regionParse = BeautifulSoup(regionPage, features='html.parser')

    for schools in regionParse.find_all("li"):
        print(schools.prettify())
        generalList = schools.find("a", href=True)['href']
        if "School.aspx?SchoolID=" in generalList:
            schoolURLs.append(generalList)


    print(schoolURLs)
