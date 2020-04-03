var dicX: [Int:Int] = [:]
var dicY: [Int:Int] = [:]

func printResult(_ dic: Dictionary<Int, Int>) -> Int {
    for (key, value) in dic {
        if value == 1 {
            return key
        }
    }
    return 0
}

for _ in 0..<3 {
    let input = readLine()!.split(separator: " ").map({Int($0)!})
    if dicX[input[0]] == nil {
        dicX[input[0]] = 1
    } else {
        dicX[input[0]]! += 1
    }

    if dicY[input[1]] == nil {
        dicY[input[1]] = 1
    } else {
        dicY[input[1]]! += 1
    }
}

print(printResult(dicX), printResult(dicY))
