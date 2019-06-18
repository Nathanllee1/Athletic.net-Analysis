import random
from athleteScraper import getAthlete, login

s = login()

athleteCount = 0
resultCounter = 0

numberDatabase = []
'''
filename = input("filename: ")
limit = input("# of results: ")

dataDocument = open('data/' + filename, "w")
'''
limit = 20
while resultCounter <= int(limit):
    print(resultCounter)
    randAthleteNum = str(random.randint(1, 13131452))
    if randAthleteNum not in numberDatabase:
        numberDatabase.append(randAthleteNum)

        athleteResult = getAthlete(randAthleteNum, s, "scrape")

        #print(athleteResult)
        athleteResultCounter = 0

        for results in athleteResult:
            resultCounter += 1

            athleteResultCounter +=1
            print(str(results))
            #dataDocument.write(str(results) + ", ")

        print("Found " + str(athleteResultCounter) + "Results")
        athleteCount += 1




#dataDocument.close()
