let num = Int(readLine()!)!
var dict: [String: Int] = [:]

for _ in 0..<num {
    let book = readLine()!

    if dict[book] == nil {
        dict[book] = 1
    } else {
        dict[book]! += 1
    }
}

print(dict.sorted(by: {$0.key < $1.key}).sorted(by: {$0.value > $1.value}).first!.key)
