from statistics import mean

def graph(data):
    #print(package)


    #all data = {labelset: []}
    datasets = []
    graphFormat = {}

    for results in data['results']:
        event = results['event']
        #print(event)
        if event not in graphFormat:
            graphFormat.update({event : [results]})
        else:
            graphFormat[event].append(results)
    labels = []
    dataList = {'labels':'', 'datasets':''}

    for event, data in graphFormat.items():
        chartSet = {'label':'', 'data':[]}
        chartSet['label'] = event

        for eventData in data:
            individualData = {'x':'', 'y':''}
            individualData['x'] = eventData['date']
            individualData['y'] = eventData['percentile']
            chartSet['data'].append(individualData)
            '''
            labelObject = {'meet':eventData['meet'], 'event':eventData['event'], 'result':eventData['result'], 'season':eventData['season']}
            labels.
            '''
        datasets.append(chartSet)

    dataList['labels'] = labels
    dataList['datasets'] = datasets
    return dataList

def cards(data):
    #print(package)
    cardFormat = {}
    cardData = {'results':{}, 'averagePercent':''}

    for results in data['results']:

        event = results['event']
        #print(event)
        if event not in cardFormat:
            cardFormat.update({event : {'results':[results], 'averagePercent':'hee'}})
            #print('new')
        else:
            cardFormat[event]['results'].append(results)
            #print('added')

    for events in cardFormat:
        #print(cardFormat[events])
        resultpercentileList = []
        for results in cardFormat[events]["results"]:
            #print(results)
            resultpercentileList.append(float(results['percentile'].replace('%', '')))

        percentile = mean(resultpercentileList)
        cardFormat[events]['averagePercent'] = str(percentile).split(".")[0] + "%"

    return(cardFormat)
