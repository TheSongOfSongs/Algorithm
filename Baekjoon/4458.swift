let num = Int(readLine()!)!
var arr: [String] = []

for _ in 0..<num {
    var str = readLine()!
    var temp = String(str.first!.uppercased())
    str.removeFirst()
    temp.append(contentsOf: str)
    arr.append(temp)
}

for item in arr {
    print(item)
}
