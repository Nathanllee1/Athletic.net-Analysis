import pandas as pd
from scipy.stats import percentileofscore
import numpy as np
import re

def filterResults(requestVariable, allData, column):
    filter_ = allData[column]==requestVariable
    return allData[filter_]

def Filter(package, allData):
    dataCopy = filterResults(package["event"], allData, "event")

    #print(dataCopy)
    #print(package)
    if package["stateStatus"] == 'True':
        #print('filtering ' + package["state_"])
        dataCopy = filterResults(package["state_"], dataCopy, "state")

    if package["gradeLevel"] == "True":
        #print('filtering ' + package["grade"])
        dataCopy = filterResults(package["gradeLevel"], dataCopy, "gradeLevel")
    if package["genderStatus"] == 'True':
        #print('filtering ' + package["gender"])
        dataCopy = filterResults(package["gender"], dataCopy, "gender")
    return dataCopy

def percentileConverter(result):
    result = postCleaner(str(result))

    if ':' in result:
        splitResult = re.split(":", result)

        if len(splitResult) == 1:
            return float(splitResult)
        if len(splitResult) == 2:

            return float(splitResult[0]) * 60 + float(splitResult[1])
        if len(splitResult) == 3:
            return float(splitResult[0]) * 60 + float(splitResult[1]) * 60 + float(splitResult[2])
    if "'" in result:
        splitDistance = re.split("'", result)
        if len(splitDistance) == 1:
            return float(splitDistance)
        if len(splitDistance) == 2:
            return float(splitDistance[0]) * 12 + float(splitDistance[1])
    else:
        return float(result)

def postCleaner(result):
    result = result.replace("PR", "").replace("SR", "").replace("h", "0").replace("c", "").replace("m", "")
    if "(" in result and ")" not in result:
        return result[:-4]
    #print(result)
    return result



def percentile(filteredData, singleRequest):
    print(filteredData)
    noError = filteredData[filteredData.formattedResults != "Error"]
    #filteredData['']
    resultList = noError['splitTime'].values.tolist()
    #print(resultList)
    floatResults = []
    #print(singleRequest)
    for results in resultList:
        try:
            #limFloat = "{0:.2f}".format(results)
            floatResult = float(results)
            floatResults.append(floatResult)
        except:
            #print('blah', end=' ')
            pass
    dataSize = len(floatResults)
    formattedRaw = postCleaner(singleRequest['result'])
    formattedResult = percentileConverter(formattedRaw)
    #print(type(formattedResult))
    percentile = 100 - percentileofscore(floatResults, float(formattedResult))
    print(percentile)
    return [percentile, dataSize]
