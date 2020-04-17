var arr: [String] = []
var result: String = ""

var max = 0
for _ in 0..<5 {
    let str = readLine()!
    arr.append(str)
    if max < str.count {
        max = str.count
    }
}

for i in 0..<max {
    for j in 0..<5 {
        let ch = arr[j]
        if i < ch.count {
            result.append(ch[ch.index(ch.startIndex, offsetBy: i)])
        }
    }
}

print(result)
