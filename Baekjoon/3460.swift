let n = Int(readLine()!)!
var arr: [String] = []

for _ in 0..<n {
    let num = Int(readLine()!)!
    let input = String(num, radix: 2).reversed()
    var string = ""
    for i in 0..<input.count {
        if input[input.index(input.startIndex, offsetBy: i)] == "1" {
            string.append("\(i) ")
        }
    }
    string.removeLast()
    arr.append(string)
}

for str in arr {
    print(str)
}
