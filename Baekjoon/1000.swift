import Foundation

let inputs = readLine()
var input = inputs!.components(separatedBy: " ")
var sum = 0

for i in 0..<input.count {
    sum += Int(input[i])!
}

print(sum)

