var arr: [Int] = []

for _ in 0...4 {
    arr.append(Int(readLine()!)!)
}

arr.sort()
print("\(arr.reduce(0, +)/5)\n\(arr[2])")
