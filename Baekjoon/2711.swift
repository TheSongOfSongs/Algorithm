let n = Int(readLine()!)!
var arr: [String] = []

for _ in 0..<n {
    let input = readLine()!.split(separator: " ")
    var strr = input[1]
    let index = strr.index(strr.startIndex, offsetBy: Int(input[0])!-1)
    strr.remove(at: index)
    arr.append(String(strr))
}

for item in arr {
    print(item)
}
