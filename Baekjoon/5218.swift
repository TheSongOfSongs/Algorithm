let num = Int(readLine()!)!
var array: [String] = []

func getDistance(input: String, input2: String) -> String {
    let str = Array(input)
    let str2 = Array(input2)

    var result = ""

    for i in 0..<str.count {
        let x = UnicodeScalar(String(str[i]))!.value
        let y = UnicodeScalar(String(str2[i]))!.value

        if y >= x {
            result += String("\(y-x) ")
        } else {
            result += String("\(y + UInt32(26) - x) ")
        }
    }
    result.removeLast()
    return result
}

for _ in 0..<num {
    let arr = readLine()!.split(separator: " ")
    array.append("Distances: \(getDistance(input: String(arr[0]), input2: String(arr[1])))")
}

for item in array {
    print(item)
}
