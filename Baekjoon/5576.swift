var arrW: [Int] = []
var arrK: [Int] = []
var resultW = 0
var resultK = 0

for _ in 0..<10 {
    arrW.append(Int(readLine()!)!)
}

for _ in 0..<10 {
    arrK.append(Int(readLine()!)!)
}

arrW.sort()
arrK.sort()


for i in 7..<10 {
    resultW += arrW[i]
    resultK += arrK[i]
}

print(resultW, resultK)
