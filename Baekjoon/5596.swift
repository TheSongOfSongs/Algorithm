let arr1 = readLine()!.split(separator: " ").map({Int($0)!})
let arr2 = readLine()!.split(separator: " ").map({Int($0)!})

print(max(arr1.reduce(0, +), arr2.reduce(0, +)))
