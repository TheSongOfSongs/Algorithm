let str = readLine()!.uppercased()
var dic: [String: Int] = [:]

for ch in str {
    if dic[String(ch)] == nil {
        dic[String(ch)] = 1
    } else {
        dic[String(ch)]! += 1
    }
}

let dicSorted = dic.sorted(by: {$0.value > $1.value})
if dicSorted.count == 1 {
    print(dicSorted[0].key)
} else if dicSorted[0].value == dicSorted[1].value {
    print("?")
} else {
    print(dicSorted[0].key)
}
