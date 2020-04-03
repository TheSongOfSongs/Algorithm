let input = readLine()!
var result = 1
let startIndex = input.startIndex
for i in 0..<input.count/2+1 {
    if input[input.index(startIndex, offsetBy: i)] != input[input.index(startIndex, offsetBy: input.count-1-i)] {
        result = 0
        break
    }
}

print(result)
