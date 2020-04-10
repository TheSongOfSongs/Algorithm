var burger: [Int] = []
var drink: [Int] = []

for _ in 0..<3 {
    burger.append(Int(readLine()!)!)
}

for _ in 0..<2 {
    drink.append(Int(readLine()!)!)
}

var min = 2000 + 2000
for i in 0..<3 {
    for j in 0..<2 {
        let temp = burger[i] + drink[j] - 50
        if temp < min {
            min = temp
        }
    }
}
print(min)
