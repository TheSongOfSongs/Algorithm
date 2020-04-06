var dic: [Int:Int] = [:]
for _ in 0..<10 {
    let n = Int(readLine()!)!
    if dic[n] == nil {
        dic[n] = 1
    } else {
        dic[n]! += 1
    }
}

var sum = 0
for (key, value) in dic {
    sum += key * value
}
print(sum/10)
print(dic.sorted(by: >).max(by: {$0.value < $1.value})!.key)
