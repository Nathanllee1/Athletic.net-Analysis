import random
from athleteScraper import getAthlete, login
import pandas as pd
s = login()
import pickle
athleteCount = 0
resultCounter = 0

numberDatabase = pickle.load(open('numberDump', "rb"))
#print(numberDatabase)
tempDatabase = []
#numberDocument.write("[]")
#filename = input("filename: ")
#limit = input("# of results: ")

#dataDocument = open('data/' + filename, "w")

eventLexicon = {}
stateLexicon = {}
allData = []

def lexicon(lexiconObject, newObject):
    if newObject not in lexiconObject:
        lexiconObject.update({newObject : 1})
    else:
        lexiconObject[newObject] += 1

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
                lexicon(eventLexicon, event)

                state = results['state']
                lexicon(stateLexicon, state)


            print(str(athleteResultCounter) + " Results")
        athleteCount += 1
        if athleteCount % 499 == 0:
            print(resultCounter)
        if athleteCount % 100000 == 0:
            print(eventLexicon , end=" ")
            print(str(resultCounter) + " Results")
            print(stateLexicon)
            userInput = input("Continue? y/n ")
            if userInput == 'y':
                athleteCount = 0
                continue
            else:
                break

pd.DataFrame.from_dict(allData).to_csv("data2.csv")
#numDoc = open('numbers.txt')
pickle.dump(numberDatabase)
