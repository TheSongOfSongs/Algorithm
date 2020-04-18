let n = Int(readLine()!)!
var dic: [Character: Int] = [:]
var result = ""

for _ in 0..<n {
    let name = readLine()!
    let ch = name.first!

    if dic[ch] == nil {
        dic[ch] = 1
    } else {
        dic[ch]! += 1
    }

}

for (key, _) in dic.filter ({$0.value >= 5}).sorted(by: { $0.key < $1.key }) {
    result.append(key)
}

if result == "" {
    result = "PREDAJA"
}

print(result)
