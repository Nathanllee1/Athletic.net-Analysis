import random
from athleteScraper import getAthlete, login

s = login()

athleteCount = 0
resultCounter = 0

numberDatabase = []

filename = input("filename: ")
#limit = input("# of results: ")

dataDocument = open('data/' + filename, "w")

eventLexicon = {}



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
                dataDocument.write(str(results) + ", ")


                event = results['event']

                if event not in eventLexicon:
                    eventLexicon.update({event : 1})
                else:
                    eventLexicon[event] += 1

        #print(str(athleteResultCounter) + " Results")
        athleteCount += 1

        if resultCounter % 400 == 0:
            print(eventLexicon , end=" ")
            print(str(resultCounter) + " Results")
            input = input("Continue? y/n")
            if input == 'y':
                continue
            else:
                break


print(eventLexicon)

dataDocument.close()
