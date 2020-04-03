let num: Int = Int(readLine()!)!
var result: [Int] = []

for _ in 0..<num {
    let score = readLine()!
    var succeed = 0
    var current = 0
    for ch in score {
        if ch == "O" {
            succeed += 1
        } else {
            succeed = 0
        }
        current += succeed
    }
    result.append(current)
}

for i in result {
    print(i)
}
