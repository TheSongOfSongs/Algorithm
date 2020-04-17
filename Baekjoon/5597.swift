var arr: [Bool] = Array(repeating: false, count: 31)
var result: [Int] = []

arr[0] = true

for _ in 0..<28 {
    arr[Int(readLine()!)!] = true
}

for i in 0..<arr.count {
    if arr[i] == false {
        print(i)
    }
}
