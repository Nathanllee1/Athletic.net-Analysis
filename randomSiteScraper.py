import random
from athleteScraper import getAthlete, login
import pandas as pd
s = login()

athleteCount = 0
resultCounter = 0

numberDatabase = []

#filename = input("filename: ")
#limit = input("# of results: ")

#dataDocument = open('data/' + filename, "w")

eventLexicon = {}

allData = []

while True:
    randAthleteNum = str(random.randint(1, 13131452))
    if randAthleteNum not in numberDatabase:
        numberDatabase.append(randAthleteNum)

        athleteResult = getAthlete(randAthleteNum, s, "scrape")

        athleteResultCounter = 0
        if len(athleteResult) > 0 and athleteResult != 'error':
            for results in athleteResult:
                resultCounter += 1

                athleteResultCounter +=1
                #print(str(results))
                allData.append(results)


                event = results['event']

                if event not in eventLexicon:
                    eventLexicon.update({event : 1})
                else:
                    eventLexicon[event] += 1

            print(str(athleteResultCounter) + " Results")
        athleteCount += 1

        if athleteCount == 10:
            print(eventLexicon , end=" ")
            print(str(resultCounter) + " Results")
            input = input("Continue? y/n ")
            if input == 'y':
                athleteCount = 0
                continue
            else:
                break


print(eventLexicon)

pd.DataFrame.from_dict(allData).to_csv("data.csv")
