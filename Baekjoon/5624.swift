let n: Int = Int(readLine()!)!
let input: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
var arr: [Bool] = Array(repeating: false, count: 500000)
var count: Int = 0

let add: Int = 200000

for i in 0..<n {
    for j in 0..<i {
        if arr[input[i] - input[j] + add] {
            count += 1
            break
        }
    }

    for k in 0...i {
        arr[input[i] + input[k] + add] = true
    }

}

print(count)
