import random
from athleteScraper import getAthlete, login
import pandas as pd
s = login()
import pickle
athleteCount = 0
resultCounter = 0

#print(numberDatabase)
#numberDocument.write("[]")
#filename = input("filename: ")
#limit = input("# of results: ")

#dataDocument = open('data/' + filename, "w")
numberDatabase = []
eventLexicon = {}
stateLexicon = {}
allData = []

def lexicon(lexiconObject, newObject):
    if newObject not in lexiconObject:
        lexiconObject.update({newObject : 1})
    else:
        lexiconObject[newObject] += 1

while True:
    randAthleteNum = str(random.randint(1, 13131752))
    if randAthleteNum not in numberDatabase:
        numberDatabase.append(randAthleteNum)
        print(randAthleteNum)
        athleteResult = getAthlete(randAthleteNum, s, "scrape")
        print(athleteResult)
        athleteResultCounter = 0
        if athleteResult != 'error' and athleteResult != 'none':

            for results in athleteResult:

                resultCounter += 1

                athleteResultCounter +=1
                #print(str(results))
                allData.append(results)

                event = results['event']
                lexicon(eventLexicon, event)

                state = results['state']
                lexicon(stateLexicon, state)
        else:
            print('error')

            print(str(athleteResultCounter) + " Results")
        athleteCount += 1
        if athleteCount % 499 == 0:
            print(resultCounter)
        if athleteCount % 500 == 0:
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
