let input = readLine()!.split(separator: " ").map({Int($0)!})

var bill = 1
for _ in 0..<input[1] {
    bill *= 10
}

var candyPrice = input[0]
var result = candyPrice%bill

if result < bill/2 {
    print(candyPrice-result)
} else {
    print(candyPrice-result+bill)
}
