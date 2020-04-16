let input = readLine()!.split(separator: " ").map { Int($0)! }
let M = input[1]

let arr = readLine()!.split(separator: " ").map { Int($0)! }
var max = 0

for i in 0..<arr.count {
    for j in i+1..<arr.count {
        for k in j+1..<arr.count {
            let sum = arr[i] + arr[j] + arr[k]
            if sum <= M {
                if sum > max {
                    max = sum
                }
            }
        }
    }
}

print(max)
