var arr: [Int] = readLine()!.split(separator: " ").map({Int($0)!})
arr.sort(by: {$0 < $1})
let str = arr.map({String($0)})
print(str.joined(separator: " "))
