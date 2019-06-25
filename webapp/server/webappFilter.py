import pandas as pd

def filterResults(requestVariable, allData, column):
    filter_ = allData[column]==requestVariable
    return allData[filter_]

def Filter(requestForm, allData):
    dataCopy = filterResults(requestForm["event"], allData, "event")

    if requestForm["state"]:
        print('filtering ' + requestForm["state"])
        dataCopy = filterResults(requestForm["state"], dataCopy, "state")

    if requestForm["grade"]:
        print('filtering ' + requestForm["grade"])
        dataCopy = filterResults(requestForm["grade"], dataCopy, "gradeLevel")
    if requestForm["gender"]:
        print('filtering ' + requestForm["gender"])
        dataCopy = filterResults(requestForm["gender"], dataCopy, "gender")
    return dataCopy

def percentile(filteredData, singleRequest):
    resultList = filteredResults['splitTime'].values.tolist()
    floatResults = []
    for results in resultList:
        try:
            floatResults.append(float(results))
        except:
            continue

    percentile = 100 - percentileofscore(floatResults, singleResult['result'])
    return percentile
