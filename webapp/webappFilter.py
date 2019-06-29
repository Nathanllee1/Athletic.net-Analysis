import pandas as pd
from scipy.stats import percentileofscore
import numpy as np
import re

def filterResults(requestVariable, allData, column):
    filter_ = allData[column]==requestVariable
    return allData[filter_]

def Filter(requestForm, allData):
    dataCopy = filterResults(requestForm["event"], allData, "event")

    if requestForm["state"]:
        #print('filtering ' + requestForm["state"])
        dataCopy = filterResults(requestForm["state"], dataCopy, "state")

    if requestForm["gradeLevel"]:
        #print('filtering ' + requestForm["grade"])
        dataCopy = filterResults(requestForm["gradeLevel"], dataCopy, "gradeLevel")
    if requestForm["gender"]:
        #print('filtering ' + requestForm["gender"])
        dataCopy = filterResults(requestForm["gender"], dataCopy, "gender")
    return dataCopy

def percentileConverter(result):
    result = str(result)

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

    result = result.replace("PR", "").replace("SR", "").replace("h", "0").replace("c", "")
    if "(" in result and ")" not in result:
        return result[:-4]
    #print(result)
    return result



def percentile(filteredData, singleRequest):
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
    #print(percentile)
    return [percentile, dataSize]
