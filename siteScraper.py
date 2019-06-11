import requests
from bs4 import BeautifulSoup
from athleteScraper import getAthlete, login

import requests

cookies = {
    'cookie: __cfduid': 'defd038d756719df8b503c6b2175027801558986521',
    '_ga': 'GA1.2.1566009432.1558986523',
    '__qca': 'P0-2062845748-1558986523491',
    'CSUser': 'username=127340&emailAddress=nathan.l.lee123@gmail.com&CommonName=Nathan Lee&EnableDisplayName=true',
    '__stripe_mid': 'fce5dbac-e66b-474f-b531-3a52e306ff19',
    '__gads': 'ID=b971add845739b60:T=1558986536:S=ALNI_MaL3B9aSSlnKebJteeb5j-kmn4JMg',
    'ANETSettings': 'guid=50aa079b-e1f7-4dc3-810f-99fbc624b8d4&User=127340&Sport=TF&Team=1973',
    'ASP.NET_SessionId': 'aiqpitjoei2msxbd32wwv2j3',
    '__atuvc': '6%7C22%2C1%7C23',
    '.AspNet.ApplicationCookie': 'Fm0PbwWQsmOsh0o3GGSD2coOCB5h35TjXwJ-C07natjTtuftveK_11wvy7Ad6Sb4p6sVQa8OCJuPWgQXw-Lf5bnqN_Ouea89ABmr55feLB3n5XRtTbhlmOg0qSMcnvE0IKB3jaO8kSDmxb6GsUBy5kA-dnIwJldSqE6Bp3k98kO4cAcT7eqavL2GYPitFJfpYtOuICkoZXXPyA2rhimn8OJsOaec9Sn_rNeL-Pd01XAPMzNSD67Ux4oYR3vZbPaLI1V0e4vyU7sq3gY9dRrv4nhZoJSytpdmc9cMTlrTaK0A-e0IKPy2t2kWadk3rVo-HrEqkKHGkOJG3YdUO6zbl3_5tHZklkSULZXURzrlLxtWQxn2uf4U04o9AZudxtXcWcwe2nghZwoZFpzYLoDp7cyUyai2kqwxJuflV2Q1lN50s94BpmIi0Po_N50O3jVpYPhSMVx_KmRzGfaKEkacLcWIfhd8vqn0vQNN6pb-MUk',
    '__stripe_sid': '258889e6-ccf6-4375-88bf-d00c8b2b2003',
    '_gid': 'GA1.2.796951176.1560286532',
    'GED_PLAYLIST_ACTIVITY': 'W3sidSI6IlQ5Q0UiLCJ0c2wiOjE1NjAyODY2MTMsIm52IjowLCJ1cHQiOjE1NjAyODY1OTIsImx0IjoxNTYwMjg2NTkyfSx7InUiOiJQRS9UIiwidHNsIjoxNTYwMjg2NjA1LCJudiI6MSwidXB0IjoxNTYwMjg2NjAyLCJsdCI6MTU2MDI4NjYwMn1d',
}

headers = {
    'dnt': '1',
    'accept-encoding': 'gzip, deflate, br',
    'authid': '1973',
    'accept-language': 'en-US,en;q=0.9',
    'user-agent': 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36',
    'authtoken': 'czimj7xkcpaqjj2gmp5d1w',
    'accept': 'application/json, text/plain, */*',
    'referer': 'https://www.athletic.net/TrackAndField/School.aspx?SchoolID=1973',
    'authority': 'www.athletic.net',
}

params = (
    ('teamID', '1973'),
    ('seasonID', '2018'),
)

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
                #print(generalList)
                schoolID = generalList.replace("../School.aspx?SchoolID=", "")
                print("Team " + schoolID)
                schoolResult = BeautifulSoup(requests.get("https://www.athletic.net/TrackAndField/School.aspx?SchoolID=" + schoolID).text, features='html.parser')
                #print(schoolResult)
                #schoolName = schoolResult.find("span", class_="truncate").text
                #print(schoolName)
                athleteList = []
                while True:
                    currentYear = 2019

                    print("Checking " + str(currentYear))
                    try:
                        athleteListURL = "https://www.athletic.net/api/v1/tfTeam/GetAthletes?teamID="+ schoolID + "&seasonID=" + str(currentYear)
                        print(athleteListURL)
                        currentAthleteList = response = requests.get(athleteListURL, headers=headers, cookies=cookies)

                        for currentAthletes in athleteList:
                            if currentAthletes not in athleteList:
                                print("Found athlete" + currentAthletes)
                                athleteList.append(currentAthletes)
                        currentYear - 1
                    except requests.HTTPError:
                        False

                for athletes in athleteList:
                    athleteResult = getAthlete(athletes['ID'], s, regionURL[:-1], schoolID)
                    for results in athleteResult['results']:
                        grandResults.append(results)






#print (regionList)

    #print(schoolURLs

'''
regionList = {

    colorado: {}
}



'''
