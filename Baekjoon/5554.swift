var arr: [Int] = []
for _ in 0..<4 {
    arr.append(Int(readLine()!)!)
}

let sum = arr.reduce(0, +)
let min = sum/60
let sec = sum%60

print(min)
print(sec)
