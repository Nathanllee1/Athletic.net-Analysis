import random
from athleteScraper import getAthlete, login
s = login()

athleteCount = 0
resultCounter = 0

dataDocument = open("data.txt", "w")

while True:
    randAthleteNum = str(random.randint(1, 13131452))


    try:
        athleteResult = getAthlete(randAthleteNum, s)

        for results in athleteResult["results"]:
            resultCounter += 1
            dataDocument.write(str(results) + ", ")

        athleteCount += 1

        if resultCounter % 1000 == 1:
            print(resultCounter)
    except:
        pass
