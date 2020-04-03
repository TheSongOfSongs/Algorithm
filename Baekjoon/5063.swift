let input = Int(readLine()!)!
var result: [String] = []

for _ in 0..<input {
    let arr = readLine()!.split(separator: " ").map({Int($0)!})
    let compare = arr[0] - (arr[1] - arr[2])
    if compare > 0 {
        result.append("do not advertise")
    } else if compare < 0 {
        result.append("advertise")
    } else {
        result.append("does not matter")
    }
}

for item in result {
    print(item)
}
