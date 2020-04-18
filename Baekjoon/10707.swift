let payA: Int = Int(readLine()!)!
let payB: Int = Int(readLine()!)!
let limitB: Int = Int(readLine()!)!
let extraB: Int = Int(readLine()!)!
let P: Int = Int(readLine()!)!

var resultA: Int = 0
var tempP = P
while tempP > 0 {
    tempP -= 1
    resultA += payA
}

var resultB: Int = payB
tempP = P
var usedAmount = 0

while tempP > 0 {
    if usedAmount < limitB {
        usedAmount += 1
        tempP -= 1
    } else {
        tempP -= 1
        resultB += extraB
    }
}

print(min(resultA, resultB))
