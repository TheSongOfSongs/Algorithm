let arr = readLine()!.split(separator: " ").map({Int($0)!})
var result = 0
var value = 1
var many = 1
for i in 1...arr[1] {
    if i >= arr[0] && i <= arr[1] {
        result += value
    }
    if value == many {
        value += 1
        many = 1
    } else {
        many += 1
    }
}

print(result)
