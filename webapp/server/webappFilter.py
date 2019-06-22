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
