let min = Int(readLine()!)!
var cars: Int = Int(readLine()!)!
var result: Int = cars
var zero: Bool = false

for _ in 0..<min {
    let arr: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
    cars += arr[0]
    cars -= arr[1]
    result = max(cars, result)

    if cars < 0 { zero = true }
}

if zero {
    print(0)
} else {
    print(result)
}
