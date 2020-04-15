let input = readLine()!.split(separator: " ").map({Int($0)!})
let arr = readLine()!.split(separator: " ").map({Int($0)!})
var result: [Int] = []

var base = input[1]
for item in arr {
    if base > item {
        result.append(item)
    }
}

print(result.map({String($0)}).joined(separator: " "))
