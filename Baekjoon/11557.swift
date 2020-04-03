var num: Int = Int(readLine()!)!
var result: [String] = []

for _ in 0..<num {
    let n = Int(readLine()!)!
    var max = 0
    var univ = ""
    for _ in 0..<n {
        let arr = readLine()!.split(separator: " ")
        let compare = Int(arr[1])!

        if max < compare {
            max = compare
            univ = String(arr[0])
        }
    }
    result.append(univ)
}



for item in result {
    print(item)
}
