var num = readLine()!.split(separator: " ")

var n1Reversed = num[0].reversed().map({String($0)})
var n2Reversed = num[1].reversed().map({String($0)})
var over = 0

if n1Reversed.count > n2Reversed.count {
    swap(&n1Reversed, &n2Reversed)
}
let count = n1Reversed.count

for i in 0..<count {
    let temp = Int(String(n1Reversed[i]))! + Int(String(n2Reversed[i]))! + over
    over = 0
    if temp >= 10 {
        over = 1
        n1Reversed[i] = String(temp - 10)
    } else {
        n1Reversed[i] = String(temp)
    }
}

n1Reversed.append(contentsOf: n2Reversed[n1Reversed.count..<n2Reversed.count])

for i in count..<n2Reversed.count {
    let temp = Int(n1Reversed[i])! + over
    if temp >= 10 {
        over = 1
        n1Reversed[i] = String(temp - 10)
    } else {
        over = 0
        n1Reversed[i] = String(temp)
    }
}

var answer = n1Reversed.reversed().joined()
if over == 1 {
    answer.insert("1", at: answer.startIndex)
}
print(answer)
