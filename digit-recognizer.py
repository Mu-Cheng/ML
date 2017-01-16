from numpy import *
import csv
from multiprocessing.dummy import Pool

def knn_warp(args):
    return knn(*args)

def knn(inX,num):
    dataSet = trainMat
    labels = labelList
    k = 3

    dataSetSize = dataSet.shape[0]
    diffMat = tile(inX,(dataSetSize,1)) - dataSet
    sqDiffMat = diffMat**2
    sumDiffMat = sqDiffMat.sum(axis=1)
    distances = sumDiffMat**0.5
    sortedDistances = distances.argsort()
    classCount = {}
    for i in range(k):
        vote = labels[sortedDistances[i]]
        classCount[vote] = classCount.get(vote,0) + 1
    # sortedClassCount = sorted(classCount,key=itemgetter('vote'))
    max = 0
    ans = ''
    for k,v in classCount.items():
        if(v>max):
            ans = k
            max = v
    print(str(num+1) + ' = ' + ans)
    outFile.write(str(num+1) + ',' + ans + '\n')
    return

def readTrain(row,i):
    labelList[i] = row['label']

    for x in range(0, 784):
        trainMat[i, x] = int(row['pixel' + str(x)])
    print(str(i))

def readTest(row,i):
    for x in range(0, 784):
        testMat[i, x] = int(row['pixel' + str(x)])
    print(str(i))

global labelList
global trainMat
global outFile

if __name__ == '__main__':

    f = open('train.csv')
    m = len(f.readlines())
    m = m - 1
    labelList = list(range(m))
    trainMat = zeros((m,784))
    f.close()

    with open('train.csv') as f:
        f_csv = csv.DictReader(f)
        pool = Pool()
        pool.starmap(readTrain, zip(f_csv, range(m)))
        pool.close()
        pool.join()

    f = open('test.csv')
    n = len(f.readlines())
    n = n - 1
    testMat = zeros((n,784))
    f.close()

    with open('test.csv') as f:
        f_csv = csv.DictReader(f)
        pool = Pool()
        pool.starmap(readTest, zip(f_csv, range(n)))
        pool.close()
        pool.join()

    outFile = open("out2.csv",'w')
    pool = Pool()
    pool.starmap(knn,zip(testMat,range(n)))
    pool.close()
    pool.join()
    outFile.close()


