var inputs: [Int] = []
for _ in 0..<3 {
    let input = Int(readLine()!)!
    inputs.append(input)
}

let result = String(inputs.reduce(1, *))
var arr: [Int] = Array(repeating: 0, count: 10)

for num in result {
    arr[Int(String(num))!] += 1
}

for num in arr {
    print(num)
}
