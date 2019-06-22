import random
from testathleteScraper import getAthlete, login
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
        #print(randAthleteNum)

        #print(athleteResult)
        athleteResultCounter = 0

        try:
            athleteResult = getAthlete(randAthleteNum, s, "scrape")
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
            if athleteResultCounter != 0:
                print(str(athleteResultCounter) + " Results")
        except:
            pass


        athleteCount += 1
        if athleteCount % 100 == 0:
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


userInput = input("filename: ")
pd.DataFrame.from_dict(allData).to_csv("userInput")
#numDoc = open('numbers.txt')
pickle.dump(numberDatabase, open("numberDump", "wb"))
