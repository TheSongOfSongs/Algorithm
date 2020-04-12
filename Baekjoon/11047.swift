let input = readLine()!.split(separator: " ").map({Int($0)!})
let num = input[0]
var price = input[1]
var result = 0
var coin: [Int] = []

for _ in 1...num {
    coin.append(Int(readLine()!)!)
}

while true {
    let temp = price - coin.last!
    if temp == 0 {
        result += 1
        break
    } else if temp < 0 {
        coin.removeLast()
    } else if temp > 0 {
        price = temp
        result += 1
    }
}

print(result)
